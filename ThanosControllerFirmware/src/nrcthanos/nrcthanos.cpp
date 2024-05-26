#include "nrcthanos.h"
#include <math.h>
#include <Arduino.h>

#include <libriccore/commands/commandhandler.h>
#include <libriccore/riccorelogging.h>

#include "LuT.h"
#include "LinearInterp.h"

#include "Config/services_config.h"

void NRCThanos::setup()
{
    fuelServo.setup();
    oxServo.setup();

    fuelServo.setAngleLims(0, 175);
    oxServo.setAngleLims(0, 160);

    m_oxThrottleRange = 160 - oxServoPreAngle;
    m_fuelThrottleRange = 175 - fuelServoPreAngle;

    pinMode(_overrideGPIO, INPUT_PULLUP);
}

void NRCThanos::update()
{
    _value = getStatus();
    // Close valves if component disarmed
    if (this->_state.flagSet(COMPONENT_STATUS_FLAGS::DISARMED))
    {
        currentEngineState = EngineState::Default;        
        // _Buck.restart(5); // abuse restart command to prevent servos from getting too hot when in disarmed state
    }

    // Close valves if abort is used
    if (digitalRead(_overrideGPIO) == 1)
    {
        currentEngineState = EngineState::ShutDown;
    }

    // Close valves after a flat 14 seconds
    if ((millis() - ignitionTime > m_cutoffTime) && _ignitionCalls > 0)
    {
        currentEngineState = EngineState::ShutDown;
        _ignitionCalls = 0;
    }

    if ((millis() - ignitionTime > m_oxFillCloseTime) && _ignitionCalls > 0)
    {
        closeOxFill();
    }

    switch (currentEngineState)
    {

    case EngineState::Default:
    {
        fuelServo.goto_Angle(0);
        oxServo.goto_Angle(0);
        _polling = false;

        break;
    }

    case EngineState::Ignition:

    { // ignition sequence
        // RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("Ignition state");
        if (timeFrameCheck(pyroFires, preAngleTime))
        {
            firePyro(500);
        }

        else if (timeFrameCheck(preAngleTime, endOfIgnitionSeq))
        {
            oxServo.goto_Angle(95);
            ox_angl_high_res = 95;
            m_oxPercent = (float)(95 - oxServoPreAngle) / (float)(m_oxThrottleRange);
            fuelServo.goto_AngleHighRes(nextFuelAngle());
        }
        
        else if (timeFrameCheck(endOfIgnitionSeq))
        {
            currentEngineState = EngineState::Controlled;
            m_prev_int_t = esp_timer_get_time();
            openOxFill();
            m_nominalEntry = millis();
            m_firstNominal = true;
            resetVars();
        }

        break;
    }

    case EngineState::Controlled:
    {
         //Kill the engine if chamber gets too high during feedback portion of test
        if (_chamberP > m_maxPc)
        {
            currentEngineState = EngineState::ShutDown; 
            break;
        }

        oxServo.goto_AngleHighRes(nextOxAngle());
    
        fuelServo.goto_AngleHighRes(nextFuelAngle());

        break;
    }


    case EngineState::ShutDown:
    {
        fuelServo.goto_Angle(0);
        oxServo.goto_Angle(0);
        fuel_angl_high_res = 0;
        ox_angl_high_res = 0;
        _polling = false;

        break;
    }

    default:
    {
        break;
    }
    }
}

bool NRCThanos::nominalEngineOp()
{
    if (_chamberP > 3 || _chamberP < 1)
    {
        return true;
    }
    else
    {
        return false;
    }
}

float NRCThanos::nextOxAngle(){

    
    float demandPc = PcSetpoint();

    if(abs(demandPc - last_demand_Pc) > 0.001){
        m_I_err = 0;
    }

    last_demand_Pc = demandPc;

    float pcErr = demandPc - _chamberP;
        
    float dt = (float)(esp_timer_get_time() - m_prev_int_t)/((float)10e6); //Calculate the time since the last update in s
    m_prev_int_t = esp_timer_get_time();
    m_I_err = m_I_err + pcErr*dt; //Increment the integral counter

    //Set upper and lower bounds to the integral term to prevent windup
    if (m_I_err > m_I_max)
    {
        m_I_err = m_I_max;
    }
    else if (m_I_err < -m_I_max)
    {
        m_I_err = -m_I_max;
    }

    if(pcErr * prev_err < 0){
        m_I_err = 0;
    }

    prev_err = pcErr;

    
    float I_term = K_i*m_I_err;

    float oxAngle = (float)K_p*pcErr + (float) I_term + (float) oxAngleFF(demandPc);

    if (oxAngle > m_maxControlledOx){
        oxAngle = m_maxControlledOx;
    }
    else if (oxAngle < oxServoPreAngle){
        oxAngle = oxServoPreAngle;
    }

    m_oxPercent = (float)(oxAngle - oxServoPreAngle) / (float)(m_oxThrottleRange);
    ox_angl_high_res = oxAngle;
    return oxAngle;
}

float NRCThanos::oxAngleFF(float Pc){

    return PcAngleLuT.get(Pc);
}

float NRCThanos::nextFuelAngle(){
    m_fuelPercent = m_oxPercent + m_fuelExtra;
    
    float fuelAngle = (float)(m_fuelPercent * m_fuelThrottleRange) + fuelServoPreAngle;

    if (fuelAngle < fuelServoPreAngle)
    {
        fuelAngle = fuelServoPreAngle;
    }

    fuel_angl_high_res = fuelAngle;
    
    return fuelAngle;
}

float NRCThanos::PcSetpoint(){
    uint32_t currTime = millis() - ignitionTime;

    //some stupid lookup, not my proudest work
    int i = 0;
    for (i = 0; i < m_testTime.size(); ++i){ 
        if (currTime > m_testTime[i]){
            continue;
        }
        if (currTime < m_testTime[i]){
            break;
        }
        else{
            break;
        }
    }

    if (i > m_testTime.size()-1){
        float Pc = m_targetPc[i];
        // RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("Pc1: " + std::to_string(Pc));
        return Pc;
    }
     i -= 1;
    //find how far we are into the next timestep
    float dt = (float)(currTime - m_testTime[i])/(float)(m_testTime[i+1]-m_testTime[i]);

    float Pc = dt * (float)(m_targetPc[i+1] - m_targetPc[i]) + (float)m_targetPc[i];

    // RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("Pc2: " + std::to_string(Pc));

    return Pc;
}


void NRCThanos::updateChamberP(float chamberP)
{
    lastTimeChamberPUpdate = millis();
    _chamberP = chamberP;
}

void NRCThanos::execute_impl(packetptr_t packetptr)
{
    SimpleCommandPacket execute_command(*packetptr);

    switch (execute_command.arg)
    {
    case 1:
    {
        if (currentEngineState != EngineState::Default)
        {
            break;
        }
        currentEngineState = EngineState::Ignition;
        ignitionTime = millis();
        _ignitionCalls = 0;
        resetVars();
        _polling = true;
        RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("Ignition");
        break;
    }
    case 2:
    {
        currentEngineState = EngineState::ShutDown;
        _polling = false;
        _ignitionCalls = 0;
        RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("ShutDown");
        break;
    }
    case 3:
    {
        if (currentEngineState != EngineState::Default)
        {
            break;
        }
        _polling = false;
        currentEngineState = EngineState::Debug;
        RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("Entered debug");
        break;
    }
    }
}

void NRCThanos::extendedCommandHandler_impl(const NRCPacket::NRC_COMMAND_ID commandID, packetptr_t packetptr)
{
    SimpleCommandPacket command_packet(*packetptr);
    switch (static_cast<uint8_t>(commandID))
    {
    case 6:
    {
        if (currentEngineState == EngineState::Debug)
        {
            fuelServo.goto_Angle(command_packet.arg);
            break;
        }
        else
        {
            break;
        }
    }
    case 7:
    {
        if (currentEngineState == EngineState::Debug)
        {
            oxServo.goto_Angle(command_packet.arg);
        }
        else
        {
            break;
        }
    }
    default:
    {
        NRCRemoteActuatorBase::extendedCommandHandler_impl(commandID, std::move(packetptr));
        break;
    }
    }
}

bool NRCThanos::timeFrameCheck(int64_t start_time, int64_t end_time)
{
    if (millis() - ignitionTime > start_time && end_time == -1)
    {
        return true;
    }

    else if (millis() - ignitionTime > start_time && millis() - ignitionTime < end_time)
    {
        return true;
    }

    else
    {
        return false;
    }
}

void NRCThanos::firePyro(uint32_t duration)
{
    if (millis() - _prevFiring > _ignitionCommandSendDelta)
    {
        if (_ignitionCalls < _ignitionCommandMaxCalls)
        {
            SimpleCommandPacket ignition_command(2, duration);
            ignition_command.header.source_service = static_cast<uint8_t>(Services::ID::Thanos);
            ignition_command.header.destination_service = m_ingitionService;
            ignition_command.header.source = _address;
            ignition_command.header.destination = m_ignitionNode;
            ignition_command.header.uid = 0;
            _networkmanager.sendPacket(ignition_command);
            _prevFiring = millis();
            _ignitionCalls++;
        }
    }
}

bool NRCThanos::pValUpdated()
{
    if ((millis() - lastTimeChamberPUpdate) > pressureUpdateTimeLim)
    {
        return false;
    }
    else
    {
        return true;
    }
}

void NRCThanos::openOxFill()
{
    SimpleCommandPacket openOxFillCmd(2, 180);
    openOxFillCmd.header.source_service = static_cast<uint8_t>(Services::ID::Thanos);
    openOxFillCmd.header.destination_service = m_oxFillService;
    openOxFillCmd.header.source = _address;
    openOxFillCmd.header.destination = m_oxFillNode;
    openOxFillCmd.header.uid = 0;
    _networkmanager.sendPacket(openOxFillCmd);
    oxFillClosed = false;
}

void NRCThanos::closeOxFill()
{
    if (!oxFillClosed){
        SimpleCommandPacket closeOxFillCmd(2, 0);
        closeOxFillCmd.header.source_service = static_cast<uint8_t>(Services::ID::Thanos);
        closeOxFillCmd.header.destination_service = m_oxFillService;
        closeOxFillCmd.header.source = _address;
        closeOxFillCmd.header.destination = m_oxFillNode;
        closeOxFillCmd.header.uid = 0;
        _networkmanager.sendPacket(closeOxFillCmd);

        if (closeOxFillCalls >= 2){     // this is clapped i know
            oxFillClosed = true;
            closeOxFillCalls = 0;
        }
        else{
            closeOxFillCalls++;
        }
    }
}
