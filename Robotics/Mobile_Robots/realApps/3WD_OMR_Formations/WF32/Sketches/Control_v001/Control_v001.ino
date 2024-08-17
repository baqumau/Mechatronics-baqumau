/* This program test the use of timer 5 within an interrupt.*/
// ChipKit WF32 works to 80 Mhz...
//---------------------------------------------------------------------------------------------------------------
// Defining mathematical values:
#define _USE_MATH_DEFINES
// Defining configuration values:
#define prescaler 64                                                    // Prescaler for the ticks.
#define freq_hz 25                                                      // Frequency for instructions execution.
#define ticks_per_second 80000000                                       // Ticks of machine's clock.
#define final_iteration 250                                             // Final iteration of program execution.
#define NOP __asm__ __volatile__ ("nop\n\t")                            // Nop instruction (asm).
//---------------------------------------------------------------------------------------------------------------
// Including libraries to the program:
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <SD.h>
//---------------------------------------------------------------------------------------------------------------
// Creating a file:
File baqumau;
// Default SD chip select for ChipKit WF32 devices:
const int chipSelect_SD_default = 51;                                   // Selecting the correct pin for ChipKit WF32.
const int chipSelect_SD = chipSelect_SD_default;
//---------------------------------------------------------------------------------------------------------------
// Defining the variables used in this sketch:
int const buffer = 100;                                                 // buffer length.
int Ibuff = 0x00;                                                       // Index: next char in cbuff.
int flagcommand_1;                                                      // Available command flag 1.
int flagcommand_2;                                                      // Available command flag 2.
int flagcommand_3;                                                      // Available command flag 3.
int identifier;                                                         // Command identifier in UART communication.
uint32_t counter_4 = 0;                                                 // Interrupts counter (Timer 4).
uint32_t counter_5 = 0;                                                 // Interrupts counter (Timer 5).
uint32_t iterations = 0;                                                // Iterations counter in the program.
uint32_t matlab_counter = 0;                                            // Variable to save the external counter by MATLAB.
char dataO[10], dataP[10], dataQ[10], dataR[10], dataS[10];             // Character vectors.
char dataT[10], dataU[10], dataV[10], dataW[10], dataX[10];             // Character vectors.
char chain[buffer];                                                     // Reception buffer.
char caracter;                                                          // Variable to save received character by UART module.
char cmd[buffer];                                                       // Variable to save received data by UART module.
char measurements[30];                                                  // Variable to arrange the measured variables.
float tim = 0;                                                          // Execution time (t) in the application.
float x_tim = 0;                                                        // Variable to save the received function x(t).
//---------------------------------------------------------------------------------------------------------------
// Timer 4 interrupt (25 Hz):
void __attribute__((interrupt)) Timer4Handler(){
  IFS0CLR = 0x00010000;                                                 // Clear the Timer 4 interrupt status flag.
  counter_4++;                                                          // Increasing the counter.
  iterations++;                                                         // Increasing execution iterations.
  if(counter_4 == 25){
    digitalWrite(PIN_LED4,HIGH);                                        // Turn led 4 on (1 second).
  }
  else if(counter_4 == 50){
    counter_4 = 0;                                                      // Reset counter.
    digitalWrite(PIN_LED4,LOW);                                         // Turn led 4 off (1 second).
  }
  if(flagcommand_2 == 0 && iterations <= final_iteration){
    Serial.println(":100");                                             // Command sent to MATLAB to start or continue with linked streaming.
    flagcommand_2 = 1;                                                  // Setting flag to one (finish to send by UART).
  }
  else if(flagcommand_2 == 0 && iterations > final_iteration){
    Serial.println(":10");                                              // Finalization command for MATLAB streaming.
    flagcommand_2 = 1;                                                  // Setting flag 2 to one (finish to send by UART).
  }
  while(Serial.available() > 0){
    caracter = 0x00;                                                    // Clear character.
    caracter = Serial.read();                                           // Last received character.
    add_2_cbuff(caracter);                                              // Add character to buffer.
  }
  if(flagcommand_1 == 1){
    string2float();                                                     // Call string2float() function. 
    init_cbuff();                                                       // Clear buffer.
    flagcommand_2 = 0;                                                  // Setting flag 2 to zero (resume to send by UART).
  }
}
//---------------------------------------------------------------------------------------------------------------
// Configuring Timer 4 to generate timer interrupts:
void start_timer_4_interrupt(){
  uint32_t period = ticks_per_second/(prescaler*freq_hz);               // Setting interrupt period calculated in ticks.
  T4CON = 0x0;                                                          // Stop 16-bit Timer 4 and clear control register.
  T4CONSET = 0x0060;                                                    // Enable 16-bit mode, prescaler at 1:64.
  TMR4 = 0x0;                                                           // Clear timer register.
  PR4 = period;                                                         // Setting the period on Timer 4.
  setIntVector(_TIMER_4_VECTOR,Timer4Handler);                          // Setting interruption vector for Timer 4.
  IPC4SET = 0x0000001E;                                                 // Set interrupt priority of Timer 4 to nivel 7, sub-priority of Timer 4 to nivel 2.
  IFS0CLR = 0x00010000;                                                 // Clear the Timer 4 interrupt status flag.
  IEC0SET = 0x00010000;                                                 // Enable Timer 4 interrupt.
  T4CONSET = 0x8000;                                                    // Start the Timer 4.
}
//---------------------------------------------------------------------------------------------------------------
// Timer 5 interrupt (25 Hz):
void __attribute__((interrupt)) Timer5Handler(){
  IFS0CLR = 0x00100000;                                                 // Clear the Timer 5 interrupt status flag.
  counter_5++;                                                          // Increasing the counter.
  if(counter_5 == 25){
    digitalWrite(PIN_LED5,HIGH);                                        // Turn led 5 on 1 second.
  }
  else if(counter_5 == 50){
    counter_5 = 0;                                                      // Reset counter.
    digitalWrite(PIN_LED5,LOW);                                         // Turn led 5 off 1 second.
  }
  flagcommand_3 = 1;                                                    // Setting flag to one (finish to send by UART).
}
//---------------------------------------------------------------------------------------------------------------
// Configuring Timer 5 to generate timer interrupts:
void start_timer_5_interrupt(){
  uint32_t period = ticks_per_second/(prescaler*freq_hz);               // Setting interrupt period calculated in ticks.
  T5CON = 0x0;                                                          // Stop 16-bit Timer 5 and clear control register.
  T5CONSET = 0x0060;                                                    // Enable 16-bit mode, prescaler at 1:64.
  TMR5 = 0x0;                                                           // Clear timer register.
  PR5 = period;                                                         // Setting the period on Timer 5.
  setIntVector(_TIMER_5_VECTOR,Timer5Handler);                          // Setting interruption vector for Timer 5.
  IPC5SET = 0x0000001F;                                                 // Set interrupt priority of Timer 5 to nivel 7, sub-priority of Timer 5 to nivel 3.
  IFS0CLR = 0x00100000;                                                 // Clear the Timer 5 interrupt status flag.
  IEC0SET = 0x00100000;                                                 // Enable Timer 5 interrupt.
  T5CONSET = 0x8000;                                                    // Start the Timer 5.
}
//---------------------------------------------------------------------------------------------------------------
// initializing buffer:
void init_cbuff(void){
  int i;
  flagcommand_1 = 0;                                                    // Setting flag 1 to zero.
  for(i = 0; i < buffer; i++){                                          // Bucle that set to 0 all.
    chain[i] = 0x00;                                                    // characters in buffer.
  }
  Ibuff = 0x00;                                                         // initialize the index.
  Serial.flush();                                                       // clears the buffer once all outgoing characters have been sent.
}
//---------------------------------------------------------------------------------------------------------------
// Adding characters to buffer:
void add_2_cbuff(char c){
  switch(c){
    case 0x0D:                                                          // Line Feed 1 -> Enable flag.
    flagcommand_1 = 1;                                                  // Setting flag 1 to one.
    break;
    case 0x0A:                                                          // Line Feed 2 -> Enable flag.
    flagcommand_1 = 1;                                                  // Setting flag 1 to one.
    break;
    case 0x08:                                                          // Del -> Delete last character from buffer.
    if(Ibuff > 0) chain[--Ibuff] = 0x00;                                // Backspace.
    break;
    default:                                                            // Add received character to buffer.
    chain[Ibuff++] = c;
  }
}
//---------------------------------------------------------------------------------------------------------------
// Changing character string to floating numbers:
void string2float(){
  int i = 0, j = 0, q = 0, r = 0, s = 0, t = 0;                         // Index variables.
  int u = 0, v = 0, w = 0, x = 0, y = 0, z = 0;                         // Index variables.
  // separating received data from YEI sensor:
  for(i=0;i<Ibuff;i++){
    if(chain[i]==','){
      j++;
    }
    else if(chain[i]!=':' && chain[i]!=',' && j==0){
      dataO[q++]=chain[i];
    }
    else if(chain[i]!=',' && j==1){
      dataP[r++]=chain[i];
    }
    else if(chain[i]!=',' && j==2){
      dataQ[s++]=chain[i];
    }
    else if(chain[i]!=',' && j==3){
      dataR[t++]=chain[i];
    }
    else if(chain[i]!=',' && j==4){
      dataS[u++]=chain[i];
    }
    else if(chain[i]!=',' && j==5){
      dataT[v++]=chain[i];
    }
    else if(chain[i]!=',' && j==6){
      dataU[w++]=chain[i];
    }
    else if(chain[i]!=',' && j==7){
      dataV[x++]=chain[i];
    }
    else if(chain[i]!=',' && j==8){
      dataW[y++]=chain[i];
    }
    else if(chain[i]!=',' && j==9){
      dataX[z++]=chain[i];
    }
    else{
      NOP;                                                              // No operation.
    }
  }
  // Translating values to floating and integer numbers:
  identifier = atoi(dataO);                                             // Saving the UART command indentifier.
  tim = atof(dataP);                                                    // Saving the time execution.
  x_tim = atof(dataQ);                                                  // Saving the function x(t).
  matlab_counter = atoi(dataR);                                         // Saving the external MATLAB counter.
}
//---------------------------------------------------------------------------------------------------------------
// Main setup instructions:
void setup(){
  pinMode(PIN_LED3,OUTPUT);                                             // Configuring LED 3 as output.
  pinMode(PIN_LED4,OUTPUT);                                             // Configuring LED 4 as output.
  pinMode(PIN_LED5,OUTPUT);                                             // Configuring LED 5 as output.
  pinMode(PIN_LED6,OUTPUT);                                             // Configuring LED 5 as output.
  digitalWrite(PIN_LED3,LOW);                                           // Turn led 3 off.
  digitalWrite(PIN_LED4,LOW);                                           // Turn led 4 off.
  digitalWrite(PIN_LED5,LOW);                                           // Turn led 5 off.
  digitalWrite(PIN_LED6,LOW);                                           // Turn led 6 off.
  //-------------------------------------------------------------------------------------------------------------
  // Configuring serial ports (UARTs):
  Serial.begin(2000000);                                                // Enable serial port No. 1.
  init_cbuff();                                                         // Clear buffer.
  //-------------------------------------------------------------------------------------------------------------
  // Configuring SD Card:
  pinMode(chipSelect_SD_default,OUTPUT);
  digitalWrite(chipSelect_SD_default,HIGH);
  // Make sure the default chip select pin is set to so that shields that have a device that use the default CS pin
  // that are connected to the SPI bus do not hold drive bus...
  pinMode(chipSelect_SD,OUTPUT);
  digitalWrite(chipSelect_SD,HIGH);
  // we’ll use the initialization code from the utility libraries:
  // since we’re just testing if the card is working..!
  if(!SD.begin(chipSelect_SD)){
    Serial.println("initialization failed. Things to check:");
    Serial.println("* is a card is inserted?");
    Serial.println("* Is your wiring correct?");
    Serial.println("* did you change the chipSelect pin to match your shield or module?");
    return;
  }
  else{
    Serial.println("Wiring is correct and a card is present.");
  }
  // Delete the file:
  Serial.println("Removing File .txt...");
  SD.remove("Nov0923a.txt");
  Serial.println("Done...");
  // Open a new file. Note that only one file can be open at a time, so you have to close this one before opening another.
  // Name of new file must be defined only with eight characters.
  Serial.println("Nov0923a.txt...");
  baqumau = SD.open("Nov0923a.txt",FILE_WRITE);                         // Open the file for start to write.
  baqumau.println("measurements = [");                                  // Writing data in microSD.
  Serial.println("Done...");
  //-------------------------------------------------------------------------------------------------------------
  // Starting the program sample time:
  flagcommand_2 = 0;                                                    // Setting flag 2 to zero.
  start_timer_4_interrupt();                                            // Start Timer 4 interrupt (Saving data).
  start_timer_5_interrupt();                                            // Start Timer 5 interrupt (Control loop).
  delayMicroseconds(100);                                               // 100 microseconds delay.
}
//---------------------------------------------------------------------------------------------------------------
// Main loop instructions:
void loop(){
  if(iterations <= final_iteration && flagcommand_3 == 1){
    // Arranging data into the measurements vector:
    sprintf(measurements,"%1.4f,%1.4f,%u,%u;\n\r",tim,x_tim,matlab_counter,iterations);
    baqumau.println(measurements);                                      // Writing data in microSD.
    digitalWrite(PIN_LED3,HIGH);                                        // Turn led 3 on.
    flagcommand_3 = 0;                                                  // Setting flag 3 to zero.
  }
  else if(iterations > final_iteration && baqumau){
    baqumau.println("];");                                              // Writing on microSD.
    baqumau.close();                                                    // Closing the write file.
    digitalWrite(PIN_LED3,LOW);                                         // Turn led 3 off for show finish of writing on microSD.
    Serial.println(":10");                                              // Finalization command for MATLAB streaming.
  }
  else NOP;                                                             // No operation.
}
//---------------------------------------------------------------------------------------------------------------
