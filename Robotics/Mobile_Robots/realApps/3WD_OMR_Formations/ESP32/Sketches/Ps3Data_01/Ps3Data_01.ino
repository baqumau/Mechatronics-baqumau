#include <Ps3Controller.h>
#include <string.h>
#include <stdio.h>

char analog_01[12]; 
uint8_t new_mac[8] = {0xc0,0x14,0x3d,0x63,0x9e,0xca};

void setup()
{
    Serial.begin(115200);
    ps3SetBluetoothMacAddress(new_mac);
    Ps3.begin("c0:14:3d:63:9e:ca");
    Serial.println("Ready.");
}

void loop()
{
    if(Ps3.isConnected()){

        if( Ps3.data.button.cross ){
            Serial.println("Pressing the cross button");
        }

        if( Ps3.data.button.square ){
            Serial.println("Pressing the square button");
        }

        if( Ps3.data.button.triangle ){
            Serial.println("Pressing the triangle button");
        }

        if( Ps3.data.button.circle ){
            Serial.println("Pressing the circle button");
        }

        sprintf(analog_01,"%i,%i;\n",Ps3.data.analog.stick.lx,Ps3.data.analog.stick.ly);
        Serial.print(analog_01);
    }
}
