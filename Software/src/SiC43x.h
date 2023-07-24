#pragma once
#include <stdint.h>
#include <Arduino.h>

class SiC43x{

public:

    /**
     * @brief Class to manage SiC43x buck converter devices
     * 
     * @author Andrei Paduraru
     * 
     * @param PGood PowerGood pin number
     * @param EN Enable pin number
     * @param defaultEN To determine whether the converter should default on or off
     * @param invertEN To determine whether EN output is inverted, i.e. if writing the pin HIGH would cause the converter to turn off
     * @param VRead Voltage output analog read pin
     * @param HighResistor Resistance value of pontential divider resistor connected to the top side
     * @param LowResistor Resistance value of potential divider resistor connected to the low side
     */
    
    SiC43x(int8_t PGood = -1, int8_t EN = -1, bool defaultEN = 0, bool invertEN = 0, int8_t VRead = -1, float HighResistor  = 0, float LowResistor = 1) : 
                        _PGoodPin(PGood),
                        _ENPin(EN),
                        _defaultEN(defaultEN),
                        _invertEN(invertEN),
                        _VReadPin(VRead),
                        _RHighS(HighResistor),
                        _RLowS(LowResistor){};
    
    
    void setup(){
        if(_PGoodPin >= 0){
            pinMode(_PGoodPin, INPUT);
        }
        if(_ENPin >= 0){
            pinMode(_ENPin, OUTPUT);
            setEN(_defaultEN);
        }
    };

    /**
     * @brief Method enables and disables buck converter chip based on level param and invertEN attribute
     * 
     * @param Bucklevel Desired status of the buck, true - enabled; false - disabled.
     */
    void setEN(bool Bucklevel){
        bool pinLevel = _invertEN ^ Bucklevel;
        digitalWrite(_ENPin, pinLevel);
    };

    /**
     * @brief Method to update output voltage and PGOOD values
     */
    void update(){
        OutputV = ((float) (_RHighS + _RLowS) / (float) _RLowS) * (float) analogRead(_VReadPin) / (float) ADCMax;
        PGOOD = digitalRead(_PGoodPin);
    };

    float getOutputV(){return OutputV;};
    bool getPGOOD(){return PGOOD;};

private:

    float OutputV;
    bool PGOOD;

    //Pin Definitions
    int8_t _PGoodPin = -1;
    int8_t _ENPin = -1;
    int8_t _VReadPin = -1;

    //Potential divider setup. Default is no divider.
    float _RHighS = 0;
    float _RLowS = 1;

    bool _defaultEN = 0;
    bool _invertEN = 0;
    
    static constexpr int ADCMax = 4095;

};
