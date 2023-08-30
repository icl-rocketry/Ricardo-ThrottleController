#include "NRCThanos.h"
#include <math.h>
#include <Arduino.h>

#include <libriccore/commands/commandhandler.h>



void NRCThanos::update()
{
    if (currentEngineState == EngineState::Ignition){    //ignition sequence
        
        if (timeFrameCheck(pyroFires, fuelValvePreposition) && !ignitionStarted)
        {
            firePyro(fuelValvePreposition - pyroFires);
            ignitionStarted = true;
        }

        else if (timeFrameCheck(fuelValvePreposition, oxValvePreposition))
        {
            moveFuelServo(fuelServoPreAngle);
        }

        else if (timeFrameCheck(oxValvePreposition, fuelValveFullBore))
        {
            moveOxServo(oxServoPreAngle);
        }

        else if (timeFrameCheck(fuelValveFullBore, oxValveFullBore))
        {
            moveFuelServo(180);
        }

        else if (timeFrameCheck(oxValveFullBore, endOfIgnitionSeq))
        {
            moveOxServo(180);
        }

        else if (timeFrameCheck(endOfIgnitionSeq))
        {
            currentEngineState = EngineState::EngineController;
        }

        //missing one more case

    }


    if (currentEngineState == EngineState::EngineController) {

        if (nominalEngineOp){
            error = demandedFuelP() - _fuelP;
            fuelServoDemandAngle = currFuelServoAngle + Kp*error;
            moveFuelServo(fuelServoDemandAngle);
        }

    }

    if (currentEngineState == EngineState::ShutDown) {
        moveFuelServo(0);
        moveOxServo(0);
    }
}


bool NRCThanos::checkEngineParams()
{
    if (_chamberP > 10){
        nominalEngineOp = true;
    }
    else{
        nominalEngineOp = false;
    }
}

void updatePValues(float chamberP, float fuelP)
{
    _chamberP = chamberP;
    _fuelP = fuelP;
}


float NRCThanos::demandedFuelP()
{
    return (0.016 * pow(_chamberP,2) + _chamberP);
}


void NRCThanos::moveOxServo(uint16_t servo_angle)
{
    if (debug == true){
        _oxServo.goto_Angle(servo_angle);
        currOxServoAngle = servo_angle;
    }
}

void NRCThanos::moveFuelServo(uint16_t servo_angle)
{
    if (debug == true){
        _fuelServo.goto_Angle(servo_angle);
        currFuelServoAngle = servo_angle;
    }
}


void NRCThanos::execute_impl(packetptr_t packetptr)
{
    SimpleCommandPacket execute_command(*packetptr);

    switch(execute_command.arg)
    {
        case 1:
        {
            if (currentEngineState == EngineState::ShutDown){
                currentEngineState = EngineState::Ignition;
                ignitionTime = millis();
                break;
            }
            else{
                break;
            }
        }
        case 2:
        {
            currentEngineState = EngineState::ShutDown;
            break;
        }
    }
}


void NRCThanos::override_impl(packetptr_t packetptr)
{
    SimpleCommandPacket override_command(*packetptr);

    switch(override_command.command)
    {
        case ??:
        {
            moveOxServo(override_command.arg);
            break;
        }
        case ??:
        {
            moveFuelServo(override_command.arg);
            break;
        }
    }
}


bool NRCThanos::timeFrameCheck(uint64_t start_time, uint64_t end_time = 0)
{
    if (millis() - ignitionTime > start_time && end_time == 0){
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
    ignition_command.header.source_service = _system.commandhandler.getServiceID();
    ignition_command.header.destination_service = 10;
    ignition_command.header.source = _system.networkmanager.getAddress();
    ignition_command.header.destination = 9;
    ignition_command.header.uid = 0;
    _system.networkmanager.sendPacket(ignition_command);
}
