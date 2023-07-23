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
     * @param EN Enable Pin
     * @param VRead Voltage output analog read pin
     * @param defaultEN To deteremine whether the converter should default on or off
     * @param invertEN To determine whether EN output is inverted, i.e. if writing the pin HIGH would cause the converter to turn off
     * @param HighResistor Resistance value of pontential divider resistor connected to the top side
     * @param LowResistor Resistance value of potential divider resistor connected to the low side
     */
    
    SiC43x(uint8_t PGood, uint8_t EN, uint8_t VRead, bool defaultEN = 0, bool invertEN = 0) : 
                        _PGoodPin(PGood),
                        _ENPin(EN),
                        _VReadPin(VRead){};
    
    
    void setup(){
        pinMode(_PGoodPin, INPUT);
        pinMode(_ENPin, OUTPUT);
        setEN(_defaultEN);
    };

    /**
     * @brief Method enables and disables buck converter chip based on level param and invertEN attribute
     * 
     * @param Bucklevel Desired status of the buck, true - enabled; false - disabled.
     */
    void setEN(bool Bucklevel){
        bool pinLevel = _invertEN + Bucklevel;
        digitalWrite(_ENPin, pinLevel);
    };

    void update(){
        OutputV = (float) analogRead(_VReadPin) / (float) ADCMax;
    };

    float getOutputV(){return OutputV;};

private:

    float OutputV;

    //Pin Definitions
    uint8_t _PGoodPin;
    uint8_t _ENPin;
    uint8_t _VReadPin;

    //Potential Divider setup. Default is no divider.
    float Resistor1 = 1;
    float Resistor2 = 1;

    bool _defaultEN = 0;
    bool _invertEN = 0;
    
    static constexpr int ADCMax = 4095;

};
