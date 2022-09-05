#pragma once
#include "state.h"
#include "stateMachine.h"

class Idle: public State{

    public:
    Idle(stateMachine* sm);
    void initialise();
    State* update();
    void exitstate();
    private:
    static constexpr int default_address = 100;
    
};