#pragma once
#include "state.h"
#include "stateMachine.h"

class Idle : public State
{

    public:
        Idle(stateMachine *sm);
        void initialise();
        State *update();
        void exitstate();

    private:
        uint32_t prevReadButtonTime{0};
        constexpr uint32_t readButtonDelta = 100;
        void readButtons();

        constexpr int motorspeed = 40;
};