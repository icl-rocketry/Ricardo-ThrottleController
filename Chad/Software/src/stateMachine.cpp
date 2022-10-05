/* 
Inital State machine framework written by Daniele Bella <3
Code used to process states, and the transitions between them, contains parent class for states

Written by the Electronics team, Imperial College London Rocketry
*/

#include "stateMachine.h"
#include <string>
#include <vector>
#include <functional>

#include "global_config.h"
#include "ricardo_pins.h"

#include "States/state.h"


#include "Network/interfaces/usb.h"

#include "Network/interfaces/canbus.h"

#include "rnp_networkmanager.h"
#include "rnp_default_address.h"
#include "rnp_nvs_save.h"

#include "Storage/logController.h"
#include "Storage/systemstatus.h"

#include "SPI.h"
#include "Wire.h"






stateMachine::stateMachine() : 
    I2C(0),
    usbserial(Serial,systemstatus,logcontroller),
    canbus(systemstatus,logcontroller,2),
    networkmanager(5,NODETYPE::HUB,true),
    commandhandler(this),
    logcontroller(networkmanager),
    systemstatus(&logcontroller),
    nrcremoteservo(ServoPWM,1,networkmanager),
    nrcremotemotor(networkmanager,HBridgeDIR1,HBridgeDIR2,2,3)
{};


void stateMachine::initialise(State* initStatePtr) {

  //internal io initilization must happen here so io buses setup for sensor initialzation
  //intialize i2c interface
  I2C.begin(-1,-1,I2C_FREQUENCY);
  //initalize spi interface
  //open serial port on usb interface
  Serial.begin(Serial_baud);
  Serial.setRxBufferSize(SERIAL_SIZE_RX);

  //setup pins
  pinMode(forwardButton,INPUT_PULLUP);
  pinMode(backButton,INPUT_PULLUP);
  // pinMode(Hall1,INPUT);
  // pinMode(Hall2,INPUT);

  //setup interfaces
  usbserial.setup();
  canbus.setup();

  //setup network manager so communication is running
  // add interfaces
  networkmanager.addInterface(&usbserial);
  networkmanager.addInterface(&canbus);

  networkmanager.enableAutoRouteGen(true);
  networkmanager.setNoRouteAction(NOROUTE_ACTION::BROADCAST,{1,2});

  //load default routing table
  RoutingTable routetable;
  routetable.setRoute((uint8_t)DEFAULT_ADDRESS::ROCKET,Route{2,1,{}});
  routetable.setRoute((uint8_t)DEFAULT_ADDRESS::GROUNDSTATION,Route{2,1,{}});

  networkmanager.setRoutingTable(routetable);
  networkmanager.updateBaseTable(); // save the new base table

  networkmanager.setAddress(default_address);

  networkmanager.enableAutoRouteGen(true); // enable route learning
  networkmanager.setNoRouteAction(NOROUTE_ACTION::BROADCAST,{1,2}); // enable broadcast over serial and radio only
  Serial.println(networkmanager.getAddress());
  
  logcontroller.setup();
  networkmanager.setLogCb([this](const std::string& message){return logcontroller.log(message);});

  //configure save function from network manager
  networkmanager.setSaveConfigImpl(RnpNvsSave::SaveToNVS);

  //try to load previous net config from nvs
  RnpNetworkManagerConfig savedNetworkConfig;
  if (!RnpNvsSave::ReadFromNVS(savedNetworkConfig))
  {
    logcontroller.log("loading saved config");
    networkmanager.loadconfig(savedNetworkConfig);
  }

  nrcremoteservo.setup();
  nrcremotemotor.setup();

   // command handler callback
  networkmanager.registerService(static_cast<uint8_t>(DEFAULT_SERVICES::COMMAND),commandhandler.getCallback()); 
  networkmanager.registerService(10,nrcremoteservo.getThisNetworkCallback());
  networkmanager.registerService(11,nrcremotemotor.getThisNetworkCallback());

  //call setup state
  changeState(initStatePtr);

  nrcremoteservo.reset();
  
};

void stateMachine::update() {

  networkmanager.update();

  State* newStatePtr = _currStatePtr->update();

  if (newStatePtr != _currStatePtr) {
    changeState(newStatePtr);
  }

  
};

void stateMachine::changeState(State* newStatePtr) {
  // Delete old state instance and change to new one
  if (_currStatePtr != NULL){
    //if not null pointer call exitstate method
    _currStatePtr->exitstate();

  };

  delete _currStatePtr;
  
  _currStatePtr = newStatePtr;
  _currStatePtr->initialise();



};

