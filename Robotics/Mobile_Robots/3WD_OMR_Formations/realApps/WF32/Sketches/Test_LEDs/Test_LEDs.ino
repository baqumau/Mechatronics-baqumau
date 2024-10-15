/* This program test the use LEDs 3, 4, 5 and 6.*/

//---------------------------------------------------------------------------------------------------------------
void setup(){
  pinMode(PIN_LED6,OUTPUT);                                 // Configuring LED 6 as output.
  pinMode(PIN_LED5,OUTPUT);                                 // Configuring LED 5 as output.
  pinMode(PIN_LED4,OUTPUT);                                 // Configuring LED 4 as output.
  pinMode(PIN_LED3,OUTPUT);                                 // Configuring LED 3 as output.
}
//---------------------------------------------------------------------------------------------------------------
void loop(){
  digitalWrite(PIN_LED6,HIGH);
  digitalWrite(PIN_LED3,LOW);
  delay(1000);
  digitalWrite(PIN_LED5,HIGH);
  digitalWrite(PIN_LED6,LOW);
  delay(1000);
  digitalWrite(PIN_LED4,HIGH);
  digitalWrite(PIN_LED5,LOW);
  delay(1000);
  digitalWrite(PIN_LED3,HIGH);
  digitalWrite(PIN_LED4,LOW);
  delay(1000);
  // asm("nop");
}
//---------------------------------------------------------------------------------------------------------------
