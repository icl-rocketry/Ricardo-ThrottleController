/* 
Code used to process states, and the transitions between them, contains parent class for states

Written by the Electronics team, Imperial College London Rocketry
*/

#ifndef STATEMACHINE_H
#define STATEMACHINE_H

#include "Arduino.h"

#include "States/state.h"

#include "Storage/systemstatus.h"
#include "Storage/logController.h"

#include "Network/interfaces/usb.h"
#include "Network/interfaces/canbus.h"

#include "rnp_networkmanager.h"
#include "rnp_routingtable.h"
#include <librrc/nrcremotemotor.h>
#include <librrc/nrcremoteservo.h>
#include <librrc/nrcremotetempssr.h>
#include <librrc/networksensor.h>


#include "Commands/commandHandler.h"



#include "SPI.h"
#include "Wire.h"




class stateMachine {
  
  public:
    stateMachine();// The constructor
    //functions
    void initialise(State* initStatePtr);
    void update();
    void changeState(State* newStatePtr);

   

    TwoWire I2C;

    USB usbserial;
    CanBus canbus;
    RnpNetworkManager networkmanager;
    CommandHandler commandhandler;

    LogController logcontroller;
    SystemStatus systemstatus;

    NRCRemoteServo nrcremoteservo;
    NRCRemoteMotor nrcremotemotor;

    NetworkSensor remoteThermistor;
    NRCRemoteTempSSR heatpadSSR;
    


   
  private:
    State* _currStatePtr;

    static constexpr int default_address=100;
    static constexpr int remoteThermistorService = 4;


};

#endif
