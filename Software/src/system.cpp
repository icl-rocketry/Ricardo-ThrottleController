#include "system.h"

#include <memory>

#include <libriccore/riccoresystem.h>

#include <HardwareSerial.h>

#include "config/systemflags_config.h"
#include "config/commands_config.h"
#include "config/pinmap_config.h"
#include "config/general_config.h"
#include "config/services_config.h"

#include "commands/commands.h"

#include "states/idle.h"


System::System():
RicCoreSystem(Commands::command_map,Commands::defaultEnabledCommands,Serial),
Servo1(PinMap::ServoPWM1, 0, networkmanager),
Servo2(PinMap::ServoPWM2, 1, networkmanager),
Buck(PinMap::BuckPGOOD, PinMap::BuckEN, PinMap::BuckOutputV, 1, 1)
{};


void System::systemSetup(){
    
    Serial.setRxBufferSize(GeneralConfig::SerialRxSize);
    Serial.begin(GeneralConfig::SerialBaud);
   
    //intialize rnp message logger
    loggerhandler.retrieve_logger<RicCoreLoggingConfig::LOGGERS::SYS>().initialize(networkmanager);

    //initialize statemachine with idle state
    statemachine.initalize(std::make_unique<Idle>(systemstatus,commandhandler));
    //any other setup goes here
    
    Buck.setup();
    Servo1.setup();
    Servo2.setup();
    
    //Defining these so the methods following are less ugly
    uint8_t servoservice1 = (uint8_t) Services::ID::Servo1;
    uint8_t servoservice2 = (uint8_t) Services::ID::Servo1;

    networkmanager.registerService(servoservice1,Servo1.getThisNetworkCallback());
    networkmanager.registerService(servoservice2,Servo2.getThisNetworkCallback());

};


void System::systemUpdate(){};