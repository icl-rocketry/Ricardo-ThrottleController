#include "idle.h"
#include "abort.h"
#include "ricardo_pins.h"


#include <rnp_default_address.h>

Idle::Idle(stateMachine* sm):
State(sm, SYSTEM_FLAG::STATE_IDLE)
{};

void Idle::initialise(){
    State::initialise();

};

State* Idle::update(){
    readButton();
    _sm->heatpadSSR.update(); // call update on the heatpadssr
    return this;
   
    
};

void Idle::exitstate(){
    State::exitstate();
};

void Idle::readButton(){
    if (millis()-prevReadButtonTime > readButtonDelta){
        bool forwardButtonState = digitalRead(forwardButton);
        bool backButtonState = digitalRead(backButton);

        if (forwardButtonState && !backButtonState){
            _sm->nrcremotemotor.move_motor(motorspeed);
            return;
        }
        if (backButtonState && !forwardButtonState){
            _sm->nrcremotemotor.move_motor(100+motorspeed);
            return;
        }

        //write zero
        _sm->nrcremotemotor.move_motor(0);


        prevReadButtonTime = millis();
    }   
}

