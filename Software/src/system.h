#pragma once

#include <libriccore/riccoresystem.h>
#include <librrc/nrcremoteservo.h>

#include "config/systemflags_config.h"
#include "config/commands_config.h"
#include "config/pinmap_config.h"

#include "commands/commands.h"

#include "SiC43x.h"
class System : public RicCoreSystem<System,SYSTEM_FLAG,Commands::ID>
{
    public:

        System();
        
        void systemSetup();

        void systemUpdate();

    private:

        NRCRemoteServo Servo1;
        NRCRemoteServo Servo2;
        SiC43x Buck;

};