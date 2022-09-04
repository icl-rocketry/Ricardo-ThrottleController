#pragma once
#include "state.h"
#include "stateMachine.h"

class Abort: public State{

    public:
    Abort(stateMachine* sm);
    void initialise();
    State* update();
    void exitstate();
    
};