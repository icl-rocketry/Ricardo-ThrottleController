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
Buck(PinMap::BuckPGOOD, PinMap::BuckEN, 1, 1, PinMap::BuckOutputV, 1500, 470),
canbus(systemstatus,PinMap::TxCan,PinMap::RxCan,3),
Servo1(PinMap::ServoPWM1, 1, networkmanager),
Servo2(PinMap::ServoPWM2, 2, networkmanager)
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
    canbus.setup();
    
    networkmanager.setNodeType(NODETYPE::HUB);
    networkmanager.setNoRouteAction(NOROUTE_ACTION::BROADCAST,{1,3});

    //Defining these so the methods following are less ugly
    uint8_t servoservice1 = (uint8_t) Services::ID::Servo1;
    uint8_t servoservice2 = (uint8_t) Services::ID::Servo2;

    networkmanager.addInterface(&canbus);

    networkmanager.registerService(servoservice1,Servo1.getThisNetworkCallback());
    networkmanager.registerService(servoservice2,Servo2.getThisNetworkCallback());
};

long prevTime = 0;
bool update = false;

void System::systemUpdate(){
    Buck.update();
    // if(millis() - prevTime > 1000){
    //     if(update == false){
    //     Servo1.goto_Angle(180);
    //     Servo2.goto_Angle(0);
    //     update = true;
    //     prevTime = millis();
    //     }
    //     else{
    //     Servo1.goto_Angle(0);
    //     Servo2.goto_Angle(180);
    //     update = false;
    //     prevTime = millis();
    //     }
    // }
};