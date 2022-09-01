#include "abort.h"
#include "lib\librrc\src\librrc\nrcremoteservo.h"

Abort::Abort(stateMachine* sm):
State(sm, SYSTEM_FLAG::STATE_ABORT)
{};

void Abort::initialise(){
    State::initialise();
};

State* Abort::update(){
    //close everything
    //no way of getting out of state other than reboot
    NRCRemoteServo::reset();
};

void Abort::exitstate(){
    State::exitstate();
};

