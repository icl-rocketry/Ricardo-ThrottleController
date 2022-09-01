#pragma once
#include "state.h"

class Abort: public State{

    public:
    Abort(stateMachine* sm);
    void initialise();
    State* update();
    void exitstate();
    
};