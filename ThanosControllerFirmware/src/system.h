#pragma once

#include <libriccore/riccoresystem.h>
#include <libriccore/networkinterfaces/can/canbus.h>
#include <librrc/networksensor.h>
#include "librrc/sensorpoller.h"

#include "config/systemflags_config.h"
#include "config/commands_config.h"
#include "config/pinmap_config.h"


#include "SiC43x.h"
#include "nrcthanos/nrcthanos.h"

#include "commands/commands.h"


class System : public RicCoreSystem<System,SYSTEM_FLAG,Commands::ID>
{
    public:

        System();
        
        void systemSetup();

        void systemUpdate();

        SiC43x Buck;

        CanBus<SYSTEM_FLAG> canbus;

    private:

        NetworkSensor chamberPTap;
        NetworkSensor fuelPTap;
        SensorPoller chamberPTapPoller;
        SensorPoller fuelPTapPoller;

        NRCThanos Thanos;

};