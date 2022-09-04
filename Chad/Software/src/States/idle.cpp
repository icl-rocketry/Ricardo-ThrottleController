#include "idle.h"
#include "abort.h"
#include "ricardo_pins.h"

Idle::Idle(stateMachine* sm):
State(sm, SYSTEM_FLAG::STATE_IDLE)
{};

void Idle::initialise(){
    State::initialise();
};

State* Idle::update(){

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


