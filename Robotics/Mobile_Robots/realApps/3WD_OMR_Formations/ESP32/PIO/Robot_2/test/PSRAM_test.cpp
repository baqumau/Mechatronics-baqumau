#include <Arduino.h>
//----------------------------------------------------------------------------------------------
void setup(){
    Serial.begin(115200);
    while(!Serial){
        ; // Wait for serial port to connect.
    }
    
    Serial.printf("Free heap size: %d bytes\n", ESP.getFreeHeap());
    // Allocate a large array to test PSRAM usage:
    size_t arraySize = 1024 * 1024; // 1MB
    uint8_t* largeArray = (uint8_t*) malloc(arraySize);
  
    if(largeArray){
        Serial.println("Successfully allocated memory in PSRAM!");
        Serial.printf("Free heap size after allocation: %d bytes\n", ESP.getFreeHeap());
        free(largeArray);
    }
    else Serial.println("Failed to allocate memory.");
}
//----------------------------------------------------------------------------------------------
void loop(){
    // Your code here:
}
