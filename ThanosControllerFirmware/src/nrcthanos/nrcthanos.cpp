#include "nrcthanos.h"
#include <math.h>
#include <Arduino.h>

#include <libriccore/commands/commandhandler.h>

#include "config/services_config.h"


void NRCThanos::setup()
{
    fuelServo.setup();
    oxServo.setup();
    prevLogMessageTime = millis();
}


void NRCThanos::update()
{
    if (millis()-prevLogMessageTime > 1000)
    {
        RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("Thanos update");
        prevLogMessageTime = millis();
    }

    if (currentEngineState == EngineState::Ignition){    //ignition sequence

        if (millis()-prevLogMessageTime > 1000)
        {
            RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("Ignition");
            prevLogMessageTime = millis();
        }
        
        if (timeFrameCheck(pyroFires, fuelValvePreposition) && !ignitionStarted)
        {
            firePyro(fuelValvePreposition - pyroFires);
            ignitionStarted = true; //add chamber pressure check
        }

        else if (timeFrameCheck(fuelValvePreposition, oxValvePreposition))
        {
            fuelServo.goto_Angle(fuelServoPreAngle);
        }

        else if (timeFrameCheck(oxValvePreposition, fuelValveFullBore))
        {
            oxServo.goto_Angle(oxServoPreAngle);
        }

        else if (timeFrameCheck(fuelValveFullBore, oxValveFullBore))
        {
            fuelServo.goto_Angle(180);
        }

        else if (timeFrameCheck(oxValveFullBore, endOfIgnitionSeq))
        {
            oxServo.goto_Angle(180);
        }

        else if (timeFrameCheck(endOfIgnitionSeq))
        {
            currentEngineState = EngineState::EngineController;
        }

    }


    if (currentEngineState == EngineState::EngineController) {

        if (nominalEngineOp()){
            error = demandedFuelP() - _fuelP;
            fuelServoDemandAngle = currFuelServoAngle + Kp*error;

            if (fuelServoDemandAngle < 90){
                fuelServo.goto_Angle(90);
                currFuelServoAngle = 90;
            }
            else if (fuelServoDemandAngle > 180){
                fuelServo.goto_Angle(180);
                currFuelServoAngle = 180;
            }
            else{
                fuelServo.goto_Angle(fuelServoDemandAngle);
                currFuelServoAngle = fuelServoDemandAngle;                
            }
        }

        if (!nominalEngineOp() || !pValUpdated()){
            currentEngineState = EngineState::Default;
        }

    }

    if (currentEngineState == EngineState::Default)
    {
        if (!default_called){
            fuelServo.goto_Angle(180);
            oxServo.goto_Angle(180);
            default_called = true;
        }
        
        if (nominalEngineOp() && pValUpdated()){
            currentEngineState = EngineState::EngineController;
            default_called = false;
        }

    }

    if (currentEngineState == EngineState::ShutDown && !shutdown_called) {
        fuelServo.goto_Angle(0);
        oxServo.goto_Angle(0);
        shutdown_called = true;
    }

}


bool NRCThanos::nominalEngineOp()
{
    if (_chamberP > 10){
        return true;
    }
    else{
        return false;
    }
}

void NRCThanos::updateChamberP(float chamberP)
{
    lastTimeChamberPUpdate = millis();
    _chamberP = chamberP;
}

void NRCThanos::updateFuelP(float fuelP)
{
    lastTimeFuelPUpdate = millis();
    _fuelP = fuelP;
}


float NRCThanos::demandedFuelP()
{
    return (0.016 * pow(_chamberP,2) + _chamberP);
}


void NRCThanos::execute_impl(packetptr_t packetptr)
{
    SimpleCommandPacket execute_command(*packetptr);

    switch(execute_command.arg) 
    {
        case 1:
        {
            if (currentEngineState == EngineState::Override){
                currentEngineState = EngineState::Ignition;
                ignitionTime = millis();
                RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("Ignition called");
                break;
            }
            else{
                break;
            }
        }
        case 2:
        {
            currentEngineState = EngineState::ShutDown;
            RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("ShutDown");
            break;
        }
    }
}


void NRCThanos::extendedCommandHandler_impl(const NRCPacket::NRC_COMMAND_ID commandID,packetptr_t packetptr){
    SimpleCommandPacket command_packet(*packetptr);
    switch(static_cast<uint8_t>(commandID))
    {
        

        case 6:
        {
            fuelServo.goto_Angle(command_packet.arg);
            RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("Fuel servo write");
            break;
        }
        case 7:
        {
            oxServo.goto_Angle(command_packet.arg);
            RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("Ox servo write");
            break;
        }
        default:
        {
            NRCRemoteActuatorBase::extendedCommandHandler_impl(commandID,std::move(packetptr));
            break;
        }
    }
}


bool NRCThanos::timeFrameCheck(int64_t start_time, int64_t end_time)
{
    if (millis() - ignitionTime > start_time && end_time == -1){
        return true;
    }
    
    else if (millis() - ignitionTime > start_time && millis() - ignitionTime < end_time){
        return true;
    }

    else{
        return false;
    }
}


void NRCThanos::firePyro(uint32_t duration)
{
    SimpleCommandPacket ignition_command(2, duration);
    ignition_command.header.source_service = static_cast<uint8_t>(Services::ID::Thanos);
    ignition_command.header.destination_service = 10;
    ignition_command.header.source = _address;
    ignition_command.header.destination = 9;
    ignition_command.header.uid = 0;
    _networkmanager.sendPacket(ignition_command);
}


bool NRCThanos::pValUpdated()
{
    if (lastTimeChamberPUpdate > pressureUpdateTimeLim || lastTimeFuelPUpdate > pressureUpdateTimeLim ){
        return false;
    }
    else{
        return true;
    }
}