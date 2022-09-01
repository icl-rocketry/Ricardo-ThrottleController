#include "idle.h"
#include <nrcremoteservo.h>

Idle::Idle(stateMachine* sm):
State(sm, SYSTEM_FLAG::STATE_IDLE)
{};

void Idle::initialise(){
    State::initialise();
    NRCRemoteServo::setup();
};

State* Idle::update(){

    if(digitalRead(ABORT_PIN) == LOW){
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


