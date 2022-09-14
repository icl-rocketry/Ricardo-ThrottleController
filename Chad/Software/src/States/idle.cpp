#include "idle.h"
#include "abort.h"
#include "ricardo_pins.h"

#include <rnp_default_address.h>

Idle::Idle(stateMachine* sm):
State(sm, SYSTEM_FLAG::STATE_IDLE)
{};

void Idle::initialise(){
    State::initialise();

    //load the GroundstationGateway routing table
    RoutingTable routetable;
    routetable.setRoute((uint8_t)DEFAULT_ADDRESS::ROCKET,Route{2,1,{}});
    routetable.setRoute((uint8_t)DEFAULT_ADDRESS::GROUNDSTATION,Route{2,1,{}});

    _sm->networkmanager.setRoutingTable(routetable);
    _sm->networkmanager.updateBaseTable(); // save the new base table
    _sm->networkmanager.setAddress(default_address);

    _sm->networkmanager.enableAutoRouteGen(true); // enable route learning
    _sm->networkmanager.setNoRouteAction(NOROUTE_ACTION::BROADCAST,{1,2}); // enable broadcast over serial and radio only

};

State* Idle::update(){
    // return this;
    if(digitalRead(ES1GPIO) == LOW){
        State* _abort_ptr = new Abort(_sm);
        return _abort_ptr;
    }
    else{
        return this;
    }
    
};

void Idle::exitstate(){
    State::exitstate();
};


