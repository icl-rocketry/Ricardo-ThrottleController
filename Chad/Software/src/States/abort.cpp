#include "abort.h"
#include <librrc/nrcremoteservo.h>
#include "stateMachine.h"

Abort::Abort(stateMachine* sm):
State(sm, SYSTEM_FLAG::STATE_ABORT)
{};

void Abort::initialise(){
    State::initialise();
    //close all valves
    _sm->nrcremoteservo.reset();
    //unregister network handlers so valves cant be moved
    _sm->networkmanager.unregisterService(10);
    _sm->networkmanager.unregisterService(11);
};

State* Abort::update(){
    //close everything
    //no way of getting out of state other than reboot
    
    return this;
};

void Abort::exitstate(){
    State::exitstate();
};

