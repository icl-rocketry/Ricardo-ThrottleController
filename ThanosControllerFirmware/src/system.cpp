#include "system.h"

#include <memory>

#include <libriccore/riccoresystem.h>

#include <HardwareSerial.h>

#include "Config/systemflags_config.h"
#include "Config/commands_config.h"
#include "Config/pinmap_config.h"
#include "Config/general_config.h"
#include "Config/services_config.h"

#include "Commands/commands.h"

#include "States/idle.h"

#include <librrc/rocketcomponent.h>

System::System():
RicCoreSystem(Commands::command_map,Commands::defaultEnabledCommands,Serial),
Buck(PinMap::BuckPGOOD, PinMap::BuckEN, 1, 1, PinMap::BuckOutputV, 1500, 470),
canbus(systemstatus,PinMap::TxCan,PinMap::RxCan,3),
chamberPTap(1, 10, static_cast<uint8_t>(Services::ID::chamberPTap), 19, networkmanager, [](const std::string& msg){RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>(msg);}),
fuelPTap(2, 10, static_cast<uint8_t>(Services::ID::fuelPTap), 20, networkmanager, [](const std::string& msg){RicCoreLogging::log<RicCoreLoggingConfig::LOGGERS::SYS>(msg);}),
chamberPTapPoller(50, &chamberPTap),
fuelPTapPoller(50, &fuelPTap),
Thanos(networkmanager,PinMap::ServoPWM1,0,PinMap::ServoPWM2,1,networkmanager.getAddress())
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
    chamberPTapPoller.setup();
    fuelPTapPoller.setup();
    Thanos.setup();
    canbus.setup();
    networkmanager.addInterface(&canbus);

    networkmanager.setNodeType(NODETYPE::HUB);
    networkmanager.setNoRouteAction(NOROUTE_ACTION::BROADCAST,{1,3});

    //Defining these so the methods following are less ugly
    uint8_t thanosservice = static_cast<uint8_t>(Services::ID::Thanos);
    uint8_t chamberPTapservice = static_cast<uint8_t>(Services::ID::chamberPTap);
    uint8_t fuelPTapservice = static_cast<uint8_t>(Services::ID::fuelPTap);

    networkmanager.registerService(thanosservice,Thanos.getThisNetworkCallback());
    networkmanager.registerService(chamberPTapservice,[this](packetptr_t packetptr){chamberPTap.networkCallback(std::move(packetptr));});
    networkmanager.registerService(fuelPTapservice,[this](packetptr_t packetptr){fuelPTap.networkCallback(std::move(packetptr));});
};

void System::systemUpdate(){
    Buck.update();

    if(Thanos.getPollingStatus()){  
        chamberPTapPoller.update();
        fuelPTapPoller.update();
    }
    
    if(chamberPTapPoller.newdata)
    {
        Thanos.updateChamberP(chamberPTapPoller.getVal());
    }

    if(fuelPTapPoller.newdata)
    {
        Thanos.updateFuelP(fuelPTapPoller.getVal());
    }

    Thanos.update();
};