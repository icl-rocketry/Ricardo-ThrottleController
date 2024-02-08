#pragma once

#include "librrc/nrcremoteactuatorbase.h"
#include "librrc/nrcremoteservo.h"

#include <librnp/rnp_networkmanager.h>
#include <librnp/rnp_packet.h>



class NRCThanos : public NRCRemoteActuatorBase<NRCThanos>
{

    public:

        NRCThanos(RnpNetworkManager &networkmanager,
                    uint8_t fuelServoGPIO,
                    uint8_t fuelServoChannel,
                    uint8_t oxServoGPIO,
                    uint8_t oxServoChannel,
                    uint8_t overrideGPIO,
                    uint8_t address
                    ):
            NRCRemoteActuatorBase(networkmanager),
            _networkmanager(networkmanager),      
            _fuelServoGPIO(fuelServoGPIO),
            _fuelServoChannel(fuelServoChannel),
            _oxServoGPIO(oxServoGPIO),
            _oxServoChannel(oxServoChannel),
            _overrideGPIO(overrideGPIO),
            _address(address),
            fuelServo(fuelServoGPIO,fuelServoChannel,networkmanager,0,0,180,0,170),
            oxServo(oxServoGPIO,oxServoChannel,networkmanager,0,0,180,10,170)
            {};

        void setup();
        void update();
        void updateThrust(float thrust);
        void updateChamberP(float chamberP);
        bool getPollingStatus() { return _polling; };

        uint16_t getFuelAngle() { return fuelServo.getAngle(); };
        uint16_t getOxAngle() { return oxServo.getAngle(); };

    protected:
        RnpNetworkManager &_networkmanager;
        const uint8_t _fuelServoGPIO;
        const uint8_t _fuelServoChannel;
        const uint8_t _oxServoGPIO;
        const uint8_t _oxServoChannel;
        const uint8_t _overrideGPIO;
        const uint8_t _address;

        NRCRemoteServo fuelServo;
        NRCRemoteServo oxServo;

        friend class NRCRemoteActuatorBase;
        friend class NRCRemoteBase;

        void execute_impl(packetptr_t packetptr);
        // void arm_impl(packetptr_t packetptr);
        // void disarm_impl(packetptr_t packetptr);
        void override_impl(packetptr_t packetptr);
        void extendedCommandHandler_impl(const NRCPacket::NRC_COMMAND_ID commandID, packetptr_t packetptr);

        enum class EngineState : uint8_t
        {
            Default = 0,
            Ignition = 1,
            ShutDown = 2,
            NominalT = 3,
            ThrottledT = 4,
            // Fullbore = 4,
            Debug = 5
        };

        bool fullbore_called = false;
        bool shutdown_called = false;

        EngineState currentEngineState = EngineState::Default;

        uint64_t ignitionTime;

        float _chamberP;
        float _thrust;

        bool timeFrameCheck(int64_t start_time, int64_t end_time = -1);
        bool nominalEngineOp();
        bool pValUpdated();

        void gotoWithSpeed(NRCRemoteServo &Servo, uint16_t demandAngle, float speed, float &prevAngle, float &currAngle, uint32_t &prevUpdateT);

        void gotoThrust(float target, float closespeed, float openspeed);
        void firePyro(uint32_t duration);
        uint8_t getStatus(){return static_cast<uint8_t>(currentEngineState);};

        // Ignition sequence timings from moment ignition command received
        const uint64_t pyroFires = 0;
        const uint64_t fuelValvePreposition = 500;
        const uint64_t oxValvePreposition = 550;
        const uint64_t endOfIgnitionSeq = 1300;

        const uint16_t fuelServoPreAngle = 60;
        const uint16_t oxServoPreAngle = 55;

        uint64_t lastTimeThrustUpdate;
        uint64_t lastTimeChamberPUpdate;

        const uint64_t pressureUpdateTimeLim = 1000;
        const uint32_t m_firstNominalTime = 4100;
        const uint32_t m_throttledDownTime = 2100;
        const uint32_t m_secondNominalTime = 1500;

        uint8_t _ignitionCalls = 0;
        const uint8_t _ignitionCommandMaxCalls = 2;
        const uint8_t _ignitionCommandSendDelta = 50;
        uint32_t _prevFiring = 0;

        bool _polling = false;

        //
        uint8_t m_ingitionService = 12;
        uint8_t m_ignitionNode = 107;

        float m_nominal = 2400;
        float m_targetThrottled = 800;

        float m_fuelServoCurrAngle = 0;
        float m_oxServoCurrAngle = 0;

        float m_fuelServoPrevAngle = 0;
        float m_oxServoPrevAngle = 0;

        uint32_t m_fuelServoPrevUpdate = 0;
        uint32_t m_oxServoPrevUpdate = 0;

        const float m_servoFast = 180; // degs per second
        const float m_servoSlow = 20;  // degs per second

        //
        bool m_thrustreached = false;
        uint32_t m_timeThrustreached;
        bool m_firstNominal = false;
};