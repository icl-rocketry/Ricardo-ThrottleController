#include "nrcthanos.h"
#include <math.h>
#include <Arduino.h>

#include <libriccore/commands/commandhandler.h>
#include <libriccore/riccorelogging.h>

#include "Config/services_config.h"

void NRCThanos::setup()
{
    fuelServo.setup();
    oxServo.setup();    
}

void NRCThanos::update()
{
    if (this -> _state.flagSet(COMPONENT_STATUS_FLAGS::DISARMED))
    {
        fuelServo.goto_Angle(0);
        oxServo.goto_Angle(0);
    }

    switch (currentEngineState)
    {

    case EngineState::Ignition:

    { // ignition sequence
        // RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("Ignition state");
        if (timeFrameCheck(pyroFires, fuelValvePreposition))
        {
            firePyro(fuelValvePreposition - pyroFires);
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

        break;
    }

    case EngineState::EngineController:
    {

        if (nominalEngineOp())
        {
            error = demandedFuelP() - _fuelP;
            fuelServoDemandAngle = currFuelServoAngle + Kp * error;

            if (fuelServoDemandAngle < 90)
            {
                fuelServo.goto_Angle(90);
                currFuelServoAngle = 90;
                RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>("Valve demand below min angle!");
            }
            else if (fuelServoDemandAngle > 180)
            {
                fuelServo.goto_Angle(180);
                currFuelServoAngle = 180;
            }
            else
            {
                fuelServo.goto_Angle(fuelServoDemandAngle);
                currFuelServoAngle = fuelServoDemandAngle;
            }
        }

        if (!nominalEngineOp() || !pValUpdated())
        {
            currentEngineState = EngineState::Default;
        }
        break;
    }

    case EngineState::Default:
    {
        if (!default_called)
        {
            fuelServo.goto_Angle(180);
            oxServo.goto_Angle(180);
            default_called = true;
        }

        if (nominalEngineOp() && pValUpdated())
        {
            currentEngineState = EngineState::EngineController;
            default_called = false;
        }

        break;
    }

    case EngineState::ShutDown:
    {
        fuelServo.goto_Angle(180);
        oxServo.goto_Angle(0);

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
    if (_chamberP > 10)
    {
        return true;
    }
    else
    {
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
    return (0.02 * pow(_chamberP, 2) + _chamberP);
}

void NRCThanos::execute_impl(packetptr_t packetptr)
{
    SimpleCommandPacket execute_command(*packetptr);

    switch (execute_command.arg)
    {
    case 1:
    {
        if (currentEngineState != EngineState::ShutDown)
        {
            break;
        }
        currentEngineState = EngineState::Ignition;
        ignitionTime = millis();
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
        if (currentEngineState != EngineState::ShutDown)
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
            ignition_command.header.destination_service = 11;
            ignition_command.header.source = _address;
            ignition_command.header.destination = 11;
            ignition_command.header.uid = 0;
            _networkmanager.sendPacket(ignition_command);
            _prevFiring = millis();
        }
    }
}

bool NRCThanos::pValUpdated()
{
    if ((millis() - lastTimeChamberPUpdate) > pressureUpdateTimeLim || (millis() - lastTimeFuelPUpdate) > pressureUpdateTimeLim)
    {
        return false;
    }
    else
    {
        return true;
    }
}