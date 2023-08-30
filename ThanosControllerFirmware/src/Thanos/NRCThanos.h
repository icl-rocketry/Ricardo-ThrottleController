#pragma once

#include "librrc/nrcremoteactuatorbase.h"
#include "librrc/nrcremoteservo.h"

#include <librnp/rnp_networkmanager.h>
#include <librnp/rnp_packet.h>

#include "system.h"

class NRCThanos : public NRCRemoteActuatorBase<NRCThanos>
{

    public:

        NRCThanos(RnpNetworkManager &networkmanager,
                    System &system,
                    NRCRemoteServo &fuelServo,
                    NRCRemoteServo &oxServo):
        NRCRemoteActuatorBase(networkmanager),
            _system(system),
            _fuelServo(fuelServo),
            _oxServo(oxServo)
            {};
        
        void updatePValues();
        void update();
        
    protected:

        extendedCommandHandler_impl(const NRCPacket::NRC_COMMAND_ID commandID,packetptr_t packetptr){
            switch(commandID)
            {
                case 6:
                {
                    override_impl(packetptr_t packetptr);
                    break;
                }
                default:
                {
                static_cast<NRCRemoteActuatorBase*>(this)->extendedCommandHandler_impl(const NRCPacket::NRC_COMMAND_ID commandID,packetptr_t packetptr);
                break;
                }
            }
        }

        friend class NRCRemoteActuatorBase;
        friend class NRCRemoteBase;

        System &_system;
        NRCRemoteServo &_fuelServo;
        NRCRemoteServo &_oxServo;

        
        void execute_impl(packetptr_t packetptr);
        void arm_impl(packetptr_t packetptr);
        void disarm_impl(packetptr_t packetptr);
        void override_impl(packetptr_t packetptr);
        void extendedCommandHandler_impl(const NRCPacket::NRC_COMMAND_ID commandID,packetptr_t packetptr);

        enum class EngineState : uint8_t
        {
            Ignition = 0,
            ShutDown = 1,
            EngineController = 2
        };

        EngineState currentEngineState;

        uint64_t ignitionTime;

        bool nominalEngineOp;
        bool ignitionStarted = false;
        bool debug = false;

        float _chamberP;
        float _fuelP;

        void moveOxServo(uint16_t servo_angle); //commandhandler, check for debug state
        void moveFuelServo(uint16_t servo_angle);   //commandhandler, check for debug state

        bool timeFrameCheck(uint64_t start_time, uint64_t end_time);
        bool checkEngineParams();
        float demandedFuelP();
        
        void firePyro(uint32_t duration);


        //Ignition sequence timings from moment ignition command received
        uint64_t pyroFires = 0;
        uint64_t fuelValvePreposition = 500;
        uint64_t oxValvePreposition = 550;
        uint64_t fuelValveFullBore = 1300;
        uint64_t oxValveFullBore = 1350;
        uint64_t endOfIgnitionSeq = 2100;

        float error;
        float Kp = 2.5;
        uint16_t currFuelServoAngle;
        uint16_t currOxServoAngle;
        uint16_t fuelServoDemandAngle;
        uint16_t fuelServoPreAngle = 60;
        uint16_t oxServoPreAngle = 90;
}