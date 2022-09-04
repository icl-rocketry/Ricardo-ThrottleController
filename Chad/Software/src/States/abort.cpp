#include "abort.h"
#include <librrc/nrcremoteservo.h>
#include "stateMachine.h"

Abort::Abort(stateMachine* sm):
State(sm, SYSTEM_FLAG::STATE_ABORT)
{};

void Abort::initialise(){
    State::initialise();
};

State* Abort::update(){
    //close everything
    //no way of getting out of state other than reboot
    _sm->nrcremoteservo.reset();
    return this;
};

void Abort::exitstate(){
    State::exitstate();
};

