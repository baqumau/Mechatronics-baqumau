// Including libraries to execute the programmed control functions:
#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include <math.h>
#include <float.h>
#include "3WD_OMRs_Controllers.h"
//---------------------------------------------------------------------------------------------------------------
// Developing control functions:
//---------------------------------------------------------------------------------------------------------------
// Function to determine the sign of an integer number:
int sign(int num){
    return (num > 0) - (num < 0);                                                           // Return 1 if num is positive; -1 if num is negative; or 0 if num is zero.
}
//---------------------------------------------------------------------------------------------------------------
// Function to determine the sign of a floating-point number:
int signf(double num){
    if(num > 0.0) return 1;                                                                 // Return 1 if num is positive.
    else if(num < 0.0) return -1;                                                           // Return -1 if num is negative.
    else return 0;                                                                          // Return 0 if num is zero.
}
//---------------------------------------------------------------------------------------------------------------
// Function to round a floating-point number to three decimal places:
float roundToThreeDecimals(float num){
    return roundf(num*1000.0f)/1000.0f;                                                     // Return a fixed-point number with three decimals.
}
//---------------------------------------------------------------------------------------------------------------
// Function to round a floating-point number to four decimal places:
float roundToFourDecimals(float num){
    return roundf(num*10000.0f)/10000.0f;                                                   // Return a fixed-point number with four decimals.
}
//---------------------------------------------------------------------------------------------------------------
// Function to saturate a signal between predefined minimum and maximum values:
float saturation(float signal_k, float minValue, float maxValue){
    if(signal_k > maxValue) return maxValue;                                                // Output y_k equals to maximum value of saturation function.
    else if(signal_k < minValue) return minValue;                                           // Output y_k equals to minimum value of saturation function.
    else return signal_k;                                                                   // Output y_k equals to input signal_k within saturation function.
}
//---------------------------------------------------------------------------------------------------------------
// Clutch function to attenuate high-peaking phenomena during the initial seconds of runtime:
float clutch(float signal_k, float t_cl, float sampleTime, int iterations){
    if((float)(iterations)*sampleTime < t_cl){
        // Compute clutch function at k instant:
        return signal_k*(1.0f - cos((float)(M_PI)*(float)(iterations)*sampleTime/t_cl))/2.0f;
    }
    else return signal_k;                                                                   // Final value of clutch function.
}
//---------------------------------------------------------------------------------------------------------------
// Creating matrix structure for floating-point numbers array:
bool allocateMatrix(Matrix *MAT, int rows, int cols){
    int i, j;                                                                               // Declaration of i and j as integer variables.
    MAT->rows = rows;                                                                       // Assign value for size of matrix rows.
    MAT->cols = cols;                                                                       // Assign value for size of matrix columns.
    // Allocate memory for the row pointers:
    MAT->data = (float **)malloc(rows * sizeof(float *));
    if(MAT->data == NULL){
        return false;                                                                       // Memory allocation failed.
    }
    // Allocate memory for each row:
    for(i = 0; i < rows; i++){
        MAT->data[i] = (float *)malloc(cols * sizeof(float));
        if(MAT->data[i] == NULL){
            // If allocation fails, free any already allocated memory:
            for(j = 0; j < i; j++){
                free(MAT->data[j]);
            }
            free(MAT->data);
            return false;                                                                   // Memory allocation failed.
        }
    }
    return true;                                                                            // Memory allocation successful.
}
//---------------------------------------------------------------------------------------------------------------
// Function to free memory for the matrix in the structure:
void freeMatrix(Matrix *MAT){
    int i;                                                                                  // Declaration of i as integer variable.
    for(i = 0; i < MAT->rows; i++){
        free(MAT->data[i]);                                                                 // Liberate space for MAT structure.
    }
    free(MAT->data);
    MAT->rows = 0;                                                                          // Set rows size of MAT to zero.
    MAT->cols = 0;                                                                          // Set cols size of MAT to zero.
    MAT->data = NULL;                                                                       // Data of MAT to empty.
}
//---------------------------------------------------------------------------------------------------------------
// Function to allocate memory for the matrix in the structure (string-format elements array):
bool allocateStMatrix(St_Matrix *SMAT, int elem_size, int buff_size){
    int i, j;                                                                               // Declaration of i and j as integer variables.
    SMAT->bufferSize = buff_size;                                                           // Assign value for the buffer size or matrix columns.
    SMAT->elementSize = elem_size;                                                          // Assign value for size of elements in the structure, or matrix rows.
    // Allocate memory for the element pointers:
    SMAT->data = (char **)malloc(elem_size * sizeof(char *));
    if(SMAT->data == NULL){
        return false;                                                                       // Memory allocation failed.
    }
    // Allocate memory for each element:
    for(i = 0; i < elem_size; i++){
        SMAT->data[i] = (char *)malloc(buff_size * sizeof(char));
        if(SMAT->data[i] == NULL){
            // If allocation fails, free any already allocated memory:
            for(j = 0; j < i; j++){
                free(SMAT->data[j]);
            }
            free(SMAT->data);
            return false;                                                                   // Memory allocation failed.
        }
    }
    return true;                                                                            // Memory allocation successful.
}
//---------------------------------------------------------------------------------------------------------------
// Function to free memory for the string matrix in the structure:
void freeStMatrix(St_Matrix *SMAT){
    int i;                                                                                  // Declaration of i as integer variable.
    for(i = 0; i < SMAT->elementSize; i++){
        free(SMAT->data[i]);                                                                // Liberate space for SMAT structure.
    }
    free(SMAT->data);
    SMAT->elementSize = 0;                                                                  // Set elements size of SMAT to zero.
    SMAT->bufferSize = 0;                                                                   // Set buffer size of SMAT to zero.
    SMAT->data = NULL;                                                                      // Data of SMAT to empty.
}
//---------------------------------------------------------------------------------------------------------------
// Function to initialize char-type data-matrix buffer:
void initStMatrix(St_Matrix *SMAT){
    int i, j;                                                                               // Declaration of i and j as integer variables.
    for(i = 0; i < SMAT->elementSize; i++){                                                 // Bucle that set to 0 all.
        for(j = 0; j < SMAT->bufferSize; j++){
            SMAT->data[i][j] = 0x00;                                                        // Clear character in the jth position of ith element.
        }
    }
}
//---------------------------------------------------------------------------------------------------------------
// Creating integration structure:
Integrator createIntegrator(int inputSize, float sampleTime, float gain){
    // Configuring the members of the Integrator structure:
    Integrator INT;                                                                         // Creates integrator structure.
    INT.s_in = inputSize;                                                                   // Assign value of inputSize to the member s_in of the INT structure.
    INT.s_out = inputSize;                                                                  // Assign value of outputSize to the member s_out of the INT structure.
    INT.s_state = 2*inputSize;                                                              // Assign value of statetSize to the member s_state of the INT structure.
    INT.Ts = sampleTime;                                                                    // Assign value of sampleTime to the member TS of the INT structure.
    INT.gain = gain;                                                                        // Assign a gain value to the integrator.
    INT.X_0 = (float *)malloc(2*inputSize * sizeof(float));                                 // Allocate memory for the initial state vector x(0) = [x1(0) x2(0)]'.
    INT.x1_k = (float *)malloc(inputSize * sizeof(float));                                  // Allocate memory for the input vector u(k) = x1(k).
    INT.x1_kp1 = (float *)malloc(inputSize * sizeof(float));                                // Allocate memory for the input vector u(k + 1) = x1(k + 1).
    INT.x2_k = (float *)malloc(inputSize * sizeof(float));                                  // Allocate memory for the state vector x2(k).
    INT.x2_kp1 = (float *)malloc(inputSize * sizeof(float));                                // Allocate memory for the state vector x2(k + 1).
    INT.y_k = (float *)malloc(inputSize * sizeof(float));                                   // Allocate memory for the output vector y(k).
    INT.flag = (bool *)malloc(sizeof(bool));                                                // Allocate memory for flag of the structure defined as INT (disable or enable integrator).
    INT.flag[0] = false;                                                                    // Setting INT flag to false.
    return INT;
}
//---------------------------------------------------------------------------------------------------------------
// Adding initial conditions to INT Integration structure:
void initIntegrator(Integrator INT, float x_0[]){
    int i;                                                                                  // Declaration of i as integer variable.
    for(i = 0; i < INT.s_state; i++){
        INT.X_0[i] = x_0[i];                                                                // Saving initial conditions data for x(0) within INT structure.
    }
    for(i = 0; i < INT.s_in; i++){
        INT.x1_k[i] = 0.0f;                                                                 // Saving initial conditions data for delayed input signal u(k) within INT structure as x1(k) = x1(0) = 0.0.
        INT.x1_kp1[i] = x_0[i];                                                             // Saving initial input signal u(k + 1) within INT structure as x1(k + 1) = x1(0).
        INT.x2_k[i] = x_0[i+INT.s_in];                                                      // Saving initial integration state within INT structure as x2(k) = x2(0).
        INT.x2_kp1[i] = (INT.Ts/2.0f)*(INT.x1_kp1[i] + INT.x1_k[i]) + INT.x2_k[i];          // Integration operator as x2(k + 1).
        // Updating output y(k):
        INT.y_k[i] = INT.gain*INT.x2_k[i];                                                  // Saving initial conditions data for y_k within INT structure.
    }
    INT.flag[0] = true;                                                                     // Flag settled to true, which enables integration function within INT structure.
}
//---------------------------------------------------------------------------------------------------------------
// Integration function:
void Integration(Integrator INT, float input[]){
    int i;                                                                                  // Declaration of i as integer variable.
    // Execute integration algorithm:
    if(INT.flag[0]){
        for(i = 0; i < INT.s_in; i++){
            INT.x1_k[i] = INT.x1_kp1[i];                                                    // Updates the delayed input signal u(k - 1) as x1(k) for INT integration structure.
            INT.x1_kp1[i] = input[i];                                                       // Get input signal u(k) as x1(k + 1), for INT integration structure.
            INT.x2_k[i] = INT.x2_kp1[i];                                                    // Updates the delayed state x2(k), corresponding to output of INT integration structure.
            INT.x2_kp1[i] = (INT.Ts/2.0f)*(INT.x1_kp1[i] + INT.x1_k[i]) + INT.x2_k[i];      // Integration operator as x2(k + 1).
            // Updating integration output y(k):
            INT.y_k[i] = INT.gain*INT.x2_k[i];                                              // Determines the output of INT integration structure.
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Creating a simple differentiation structure:
simpleDifferentiator createSimpleDifferentiator(int inputSize, float sampleTime, float gain){
    // Configuring the members of the differentiation structure:
    simpleDifferentiator SDIF;                                                              // Creates differentiation structure.
    SDIF.s_in = inputSize;                                                                  // Assign value of inputSize to the member s_in of the SDIF structure.
    SDIF.s_out = inputSize;                                                                 // Assign value of outputSize to the member s_out of the SDIF structure.
    SDIF.s_state = 2*inputSize;                                                             // Assign value of statetSize to the member s_state of the SDIF structure.
    SDIF.Ts = sampleTime;                                                                   // Assign value of sampleTime to the member TS of the SDIF structure.
    SDIF.gain = gain;                                                                       // Assign a gain value to this differentiation structure.
    SDIF.X_0 = (float *)malloc(2*inputSize * sizeof(float));                                // Allocate memory for the initial state vector x(0) = [x1(0) x2(0)]'.
    SDIF.x1_k = (float *)malloc(inputSize * sizeof(float));                                 // Allocate memory for the input vector u(k) = x1(k).
    SDIF.x1_kp1 = (float *)malloc(inputSize * sizeof(float));                               // Allocate memory for the input vector u(k + 1) = x1(k + 1).
    SDIF.x2_k = (float *)malloc(inputSize * sizeof(float));                                 // Allocate memory for the state vector x2(k).
    SDIF.x2_kp1 = (float *)malloc(inputSize * sizeof(float));                               // Allocate memory for the state vector x2(k + 1).
    SDIF.y_k = (float *)malloc(inputSize * sizeof(float));                                  // Allocate memory for the output vector y(k).
    SDIF.flag = (bool *)malloc(sizeof(bool));                                               // Allocate memory for flag of the structure defined as SDIF (disable or enable differentiator).
    SDIF.flag[0] = false;                                                                   // Setting SDIF flag to false.
    return SDIF;
}
//---------------------------------------------------------------------------------------------------------------
// Initialization function for simple differentiation:
void initSimpleDifferentiator(simpleDifferentiator SDIF, float x_0[]){
    int i;                                                                                  // Declaration of i as integer variable.
    for(i = 0; i < SDIF.s_state; i++){
        SDIF.X_0[i] = x_0[i];                                                               // Saving initial conditions data for x(0) within SDIF structure.
    }
    for(i = 0; i < SDIF.s_in; i++){
        SDIF.x1_k[i] = x_0[i];                                                              // Saving initial conditions data for delayed input signal u(k) within SDIF structure as x1(k) = x1(0).
        SDIF.x1_kp1[i] = SDIF.Ts*x_0[i+SDIF.s_in] + x_0[i];                                 // Saving prediction of initial input signal u(k + 1) within SDIF structure as x1(k + 1).
        SDIF.x2_k[i] = x_0[i+SDIF.s_in];                                                    // Saving initial differentiation state within SDIF structure as x2(k) = x2(0).
        // Computing the differentiation operator as x2(k + 1).
        SDIF.x2_kp1[i] = (SDIF.x1_kp1[i] - SDIF.x1_k[i])*(1.0f/SDIF.Ts);
        // Updating output y(k):
        SDIF.y_k[i] = SDIF.gain*SDIF.x2_k[i];                                               // Saving initial conditions data for y_k within SDIF structure.
    }
    SDIF.flag[0] = true;                                                                    // Flag settled to true, which enables differentiation function defined within SDIF structure.
}
//---------------------------------------------------------------------------------------------------------------
// Simple differentiation function:
void simpleDifferentiation(simpleDifferentiator SDIF, float input[]){
    int i;                                                                                  // Declaration of i as integer variable.
    // Execute differentiation algorithm:
    if(SDIF.flag[0]){
        for(i = 0; i < SDIF.s_in; i++){
            SDIF.x1_k[i] = SDIF.x1_kp1[i];                                                  // Updates the delayed input signal u(k - 1) as x1(k) for differentiator SDIF.
            SDIF.x1_kp1[i] = input[i];                                                      // Get input signal u(k) as x1(k + 1), for differentiator SDIF.
            SDIF.x2_k[i] = SDIF.x2_kp1[i];                                                  // Updates the delayed state x2(k), corresponding to output of differentiator SDIF.
            // Computing the differentiation operator as x2(k + 1).
            SDIF.x2_kp1[i] = (SDIF.x1_kp1[i] - SDIF.x1_k[i])*(1.0f/SDIF.Ts);
            // Updating differentiated output y(k):
            SDIF.y_k[i] = SDIF.gain*SDIF.x2_k[i];                                           // Determines the output y(k) = x2(k), of differentator SDIF.
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Creating a differentiation structure:
Differentiator createDifferentiator(int inputSize, float sampleTime, float gain, float filter_coeff){
    // Configuring the members of the differentiation structure:
    Differentiator DIF;                                                                     // Creates differentiation structure.
    DIF.s_in = inputSize;                                                                   // Assign value of inputSize to the member s_in of the DIF structure.
    DIF.s_out = inputSize;                                                                  // Assign value of outputSize to the member s_out of the DIF structure.
    DIF.s_state = 2*inputSize;                                                              // Assign value of statetSize to the member s_state of the DIF structure.
    DIF.Ts = sampleTime;                                                                    // Assign value of sampleTime to the member TS of the DIF structure.
    DIF.gain = gain;                                                                        // Assign a gain value to this differentiation structure.
    DIF.fc = filter_coeff;                                                                  // Assign a filter coefficient for achieving a differentiation smooth function.
    //-----------------------------------------------
    DIF.X_0 = (float *)malloc(2*inputSize * sizeof(float));                                 // Allocate memory for the initial state vector x(0) = [x1(0) x2(0)]'.
    DIF.x1_k = (float *)malloc(inputSize * sizeof(float));                                  // Allocate memory for the input vector u(k) = x1(k).
    DIF.x1_kp1 = (float *)malloc(inputSize * sizeof(float));                                // Allocate memory for the input vector u(k + 1) = x1(k + 1).
    DIF.x2_k = (float *)malloc(inputSize * sizeof(float));                                  // Allocate memory for the state vector x2(k).
    DIF.x2_kp1 = (float *)malloc(inputSize * sizeof(float));                                // Allocate memory for the state vector x2(k + 1).
    DIF.y_k = (float *)malloc(inputSize * sizeof(float));                                   // Allocate memory for the output vector y(k).
    DIF.flag = (bool *)malloc(sizeof(bool));                                                // Allocate memory for flag of the structure defined as DIF (disable or enable differentiator).
    //-----------------------------------------------
    DIF.flag[0] = false;                                                                    // Setting DIF flag to false.
    return DIF;
}
//---------------------------------------------------------------------------------------------------------------
// Adding initial conditions to DIF differentiation structure:
void initDifferentiator(Differentiator DIF, float x_0[]){
    int i;                                                                                  // Declaration of i as integer variable.
    float OP1 = DIF.fc*DIF.Ts + 2.0f;                                                       // Precompute repetitive operation 1.
    float OP2 = (2.0f*DIF.fc)/OP1;                                                          // Precompute repetitive operation 2.
    float OP3 = (DIF.fc*DIF.Ts - 2.0f)/OP1;                                                 // Precompute repetitive operation 3.
    for(i = 0; i < DIF.s_state; i++){
        DIF.X_0[i] = x_0[i];                                                                // Saving initial conditions data for x(0) within DIF structure.
    }
    for(i = 0; i < DIF.s_in; i++){
        DIF.x1_k[i] = x_0[i];                                                               // Saving initial conditions data for delayed input signal u(k) within DIF structure as x1(k) = x1(0).
        DIF.x1_kp1[i] = DIF.Ts*x_0[i+DIF.s_in] + x_0[i];                                    // Saving prediction of initial input signal u(k + 1) within DIF structure as x1(k + 1).
        DIF.x2_k[i] = x_0[i+DIF.s_in];                                                      // Saving initial differentiation state within DIF structure as x2(k) = x2(0).
        // Computing the differentiation operator as x2(k + 1).
        DIF.x2_kp1[i] = OP2*(DIF.x1_kp1[i] - DIF.x1_k[i]) - OP3*DIF.x2_k[i];
        // Updating output y(k):
        DIF.y_k[i] = DIF.gain*DIF.x2_k[i];                                                  // Saving initial conditions data for y_k within DIF structure.
    }
    DIF.flag[0] = true;                                                                     // Flag settled to true, which enables differentiation function defined within DIF structure.
}
//---------------------------------------------------------------------------------------------------------------
// Differentiation function:
void Differentiation(Differentiator DIF, float input[]){
    int i;                                                                                  // Declaration of i as integer variable.
    // Execute differentiation algorithm:
    if(DIF.flag[0]){
        float OP1 = DIF.fc*DIF.Ts + 2.0f;                                                   // Precompute repetitive operation 1.
        float OP2 = (2.0f*DIF.fc)/OP1;                                                      // Precompute repetitive operation 2.
        float OP3 = (DIF.fc*DIF.Ts - 2.0f)/OP1;                                             // Precompute repetitive operation 3.
        for(i = 0; i < DIF.s_in; i++){
            DIF.x1_k[i] = DIF.x1_kp1[i];                                                    // Updates the delayed input signal u(k - 1) as x1(k) for differentiator DIF.
            DIF.x1_kp1[i] = input[i];                                                       // Get input signal u(k) as x1(k + 1), for differentiator DIF.
            DIF.x2_k[i] = DIF.x2_kp1[i];                                                    // Updates the delayed state x2(k), corresponding to output of differentiator DIF.
            // Computing the differentiation operator as x2(k + 1).
            DIF.x2_kp1[i] = OP2*(DIF.x1_kp1[i] - DIF.x1_k[i]) - OP3*DIF.x2_k[i];
            // Updating the differentiated output y(k):
            DIF.y_k[i] = DIF.gain*DIF.x2_k[i];                                              // Determines the output y(k) = x2(k), of differentator DIF.
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Creating HOSM-based differentiation structure:
HOSM_Differentiator createHOSMDifferentiator(int inputSize, float sampleTime, float per_gains[], float lip_const[]){
    int i, s = 3*inputSize;                                                                 // Declaration of i and s as integer variables.
    // Configuring the members of the differentiation structure:
    HOSM_Differentiator SMDIF;                                                              // Creates HOSM-based differentiation structure.
    SMDIF.s_in = inputSize;                                                                 // Assign value of inputSize to the member s_in of the SMDIF structure.
    SMDIF.s_out = s;                                                                        // Assign value of outputSize to the member s_out of the SMDIF structure.
    SMDIF.s_state = s;                                                                      // Assign value of statetSize to the member s_state of the SMDIF structure.
    SMDIF.Ts = sampleTime;                                                                  // Assign value of sampleTime to the member TS of the SMDIF structure.
    //-----------------------------------------------
    SMDIF.lambda = (float *)malloc(3 * sizeof(float));                                      // Allocate memory for the performance coefficients of this differentiator.
    SMDIF.Lip = (float *)malloc(inputSize * sizeof(float));                                 // Allocate memory for the Lipschitz design constants.
    SMDIF.X_0 = (float *)malloc(s * sizeof(float));                                         // Allocate memory for the initial state vector x(0) = [x1(0) x2(0) x3(0)]'.
    SMDIF.x1_k = (float *)malloc(inputSize * sizeof(float));                                // Allocate memory for the state vector x1(k).
    SMDIF.x1_kp1 = (float *)malloc(inputSize * sizeof(float));                              // Allocate memory for the state vector x1(k + 1).
    SMDIF.x2_k = (float *)malloc(inputSize * sizeof(float));                                // Allocate memory for the state vector x2(k).
    SMDIF.x2_kp1 = (float *)malloc(inputSize * sizeof(float));                              // Allocate memory for the state vector x2(k + 1).
    SMDIF.x3_k = (float *)malloc(inputSize * sizeof(float));                                // Allocate memory for the state vector x3(k).
    SMDIF.x3_kp1 = (float *)malloc(inputSize * sizeof(float));                              // Allocate memory for the state vector x3(k + 1).
    SMDIF.y_k = (float *)malloc(s * sizeof(float));                                         // Allocate memory for the output vector y(k).
    SMDIF.flag = (bool *)malloc(sizeof(bool));                                              // Allocate memory for flag of the structure defined as SMDIF (disable or enable differentiator).
    //-----------------------------------------------
    // Creating vector array for lambda and Lip:
    for(i = 0; i < 3; i++){
        SMDIF.lambda[i] = per_gains[i];                                                     // Assigning values to the gains vector lambda of SMDIF.
        SMDIF.Lip[i] = lip_const[i];                                                        // Assigning values to the gains vector Lip of SMDIF.
        SMDIF.Lip[i+3] = lip_const[i+3];                                                    // Assigning values to the gains vector Lip of SMDIF.
    }
    //-----------------------------------------------
    SMDIF.flag[0] = false;                                                                  // Setting SMDIF flag to false.
    return SMDIF;
}
//---------------------------------------------------------------------------------------------------------------
// Initialization function for HOSM-based differentiator:
void initHOSMDifferentiator(HOSM_Differentiator SMDIF, float x_0[]){
    int i;                                                                                  // Declaration of i as integer variable.
    for(i = 0; i < SMDIF.s_state; i++){
        SMDIF.X_0[i] = x_0[i];                                                              // Saving initial conditions data for x(0) within SMDIF structure.
    }
    for(i = 0; i < SMDIF.s_in; i++){
        SMDIF.x1_k[i] = x_0[i];                                                             // Saving initial conditions for x1(k) as x1(0) within SMDIF structure.
        SMDIF.x1_kp1[i] = SMDIF.Ts*x_0[i+SMDIF.s_in] + x_0[i];                              // Saving prediction of initial input signal u(k + 1) within SMDIF structure as x1(k + 1).
        SMDIF.x2_k[i] = x_0[i+SMDIF.s_in];                                                  // Saving initial differentiation state within SMDIF structure as x2(k) = x2(0).
        SMDIF.x2_kp1[i] = SMDIF.Ts*x_0[i+2*SMDIF.s_in] + x_0[i+SMDIF.s_in];                 // Saving prediction of differentiation state within DIF structure as x2(k + 1).
        SMDIF.x3_k[i] = x_0[i+2*SMDIF.s_in];                                                // Saving initial second differentiation state within SMDIF structure as x3(k) = x3(0).
        // Computing the 2nd-order differentiator operator as x3(k + 1):
        SMDIF.x3_kp1[i] = (SMDIF.x2_kp1[i] - SMDIF.x2_k[i])*2.0f/SMDIF.Ts - SMDIF.x3_k[i];
        // Updating output y(k):
        SMDIF.y_k[i] = SMDIF.x1_k[i];                                                       // Saving initial conditions data for output y_k within SMDIF structure.
        SMDIF.y_k[i+SMDIF.s_in] = SMDIF.x2_k[i];                                            // Saving initial conditions data for output y_k within SMDIF structure.
        SMDIF.y_k[i+2*SMDIF.s_in] = SMDIF.x3_k[i];                                          // Saving initial conditions data for output y_k within SMDIF structure.
    }
    SMDIF.flag[0] = true;                                                                   // Flag settled to true, which enables differentiation function defined as SMDIF.
}
//---------------------------------------------------------------------------------------------------------------
// HOSM-based differentiation function:
void HOSMDifferentiation(HOSM_Differentiator SMDIF, float input[]){
    int i;                                                                                  // Declaration of i as integer variable.
    // Execute HOSM-based differentiation algorithm:
    if(SMDIF.flag[0]){
        for(i = 0; i < SMDIF.s_in; i++){
            SMDIF.x1_k[i] = SMDIF.x1_kp1[i];                                                // Updates the state vector x1(k) for SMDIF differentiator.
            SMDIF.x2_k[i] = SMDIF.x2_kp1[i];                                                // Updates the state vector x2(k), corresponding to the first derivative of SMDIF differentiator.
            SMDIF.x3_k[i] = SMDIF.x3_kp1[i];                                                // Updates the state vector x3(k), corresponding to the second derivative of SMDIF differentiator.
            // Computing auxiliar operations:
            float OP1 = SMDIF.x1_k[i] - input[i];                                           // Precompute required operator 1 (tracking error of the input).
            float OP2 = cbrt(fabs(OP1));                                                    // Precompute required operator 2 (cbrt is the cubic root of a number).
            float OP3 = signf(OP1);                                                         // Precompute required operator 3 (sign function).
            float OP4 = cbrt(SMDIF.Lip[i]);                                                 // Precompute required operator 4.
            // Computing x1(k + 1) equation, for SMDIF differentiator:
            SMDIF.x1_kp1[i] = SMDIF.x1_k[i] - SMDIF.Ts*(SMDIF.lambda[2]*OP2*OP2*OP3*OP4) + SMDIF.Ts*SMDIF.x2_k[i] + SMDIF.Ts*SMDIF.Ts*SMDIF.x3_k[i]/2.0f;
            // Computing x2(k + 1) equation, for SMDIF differentiator:
            SMDIF.x2_kp1[i] = SMDIF.x2_k[i] - SMDIF.Ts*(SMDIF.lambda[1]*OP2*OP3*OP4*OP4) + SMDIF.Ts*SMDIF.x3_k[i];
            // Computing x3(k + 1) equation, for SMDIF differentiator:
            SMDIF.x3_kp1[i] = SMDIF.x3_k[i] - SMDIF.Ts*(SMDIF.lambda[0]*SMDIF.Lip[i]*OP3);
            // Updating differentiator output y(k):
            SMDIF.y_k[i] = SMDIF.x1_k[i];                                                   // Determines the output y(k) = x1(k), of SMDIF differentator.
            SMDIF.y_k[i+SMDIF.s_in] = SMDIF.x2_k[i];                                        // Concatenates x2(k) to the output y(k) of SMDIF differentator.
            SMDIF.y_k[i+2*SMDIF.s_in] = SMDIF.x3_k[i];                                      // Concatenates x3(k) to the output y(k) of SMDIF differentator.
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Initialize robot space high-gain observer structure:
RS_Observer createRS_Observer(float sampleTime, float gains[9*Robots_Qty][3*Robots_Qty], float epsilon){
    int i, j, s = 3*Robots_Qty;                                                             // Declaration of i, j, and s as integer variables.
    // Configuring the members of the RS observer structure:
    RS_Observer RSO;                                                                        // Creates observer struct.
    RSO.s_base = s;                                                                         // Assign size value for the basis of computations.
    RSO.s_in = 2*s;                                                                         // Assign value of inputSize to the member s_in of the RSO structure.
    RSO.s_out = 3*s;                                                                        // Assign value of outputSize to the member s_out of the RSO structure.
    RSO.s_state = 3*s;                                                                      // Assign value of statetSize to the member s_state of the RSO structure.
    RSO.Ts = sampleTime;                                                                    // Assign value of sampleTime to the member TS of the RSO structure.
    RSO.gamma = epsilon;                                                                    // Small constant used in the RSO observer.
    //-----------------------------------------------
    if(allocateMatrix(&RSO.alpha_1, s, s) && allocateMatrix(&RSO.alpha_2, s, s) && allocateMatrix(&RSO.alpha_3, s, s)){
        // Creating matrix arrays for alpha_1, alpha_2 and alpha_3:
        for(i = 0; i < s; i++){
            for(j = 0; j < s; j++){
                RSO.alpha_1.data[i][j] = gains[i][j];                                       // Assigning values to the matrix alpha_1 of RSO.
                RSO.alpha_2.data[i][j] = gains[i+s][j];                                     // Assigning values to the matrix alpha_2 of RSO.
                RSO.alpha_3.data[i][j] = gains[i+2*s][j];                                   // Assigning values to the matrix alpha_3 of RSO.
            }
        }
    }
    //-----------------------------------------------
    RSO.F_k = (float*)malloc(s * sizeof(float));                                            // Allocate memory for vector field F(k).
    RSO.G_k = (float*)malloc(s * sizeof(float));                                            // Allocate memory for vector field G(k).
    RSO.X_0 = (float *)malloc(3*s * sizeof(float));                                         // Allocate memory for the initial state vector x(0) = [x1(0) x2(0) x3(0)]'.
    RSO.x1_k = (float *)malloc(s * sizeof(float));                                          // Allocate memory for the state vector x1(k).
    RSO.x1_kp1 = (float *)malloc(s * sizeof(float));                                        // Allocate memory for the state vector x1(k + 1).
    RSO.x2_k = (float *)malloc(s * sizeof(float));                                          // Allocate memory for the state vector x2(k).
    RSO.x2_kp1 = (float *)malloc(s * sizeof(float));                                        // Allocate memory for the state vector x2(k + 1).
    RSO.x3_k = (float *)malloc(s * sizeof(float));                                          // Allocate memory for the state vector x3(k).
    RSO.x3_kp1 = (float *)malloc(s * sizeof(float));                                        // Allocate memory for the state vector x3(k + 1).
    RSO.y_k = (float *)malloc(3*s * sizeof(float));                                         // Allocate memory for the output vector y(k).
    RSO.flag = (bool *)malloc(sizeof(bool));                                                // Allocate memory for flag of the structure defined within RSO (disable or enable observer).
    //-----------------------------------------------
    RSO.INT = createIntegrator(3*s,sampleTime,1.0f);                                        // Create integrator struct within observer ROS struct.
    RSO.flag[0] = false;                                                                    // Setting RSO flag to false.
    return RSO;
}
//---------------------------------------------------------------------------------------------------------------
// Adding initial conditions to high-gain observer structured as RSO:
void init_RS_Observer(RS_Observer RSO, float x_0[]){
    int i;                                                                                  // Declaration of i as integer variable.
    float Xi_0[2*RSO.s_state];                                                              // Variable to save initial conditions for integrator RSO.INT.
    for(i = 0; i < RSO.s_state; i++){
        RSO.X_0[i] = x_0[i];                                                                // Saving initial conditions data for x(0) within RSO structure.
        Xi_0[i] = 0.0f;                                                                     // Saving initial conditions for x1(0) within RSO.INT structure.
        Xi_0[i+RSO.s_state] = x_0[i];                                                       // Saving initial conditions for x2(0) within RSO.INT structure.
    }
    // Initiating integrator RSO.INT and variables x1(k), x2(k) and x3(k):
    initIntegrator(RSO.INT,Xi_0);                                                           // Initialize integrator of RSO high-gain observer.
    for(i = 0; i < RSO.s_base; i++){
        RSO.x1_k[i] = x_0[i];                                                               // Saving initial conditions data for x1(k) within RSO structure.
        RSO.x2_k[i] = x_0[i+RSO.s_base];                                                    // Saving initial conditions data for x2(k) within RSO structure.
        RSO.x3_k[i] = x_0[i+2*RSO.s_base];                                                  // Saving initial conditions data for x3(k) within RSO structure.
        RSO.x1_kp1[i] = 0.0f;                                                               // Computing initial values for state x1(k + 1) within RSO structure.
        RSO.x2_kp1[i] = 0.0f;                                                               // Computing initial values for state x2(k + 1) within RSO structure.
        RSO.x3_kp1[i] = 0.0f;                                                               // Computing initial values for state x3(k + 1) within RSO structure.
        // Updating y(k):
        RSO.y_k[i] = RSO.x1_k[i];                                                           // Saving initial conditions data for y(k) within RSO structure as x1(k).
        RSO.y_k[i+RSO.s_base] = RSO.x2_k[i];                                                // Saving initial conditions data for y(k) within RSO structure as x2(k).
        RSO.y_k[i+2*RSO.s_base] = RSO.x3_k[i];                                              // Saving initial conditions data for y(k) within RSO structure as x3(k).
    }
    // Updating the observer flag:
    RSO.flag[0] = true;                                                                     // Flag settled to true, which enables the estimation algorithm on RSO structure.
}
//---------------------------------------------------------------------------------------------------------------
// Robot space estimation function:
void RS_Estimation(RS_Observer RSO, float fmr_u_k[], float fmr_q_k[], float fmr_params[]){
    int i, j;                                                                               // Declaration of i and j as integer variables.
    // Getting output of RSO.INT integrator:
    for(i = 0; i < RSO.s_base; i++){
        RSO.x1_k[i] = RSO.INT.y_k[i];                                                       // Updating data for x1(k) within RSO structure.
        RSO.x2_k[i] = RSO.INT.y_k[i+RSO.s_base];                                            // Updating data for x2(k) within RSO structure.
        RSO.x3_k[i] = RSO.INT.y_k[i+2*RSO.s_base];                                          // Updating data for x3(k) within RSO structure.
    }
    // Execute estimation algorithm:
    if(RSO.flag[0]){
        switch(Robots_Qty){
            case 2:{
                // Computing the matrix W1(k) = -inv(D)*H(k):
                float H12_k = 1.5f*RSO.x2_k[2]*jw_1/(fmr_params[0]);                        // Precompute value in {1,2} position of H(k) matrix.
                float H45_k = 1.5f*RSO.x2_k[5]*jw_2/(fmr_params[1]);                        // Precompute value in {4,5} position of H(k) matrix.
                float w11_k = H12_k*fmr_params[8];                                          // Precompute value in {1,2} position of W1(k) matrix.
                float w12_k = H45_k*fmr_params[10];                                         // Precompute value in {4,5} position of W1(k) matrix.
                float W1_k[3*Robots_Qty][3*Robots_Qty] = {
                    { 0.0f, -w11_k, 0.0f,  0.0f,   0.0f, 0.0f},
                    {w11_k,   0.0f, 0.0f,  0.0f,   0.0f, 0.0f},
                    { 0.0f,   0.0f, 0.0f,  0.0f,   0.0f, 0.0f},
                    { 0.0f,   0.0f, 0.0f,  0.0f, -w12_k, 0.0f},
                    { 0.0f,   0.0f, 0.0f, w12_k,   0.0f, 0.0f},
                    { 0.0f,   0.0f, 0.0f,  0.0f,   0.0f, 0.0f}
                };
                // Computing the matrix W2(k) = 1000.0*inv(D)*B(k):
                float w21_k = delta_1 + RSO.x1_k[2];                                        // Precompute angular addition 1 in W2(k).
                float w22_k = delta_1 - RSO.x1_k[2];                                        // Precompute angular subtraction 1 in W2(k).
                float w23_k = delta_2 + RSO.x1_k[5];                                        // Precompute angular addition 2 in W2(k).
                float w24_k = delta_2 - RSO.x1_k[5];                                        // Precompute angular subtraction 2 in W2(k).
                float W2_k[3*Robots_Qty][3*Robots_Qty] = {
                    {-sinf(w21_k)*fmr_params[18], -sinf(w22_k)*fmr_params[18], cosf(RSO.x1_k[2])*fmr_params[18],                        0.0f,                        0.0f,                             0.0f},
                    { cosf(w21_k)*fmr_params[18], -cosf(w22_k)*fmr_params[18], sinf(RSO.x1_k[2])*fmr_params[18],                        0.0f,                        0.0f,                             0.0f},
                    {             fmr_params[24],              fmr_params[24],                   fmr_params[24],                        0.0f,                        0.0f,                             0.0f},
                    {                       0.0f,                        0.0f,                             0.0f, -sinf(w23_k)*fmr_params[19], -sinf(w24_k)*fmr_params[19], cosf(RSO.x1_k[5])*fmr_params[19]},
                    {                       0.0f,                        0.0f,                             0.0f,  cosf(w23_k)*fmr_params[19], -cosf(w24_k)*fmr_params[19], sinf(RSO.x1_k[5])*fmr_params[19]},
                    {                       0.0f,                        0.0f,                             0.0f,              fmr_params[25],              fmr_params[25],                   fmr_params[25]}
                };
                //-----------------------------------------------
                // Updating vector fields F(k) and G(k), together with variables x1(k + 1), x2(k + 1) and x3(k + 1):
                float X_kp1[9*Robots_Qty];                                                  // Creates a support variable for concatenate x1(k + 1), x2(k + 1) and x3(k + 1) in only a vector.
                for(i = 0; i < RSO.s_base; i++){
                    RSO.F_k[i] = 0.0f;                                                      // Clear i^th value of vector field F(k).
                    RSO.G_k[i] = 0.0f;                                                      // Clear i^th value of vector field G(k).
                    RSO.x1_kp1[i] = 0.0f;                                                   // Clear i^th value of x1(k + 1).
                    RSO.x2_kp1[i] = 0.0f;                                                   // Clear i^th value of x2(k + 1).
                    RSO.x3_kp1[i] = 0.0f;                                                   // Clear i^th value of x3(k + 1).
                    for(j = 0; j < RSO.s_base; j++){
                        // Compute state correction for x1(k + 1), x2(k + 1) and x3(k + 1):
                        RSO.x1_kp1[i] += RSO.alpha_1.data[i][j]*(fmr_q_k[j] - RSO.x1_k[j])/(RSO.gamma);
                        RSO.x2_kp1[i] += RSO.alpha_2.data[i][j]*(fmr_q_k[j] - RSO.x1_k[j])/(RSO.gamma*RSO.gamma);
                        // Final prediction result for x3(k + 1):
                        RSO.x3_kp1[i] += RSO.alpha_3.data[i][j]*(fmr_q_k[j] - RSO.x1_k[j])/(RSO.gamma*RSO.gamma*RSO.gamma);
                        // Updating vector fields F(k) and G(k):
                        RSO.F_k[i] += W1_k[i][j]*RSO.x2_k[j];                               // Compute vector field F(k).
                        RSO.G_k[i] += W2_k[i][j]*fmr_u_k[j];                                // Compute vector field G(k).
                    }
                    RSO.x1_kp1[i] += RSO.x2_k[i];                                           // Final prediction result for x1(k + 1).
                    RSO.x2_kp1[i] += RSO.x3_k[i] + RSO.F_k[i] + RSO.G_k[i];                 // Final prediction result for x2(k + 1).
                    // Concatenation of x1(k + 1), x2(k + 1) and x3(k + 1) within x(k + 1):
                    X_kp1[i] = RSO.x1_kp1[i];
                    X_kp1[i+RSO.s_base] = RSO.x2_kp1[i];
                    X_kp1[i+2*RSO.s_base] = RSO.x3_kp1[i];
                    // Output of high-gain observer RSO:
                    RSO.y_k[i] = RSO.x1_k[i];
                    RSO.y_k[i+RSO.s_base] = RSO.x2_k[i];
                    RSO.y_k[i+2*RSO.s_base] = RSO.x3_k[i];
                }
                Integration(RSO.INT,X_kp1);                                                 // Compute integration for x1(k + 1), x2(k + 1) and x3(k + 1).
                break;
            }
            case 3:{
                break;
            }
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Creating the GPI controller that shall be structured as GPI:
GPI_Controller createGPI_Controller(float sampleTime, float gains[3*Robots_Qty][3]){
    int i, j, s = 3*Robots_Qty;                                                             // Declaration of i, j, and s as integer variables.
    // Configuring the members of the GPI controller structure:
    GPI_Controller GPI;                                                                     // Creates GPI controller structure.
    GPI.s_in = s;                                                                           // Assign value of inputSize to the member s_in of the GPI structure.
    GPI.s_out = s;                                                                          // Assign value of outputSize to the member s_out of the GPI structure.
    GPI.s_state = 2*s;                                                                      // Assign value of statetSize to the member s_state of the GPI structure.
    GPI.Ts = sampleTime;                                                                    // Assign value of sampleTime to the member Ts of the GPI structure.
    if(allocateMatrix(&GPI.lambda, s, 3)){
        // Creating matrix arrays for alpha_1, alpha_2 and alpha_3:
        for(i = 0; i < s; i++){
            for(j = 0; j < 3; j++){
                GPI.lambda.data[i][j] = gains[i][j];                                        // Assigning values to the gains matrix lambda of GPI controller.
            }
        }
    }
    //-----------------------------------------------
    GPI.X_0 = (float *)malloc(2*s * sizeof(float));                                         // Allocate memory for the initial state vector x(0) = [x1(0) x2(0) x3(0)]'.
    GPI.x1_k = (float *)malloc(s * sizeof(float));                                          // Allocate memory for the state vector x1(k).
    GPI.x1_kp1 = (float *)malloc(s * sizeof(float));                                        // Allocate memory for the state vector x1(k + 1).
    GPI.x2_k = (float *)malloc(s * sizeof(float));                                          // Allocate memory for the state vector x2(k).
    GPI.x2_kp1 = (float *)malloc(s * sizeof(float));                                        // Allocate memory for the state vector x2(k + 1).
    GPI.y_k = (float *)malloc(s * sizeof(float));                                           // Allocate memory for the output vector y(k).
    GPI.flag = (bool *)malloc(sizeof(bool));                                                // Allocate memory for flag of the structure defined within GPI (disable or enable observer).
    //-----------------------------------------------
    GPI.flag[0] = false;                                                                    // Setting GPI flag to false.
    return GPI;
}
//---------------------------------------------------------------------------------------------------------------
// Initializing the GPI controller structured as GPI:
void initGPI_Controller(GPI_Controller GPI, float x_0[]){
    int i;                                                                                  // Declaration of i as integer variable.
    for(i = 0; i < GPI.s_state; i++){
        GPI.X_0[i] = x_0[i];                                                                // Saving initial conditions data for x(0) within GPI structure.
    }
    for(i = 0; i < GPI.s_in; i++){
        GPI.x1_k[i] = 0.0f;                                                                 // Saving initial conditions data for delayed input signal u(k) within GPI structure as x1(k) = x1(0).
        GPI.x1_kp1[i] = x_0[i];                                                             // Saving initial input signal u(k + 1) within GPI structure as x1(k + 1).
        GPI.x2_k[i] = x_0[i+GPI.s_in];                                                      // Saving initial integration state within GPI structure as x2(k) = x2(0).
        // Updating GPI operator as x2(k + 1):
        GPI.x2_kp1[i] = ((GPI.lambda.data[i][0]*GPI.Ts + 2.0f*GPI.lambda.data[i][1])*GPI.x1_kp1[i] + (GPI.lambda.data[i][0]*GPI.Ts - 2.0f*GPI.lambda.data[i][1])*GPI.x1_k[i] - (GPI.lambda.data[i][2]*GPI.Ts - 2.0f)*GPI.x2_k[i])/(GPI.lambda.data[i][2]*GPI.Ts + 2.0f);
        // Updating GPI output y(k):
        GPI.y_k[i] = GPI.x2_k[i];                                                           // Saving initial conditions data for y_k within GPI structure.
    }
    GPI.flag[0] = true;                                                                     // Flag settled to true, which enables control function defined as GPI.
}
//---------------------------------------------------------------------------------------------------------------
// GPI control computing function:
void computeGPIControl(GPI_Controller GPI, float errors_k[]){
    int i;                                                                                  // Declaration of i as integer variable.
    // Execute integration algorithm:
    if(GPI.flag[0]){
        for(i = 0; i < GPI.s_in; i++){
            GPI.x1_k[i] = GPI.x1_kp1[i];                                                    // Updates the delayed input signal u(k - 1) as x1(k) for INT integrator.
            GPI.x1_kp1[i] = errors_k[i];                                                    // Get input signal u(k) as x1(k + 1), for integrator INT.
            GPI.x2_k[i] = GPI.x2_kp1[i];                                                    // Updates the delayed state x2(k), corresponding to output of INT integrator.
            // Updating GPI operator as x2(k + 1):
            GPI.x2_kp1[i] = ((GPI.lambda.data[i][0]*GPI.Ts + 2.0f*GPI.lambda.data[i][1])*GPI.x1_kp1[i] + (GPI.lambda.data[i][0]*GPI.Ts - 2.0f*GPI.lambda.data[i][1])*GPI.x1_k[i] - (GPI.lambda.data[i][2]*GPI.Ts - 2.0f)*GPI.x2_k[i])/(GPI.lambda.data[i][2]*GPI.Ts + 2.0f);
            // Updating GPI output y(k):
            GPI.y_k[i] = GPI.x2_k[i];                                                       // Updating values data for output y_k within GPI structure.
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Creating the ADRC controller structured as ADRC:
ADRC_Controller createADRC_Controller(void){
    int s = 3*Robots_Qty;                                                                   // Declaration of s as integer variable.
    // Configuring the members of the RS observer structure:
    ADRC_Controller ADRC;                                                                   // Creates observer structure.
    ADRC.s_in = 7*s;                                                                        // Assign value of inputSize to the member s_in of the ADRC structure.
    ADRC.s_out = s;                                                                         // Assign value of outputSize to the member s_out of the ADRC structure.
    //-----------------------------------------------
    ADRC.y_k = (float *)malloc(s * sizeof(float));                                          // Allocate memory for the output vector y(k).
    ADRC.flag = (bool *)malloc(sizeof(bool));                                               // Allocate memory for flag of the structure defined within ADRC (disable or enable ADRC controller).
    //-----------------------------------------------
    ADRC.flag[0] = false;                                                                   // Setting GPI flag to false.
    return ADRC;
}
//---------------------------------------------------------------------------------------------------------------
// Initializing the ADRC controller structured as ADRC:
void initADRC_Controller(ADRC_Controller ADRC, float ref_x_0[], float rso_x_0[], float gpi_x_0[], float fmr_params[]){
    int i, j;                                                                               // Declaration of i and j as integer variables.
    switch(Robots_Qty){
        case 2:{
            // Computing the matrix H(k):
            float H12_k = rso_x_0[8]*(fmr_params[4] - mt_1);                                // Precompute value in {1,2} position of H(k) matrix.
            float H45_k = rso_x_0[11]*(fmr_params[6] - mt_2);                               // Precompute value in {4,5} position of H(k) matrix.
            // Computing the matrix W1(k) = inv(B(k))*H(k):
            float w101_k = delta_1 + rso_x_0[2];                                            // Precompute angular addition 1 in W1(k).
            float w102_k = delta_1 - rso_x_0[2];                                            // Precompute angular subtraction 1 in W1(k).
            float w103_k = delta_2 + rso_x_0[5];                                            // Precompute angular addition 2 in W1(k).
            float w104_k = delta_2 - rso_x_0[5];                                            // Precompute angular subtraction 2 in W1(k).
            float w105_k = sinf(rso_x_0[2]);                                                // Precompute sin(ph1_k) in W1(k).
            float w106_k = cosf(rso_x_0[2]);                                                // Precompute cos(ph1_k) in W1(k).
            float w107_k = sinf(rso_x_0[5]);                                                // Precompute sin(ph2_k) in W1(k).
            float w108_k = cosf(rso_x_0[5]);                                                // Precompute cos(ph2_k) in W1(k).
            float w109_k = 2.0f*H12_k*l_1*fmr_params[12];                                   // Precompute multiplication 1 in W1(k).
            float w110_k = 2.0f*H45_k*l_2*fmr_params[13];                                   // Precompute multiplication 2 in W1(k).
            float w111_k = fmr_params[14]*H12_k;                                            // Precompute multiplication 3 in W1(k).
            float w112_k = fmr_params[15]*H45_k;                                            // Precompute multiplication 4 in W1(k).
            float w113_k = cosf(w101_k) - w105_k;                                           // Precompute subtraction 1 in W1(k).
            float w114_k = sinf(w101_k) + w106_k;                                           // Precompute addition 1 in W1(k).
            float w115_k = cosf(w102_k) + w105_k;                                           // Precompute addition 2 in W1(k).
            float w116_k = sinf(w102_k) + w106_k;                                           // Precompute addition 3 in W1(k).
            float w117_k = cosf(w103_k) - w107_k;                                           // Precompute subtraction 2 in W1(k).
            float w118_k = sinf(w103_k) + w108_k;                                           // Precompute addition 4 in W1(k).
            float w119_k = cosf(w104_k) + w107_k;                                           // Precompute addition 5 in W1(k).
            float w120_k = sinf(w104_k) + w108_k;                                           // Precompute addition 6 in W1(k).
            float W1_k[3*Robots_Qty][3*Robots_Qty] = {
                {-w111_k*w116_k, -w111_k*w115_k, 0.0f,           0.0f,           0.0f, 0.0f},
                { w111_k*w114_k, -w111_k*w113_k, 0.0f,           0.0f,           0.0f, 0.0f},
                {-w109_k*w105_k,  w109_k*w106_k, 0.0f,           0.0f,           0.0f, 0.0f},
                {          0.0f,           0.0f, 0.0f, -w112_k*w120_k, -w112_k*w119_k, 0.0f},
                {          0.0f,           0.0f, 0.0f,  w112_k*w118_k, -w112_k*w117_k, 0.0f},
                {          0.0f,           0.0f, 0.0f, -w110_k*w107_k,  w110_k*w108_k, 0.0f}
            };
            // Computing the matrix W2(k) = -inv(B(k))*D:
            float W2_k[3*Robots_Qty][3*Robots_Qty] = {
                { fmr_params[20]*w115_k, -fmr_params[20]*w116_k, -fmr_params[21],                   0.0f,                   0.0f,            0.0f},
                { fmr_params[20]*w113_k,  fmr_params[20]*w114_k, -fmr_params[21],                   0.0f,                   0.0f,            0.0f},
                {-fmr_params[28]*w106_k, -fmr_params[28]*w105_k, -fmr_params[30],                   0.0f,                   0.0f,            0.0f},
                {                  0.0f,                   0.0f,            0.0f,  fmr_params[22]*w119_k, -fmr_params[22]*w120_k, -fmr_params[23]},
                {                  0.0f,                   0.0f,            0.0f,  fmr_params[22]*w117_k,  fmr_params[22]*w118_k, -fmr_params[23]},
                {                  0.0f,                   0.0f,            0.0f, -fmr_params[29]*w108_k, -fmr_params[29]*w107_k, -fmr_params[31]}
            };
            //-----------------------------------------------
            // Computing initial ADRC output y(k) from initial values of REF, RSO and GPI structures:
            for(i = 0; i < ADRC.s_out; i++){
                ADRC.y_k[i] = 0.0f;                                                         // Clear i^th value of output vector y(k).
                for(j = 0; j < ADRC.s_out; j++){
                    // Compute ADRC output y(k), through successive addition operations:
                    ADRC.y_k[i] += W1_k[i][j]*rso_x_0[j+ADRC.s_out] + W2_k[i][j]*(rso_x_0[j+2*ADRC.s_out] - ref_x_0[j+2*ADRC.s_out] + gpi_x_0[j+ADRC.s_out]);
                }
            }
            break;
        }
        case 3:{
            break;
        }
    }
    ADRC.flag[0] = true;                                                                    // Flag settled to true, which enables control function defined as ADRC.
}
//---------------------------------------------------------------------------------------------------------------
// ADRC control computing function:
void computeADRC(ADRC_Controller ADRC, float ref_y_k[], float rso_y_k[], float gpi_y_k[], float fmr_params[]){
    int i, j;                                                                               // Declaration of i and j as integer variables.
    // Execute ADRC algorithm:
    if(ADRC.flag[0]){
        switch(Robots_Qty){
            case 2:{
                // Computing the matrix H(k):
                float H12_k = rso_y_k[8]*(fmr_params[4] - mt_1);                            // Precompute value in {1,2} position of H(k) matrix.
                float H45_k = rso_y_k[11]*(fmr_params[6] - mt_2);                           // Precompute value in {4,5} position of H(k) matrix.
                // Computing the matrix W1(k) = inv(B(k))*H(k):
                float w101_k = delta_1 + rso_y_k[2];                                        // Precompute angular addition 1 in W1(k).
                float w102_k = delta_1 - rso_y_k[2];                                        // Precompute angular subtraction 1 in W1(k).
                float w103_k = delta_2 + rso_y_k[5];                                        // Precompute angular addition 2 in W1(k).
                float w104_k = delta_2 - rso_y_k[5];                                        // Precompute angular subtraction 2 in W1(k).
                float w105_k = sinf(rso_y_k[2]);                                            // Precompute sin(ph1_k) in W1(k).
                float w106_k = cosf(rso_y_k[2]);                                            // Precompute cos(ph1_k) in W1(k).
                float w107_k = sinf(rso_y_k[5]);                                            // Precompute sin(ph2_k) in W1(k).
                float w108_k = cosf(rso_y_k[5]);                                            // Precompute cos(ph2_k) in W1(k).
                float w109_k = 2.0f*H12_k*l_1*fmr_params[12];                               // Precompute multiplication 1 in W1(k).
                float w110_k = 2.0f*H45_k*l_2*fmr_params[13];                               // Precompute multiplication 2 in W1(k).
                float w111_k = fmr_params[14]*H12_k;                                        // Precompute multiplication 3 in W1(k).
                float w112_k = fmr_params[15]*H45_k;                                        // Precompute multiplication 4 in W1(k).
                float w113_k = cosf(w101_k) - w105_k;                                       // Precompute subtraction 1 in W1(k).
                float w114_k = sinf(w101_k) + w106_k;                                       // Precompute addition 1 in W1(k).
                float w115_k = cosf(w102_k) + w105_k;                                       // Precompute addition 2 in W1(k).
                float w116_k = sinf(w102_k) + w106_k;                                       // Precompute addition 3 in W1(k).
                float w117_k = cosf(w103_k) - w107_k;                                       // Precompute subtraction 2 in W1(k).
                float w118_k = sinf(w103_k) + w108_k;                                       // Precompute addition 4 in W1(k).
                float w119_k = cosf(w104_k) + w107_k;                                       // Precompute addition 5 in W1(k).
                float w120_k = sinf(w104_k) + w108_k;                                       // Precompute addition 6 in W1(k).
                float W1_k[3*Robots_Qty][3*Robots_Qty] = {
                    {-w111_k*w116_k, -w111_k*w115_k, 0.0f,           0.0f,           0.0f, 0.0f},
                    { w111_k*w114_k, -w111_k*w113_k, 0.0f,           0.0f,           0.0f, 0.0f},
                    {-w109_k*w105_k,  w109_k*w106_k, 0.0f,           0.0f,           0.0f, 0.0f},
                    {          0.0f,           0.0f, 0.0f, -w112_k*w120_k, -w112_k*w119_k, 0.0f},
                    {          0.0f,           0.0f, 0.0f,  w112_k*w118_k, -w112_k*w117_k, 0.0f},
                    {          0.0f,           0.0f, 0.0f, -w110_k*w107_k,  w110_k*w108_k, 0.0f}
                };
                // Computing the matrix W2(k) = -inv(B(k))*D:
                float W2_k[3*Robots_Qty][3*Robots_Qty] = {
                    { fmr_params[20]*w115_k, -fmr_params[20]*w116_k, -fmr_params[21],                   0.0f,                   0.0f,            0.0f},
                    { fmr_params[20]*w113_k,  fmr_params[20]*w114_k, -fmr_params[21],                   0.0f,                   0.0f,            0.0f},
                    {-fmr_params[28]*w106_k, -fmr_params[28]*w105_k, -fmr_params[30],                   0.0f,                   0.0f,            0.0f},
                    {                  0.0f,                   0.0f,            0.0f,  fmr_params[22]*w119_k, -fmr_params[22]*w120_k, -fmr_params[23]},
                    {                  0.0f,                   0.0f,            0.0f,  fmr_params[22]*w117_k,  fmr_params[22]*w118_k, -fmr_params[23]},
                    {                  0.0f,                   0.0f,            0.0f, -fmr_params[29]*w108_k, -fmr_params[29]*w107_k, -fmr_params[31]}
                };
                //-----------------------------------------------
                // Computing ADRC output y(k) from output values of REF, RSO and GPI structures:
                for(i = 0; i < ADRC.s_out; i++){
                    ADRC.y_k[i] = 0.0f;                                                     // Clear i^th value of output vector y(k).
                    for(j = 0; j < ADRC.s_out; j++){
                        // Compute ADRC output y(k), through successive addition operations:
                        ADRC.y_k[i] += W1_k[i][j]*rso_y_k[j+ADRC.s_out] + W2_k[i][j]*(rso_y_k[j+2*ADRC.s_out] - ref_y_k[j+2*ADRC.s_out] + gpi_y_k[j]);
                    }
                }
                break;
            }
            case 3:{
                break;
            }
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Creating the cluster space high-gain observer structure 01 (Attraction or repulsion disturbance forces are only considered):
CS_Observer createCS_Observer01(float sampleTime, float gains[3*(Robots_Qty-1)][Robots_Qty-1], float epsilon, float diff_fc){
    int i, j, s = Robots_Qty-1, m = 6*Robots_Qty;                                           // Declaration of i, j, s and m as integer variables.
    // Configuring the members of the CS observer structure:
    CS_Observer CSO;                                                                        // Creates observer structure.
    CSO.s_in = m;                                                                           // Assign value of inputSize to the member s_in of the CSO structure.
    CSO.s_out = m;                                                                          // Assign value of outputSize to the member s_out of the CSO structure.
    CSO.s_state = 3*s;                                                                      // Assign value of statetSize to the member s_state of the CSO structure.
    CSO.Ts = sampleTime;                                                                    // Assign value of sampleTime to the member TS of the CSO structure.
    CSO.gamma = epsilon;                                                                    // Small constant used in the CSO observer.
    //-----------------------------------------------
    if(allocateMatrix(&CSO.alpha_1,s,s) && allocateMatrix(&CSO.alpha_2,s,s) && allocateMatrix(&CSO.alpha_3,s,s)){
        // Creating matrix arrays for alpha_1, alpha_2 and alpha_3:
        for(i = 0; i < s; i++){
            for(j = 0; j < s; j++){
                CSO.alpha_1.data[i][j] = gains[i][j];                                       // Assigning values to the matrix alpha_1 of CSO.
                CSO.alpha_2.data[i][j] = gains[i+s][j];                                     // Assigning values to the matrix alpha_2 of CSO.
                CSO.alpha_3.data[i][j] = gains[i+2*s][j];                                   // Assigning values to the matrix alpha_3 of CSO.
            }
        }
    }
    //-----------------------------------------------
    CSO.F_k = (float*)malloc(s * sizeof(float));                                            // Allocate memory for vector field F(k).
    CSO.G_k = (float*)malloc(s * sizeof(float));                                            // Allocate memory for vector field G(k).
    CSO.Z_0 = (float *)malloc(3*s * sizeof(float));                                         // Allocate memory for the initial state vector z(0) = [z1(0) z2(0) z3(0)]'.
    CSO.z1_k = (float *)malloc(s * sizeof(float));                                          // Allocate memory for the state vector z1(k).
    CSO.z1_kp1 = (float *)malloc(s * sizeof(float));                                        // Allocate memory for the state vector d(z1(k))/dt.
    CSO.z2_k = (float *)malloc(s * sizeof(float));                                          // Allocate memory for the state vector z2(k).
    CSO.z2_kp1 = (float *)malloc(s * sizeof(float));                                        // Allocate memory for the state vector d(z2(k))/dt.
    CSO.z3_k = (float *)malloc(s * sizeof(float));                                          // Allocate memory for the state vector z3(k).
    CSO.z3_kp1 = (float *)malloc(s * sizeof(float));                                        // Allocate memory for the state vector d(z3(k))/dt.
    CSO.y_k = (float *)malloc(m * sizeof(float));                                           // Allocate memory for the output vector y(k).
    CSO.flag = (bool *)malloc(sizeof(bool));                                                // Allocate memory for flag of the structure defined as CSO (disable or enable observer).
    //-----------------------------------------------
    CSO.INT = createIntegrator(3*s,sampleTime,1.0f);                                        // Create integration structure within observer CSO structure.
    CSO.DIF = createDifferentiator(3*Robots_Qty,sampleTime,1.0f,diff_fc);                   // Create differentiation structure within observer CSO structure.
    //-----------------------------------------------
    CSO.flag[0] = false;                                                                    // Setting CSO flag to false.
    return CSO;
}
//---------------------------------------------------------------------------------------------------------------
// Adding initial conditions to high-gain observer 01 structured as CSO:
void init_CS_Observer01(CS_Observer CSO, float z_0[]){
    int i, j, s = 0, m = Robots_Qty-1, n = 3*Robots_Qty;                                    // Declaration of i, j, s, n and m as integer variables.
    float Xi_0[6*m];                                                                        // Variable to save initial conditions for CSO.INT integrator.
    float Xd_0[CSO.s_in];                                                                   // Variable to save initial conditions for CSO.DIF differentiator.
    for(i = 0; i < CSO.s_state; i++){
        Xi_0[i] = 0.0f;                                                                     // Saving initial conditions for x1(0) within CSO.INT structure.
    }
    for(i = 0; i < 3; i++){
        for (j = 0; j < m; j++){
            CSO.Z_0[s] = z_0[6*i+3+j];                                                      // Saving initial conditions data for z(0) within CSO structure.
            Xi_0[s+3*m] = z_0[6*i+3+j];                                                     // Saving initial conditions for x2(0) within CSO.INT structure.
            s++;                                                                            // Increasing s.
        }
    }
    for(i = 0; i < n; i++){
        Xd_0[i] = z_0[i];                                                                   // Saving initial conditions for x1(0) within CSO.DIF structure.
        Xd_0[i+n] = 0.0f;                                                                   // Saving initial conditions for x2(0) within CSO.DIF structure.
    }
    // Initiating integrator CSO.INT and differentiator CSO.DIF:
    initIntegrator(CSO.INT,Xi_0);                                                           // Initialize integrator of CSO high-gain observer.
    initDifferentiator(CSO.DIF,Xd_0);                                                       // Initialize differentiator of CSO high-gain observer.
    // Initiating variables z1(k), z2(k) and z3(k):
    for(i = 0; i < m; i++){
        CSO.z1_k[i] = z_0[i+3];                                                             // Saving initial conditions data for z1(k) within CSO structure.
        CSO.z2_k[i] = z_0[i+n+3];                                                           // Saving initial conditions data for z2(k) within CSO structure.
        CSO.z3_k[i] = z_0[i+2*n+3];                                                         // Saving initial conditions data for z3(k) within CSO structure.
        CSO.z1_kp1[i] = 0.0f;                                                               // Computing initial values for state d(z1(k))/dt within CSO structure.
        CSO.z2_kp1[i] = 0.0f;                                                               // Computing initial values for state d(z2(k))/dt within CSO structure.
        CSO.z3_kp1[i] = 0.0f;                                                               // Computing initial values for state d(z3(k))/dt within CSO structure.
    }
    // Updating y(k):
    for(i = 0; i < n; i++){
        CSO.y_k[i] = CSO.DIF.y_k[i];                                                        // Saving initial conditions data for y(k) within CSO structure.
        CSO.y_k[i+n] = 0.0f;                                                                // Saving initial conditions data for y(k) within CSO structure.
    }
    for (j = 0; j < m; j++){
        CSO.y_k[j+3+n] = CSO.Z_0[j];                                                        // Saving initial conditions data for y(k) within CSO structure.
    }
    // Updating the observer flag:
    CSO.flag[0] = true;                                                                     // Flag settled to true, which enables the estimation algorithm on CSO structure.
}
//---------------------------------------------------------------------------------------------------------------
// Cluster space estimation function for CS observer 01:
void CS_Estimation01(CS_Observer CSO, float fmr_u_k[], float fmr_c_k[], float fmr_params[]){
    int i, j, m = Robots_Qty-1, n = 3*Robots_Qty;                                           // Declaration of i, j, m and n as integer variables.
    // Getting output of CSO.INT integration structure:
    for(i = 0; i < m; i++){
        CSO.z1_k[i] = CSO.INT.y_k[i];                                                       // Updating data for z1(k) within CSO structure.
        CSO.z2_k[i] = CSO.INT.y_k[i+m];                                                     // Updating data for z2(k) within CSO structure.
        CSO.z3_k[i] = CSO.INT.y_k[i+2*m];                                                   // Updating data for z3(k) within CSO structure.
    }
    // Execute estimation algorithm:
    if(CSO.flag[0]){
        Differentiation(CSO.DIF,fmr_c_k);                                                   // Compute differentiation of input[], entered in this estimation function.
        switch(Robots_Qty){
            case 2:{
                // Computing values of the matrix -inv(D)*H(k), in the cluster space:
                float H12_k = 1.5f*(CSO.DIF.y_k[2] + CSO.DIF.y_k[4])*jw_1/(fmr_params[0]);  // Precompute value in {1,2} position of H(k) matrix.
                float H45_k = 1.5f*(CSO.DIF.y_k[2] + CSO.DIF.y_k[5])*jw_2/(fmr_params[1]);  // Precompute value in {4,5} position of H(k) matrix.
                float w11_k = H12_k*fmr_params[8];                                          // Precompute value in {1,2} position of W1(k) matrix.
                float w12_k = H45_k*fmr_params[10];                                         // Precompute value in {4,5} position of W1(k) matrix.
                float w13_k = (w11_k - w12_k)/2.0f;                                         // Precompute operation 1 in W1(k).
                // Computing W1_k as the fourth row of -J(c)*inv(D)*H(c)*inv(J(c)) + d(J(c))/dt*inv(J(c)):
                float W1_k[1][3*Robots_Qty] = {
                    {                                 cosf(fmr_c_k[2])*w13_k,
                                                     -sinf(fmr_c_k[2])*w13_k,
                     (fmr_c_k[3]*(w11_k + w12_k + 2.0f*CSO.DIF.y_k[2]))/2.0f,
                                                                        0.0f,
                                                                        0.0f,
                                                                        0.0f
                    }
                };
                // Computing values of the matrix 1000.0*inv(D)*B(k):
                float w20a_k = fmr_c_k[2] + fmr_c_k[4];                                     // Precompute angular addition 0a in W2(k).
                float w20b_k = fmr_c_k[2] + fmr_c_k[5];                                     // Precompute angular addition 0b in W2(k).
                float w21_k = delta_1 + w20a_k;                                             // Precompute angular addition 1 in W2(k).
                float w22_k = delta_1 - w20a_k;                                             // Precompute angular subtraction 1 in W2(k).
                float w23_k = delta_2 + w20b_k;                                             // Precompute angular addition 2 in W2(k).
                float w24_k = delta_2 - w20b_k;                                             // Precompute angular subtraction 2 in W2(k).
                float w25_k = fmr_params[18]/2.0f;                                          // Precompute division 1 in W2(k).
                float w26_k = fmr_params[19]/2.0f;                                          // Precompute division 2 in W2(k).
                float w27_k = w20a_k + fmr_c_k[2];                                          // Precompute angular addition 3 in W2(k).
                float w28_k = w20b_k + fmr_c_k[2];                                          // Precompute angular addition 4 in W2(k).
                // Computing W2_k as the fourth row of 1000.0*J(c)*inv(D)*B(c):
                float W2_k[1][3*Robots_Qty] = {
                    { (w25_k*cosf(fmr_c_k[2] + w21_k)),
                     -(w25_k*cosf(fmr_c_k[2] - w22_k)),
                                   (w25_k*sinf(w27_k)),
                     -(w26_k*cosf(fmr_c_k[2] + w23_k)),
                      (w26_k*cosf(fmr_c_k[2] - w24_k)),
                                  -(w26_k*sinf(w28_k))
                    }
                };
                //-----------------------------------------------
                // Updating vector fields F(k) and G(k), together with variables z1(k + 1), z2(k + 1) and z3(k + 1) where derivative of estimated signals were defined in this algorithm:
                float Z_kp1[3*m];                                                           // Creates a support variable for concatenate z1(k + 1), z2(k + 1) and z3(k + 1) in only a vector.
                for(i = 0; i < m; i++){
                    CSO.F_k[i] = 0.0f;                                                      // Clear i^th value of vector field F(k).
                    CSO.G_k[i] = 0.0f;                                                      // Clear i^th value of vector field G(k).
                    CSO.z1_kp1[i] = 0.0f;                                                   // Clear i^th value of z1(k + 1).
                    CSO.z2_kp1[i] = 0.0f;                                                   // Clear i^th value of z2(k + 1).
                    CSO.z3_kp1[i] = 0.0f;                                                   // Clear i^th value of z3(k + 1).
                    for(j = 0; j < m; j++){
                        // Compute state correction for z1(k + 1), z2(k + 1) and z3(k + 1):
                        CSO.z1_kp1[i] += CSO.alpha_1.data[i][j]*(fmr_c_k[j+3] - CSO.z1_k[j])/(CSO.gamma);
                        CSO.z2_kp1[i] += CSO.alpha_2.data[i][j]*(fmr_c_k[j+3] - CSO.z1_k[j])/(CSO.gamma*CSO.gamma);
                        // Final prediction result for z3(k + 1):
                        CSO.z3_kp1[i] += CSO.alpha_3.data[i][j]*(fmr_c_k[j+3] - CSO.z1_k[j])/(CSO.gamma*CSO.gamma*CSO.gamma);
                    }
                    for(j = 0; j < n; j++){
                        // Updating vector fields F(k) and G(k):
                        CSO.F_k[i] += W1_k[i][j]*CSO.DIF.y_k[j];                            // Compute vector field F(k).
                        CSO.G_k[i] += W2_k[i][j]*fmr_u_k[j];                                // Compute vector field G(k).
                    }
                    CSO.z1_kp1[i] += CSO.z2_k[i];                                           // Final prediction result for z1(k + 1).
                    CSO.z2_kp1[i] += CSO.z3_k[i] + CSO.F_k[i] + CSO.G_k[i];                 // Final prediction result for z2(k + 1).
                    // Concatenation of z1(k + 1), z2(k + 1) and z3(k + 1) within z(k + 1):
                    Z_kp1[i] = CSO.z1_kp1[i];
                    Z_kp1[i+m] = CSO.z2_kp1[i];
                    Z_kp1[i+2*m] = CSO.z3_kp1[i];
                }
                for(i = 0; i < n; i++){
                    // Output of high-gain observer CSO:
                    CSO.y_k[i] = CSO.DIF.y_k[i];                                            // Saving internal differentaition of CSO structure within its output y(k).
                    CSO.y_k[i+n] = 0.0f;
                }
                for (j = 0; j < m; j++){
                    CSO.y_k[j+3+n] = CSO.z3_k[j];                                           // Arranging disturbance estimations on output y(k), within CSO structure.
                }
                Integration(CSO.INT,Z_kp1);                                                 // Compute integration for x1(k + 1), x2(k + 1) and x3(k + 1).
                break;
            }
            case 3:{
                break;
            }
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Creating the cluster space high-gain observer structure (type 01 - variant x):
CSx_Observer createCSx_Observer01(float sampleTime, float gains[3*(Robots_Qty-1)][Robots_Qty-1], float epsilon, float diff_pg[], float diff_lc[]){
    int i, j, s = Robots_Qty-1, m = 6*Robots_Qty;                                           // Declaration of i, j, s and m as integer variables.
    // Configuring the members of the CSx observer structure:
    CSx_Observer CSO;                                                                       // Creates the observer structure.
    CSO.s_in = m;                                                                           // Assign value of inputSize to the member s_in of the CSO structure.
    CSO.s_out = m;                                                                          // Assign value of outputSize to the member s_out of the CSO structure.
    CSO.s_state = 3*s;                                                                      // Assign value of statetSize to the member s_state of the CSO structure.
    CSO.Ts = sampleTime;                                                                    // Assign value of sampleTime to the member TS of the CSO structure.
    CSO.gamma = epsilon;                                                                    // Small constant used in the CSO observer.
    //-----------------------------------------------
    if(allocateMatrix(&CSO.alpha_1,s,s) && allocateMatrix(&CSO.alpha_2,s,s) && allocateMatrix(&CSO.alpha_3,s,s)){
        // Creating matrix arrays for alpha_1, alpha_2 and alpha_3:
        for(i = 0; i < s; i++){
            for(j = 0; j < s; j++){
                CSO.alpha_1.data[i][j] = gains[i][j];                                       // Assigning values to the matrix alpha_1 of CSO.
                CSO.alpha_2.data[i][j] = gains[i+s][j];                                     // Assigning values to the matrix alpha_2 of CSO.
                CSO.alpha_3.data[i][j] = gains[i+2*s][j];                                   // Assigning values to the matrix alpha_3 of CSO.
            }
        }
    }
    //-----------------------------------------------
    CSO.F_k = (float*)malloc(s * sizeof(float));                                            // Allocate memory for vector field F(k).
    CSO.G_k = (float*)malloc(s * sizeof(float));                                            // Allocate memory for vector field G(k).
    CSO.Z_0 = (float *)malloc(3*s * sizeof(float));                                         // Allocate memory for the initial state vector z(0) = [z1(0) z2(0) z3(0)]'.
    CSO.z1_k = (float *)malloc(s * sizeof(float));                                          // Allocate memory for the state vector z1(k).
    CSO.z1_kp1 = (float *)malloc(s * sizeof(float));                                        // Allocate memory for the state vector d(z1(k))/dt.
    CSO.z2_k = (float *)malloc(s * sizeof(float));                                          // Allocate memory for the state vector z2(k).
    CSO.z2_kp1 = (float *)malloc(s * sizeof(float));                                        // Allocate memory for the state vector d(z2(k))/dt.
    CSO.z3_k = (float *)malloc(s * sizeof(float));                                          // Allocate memory for the state vector z3(k).
    CSO.z3_kp1 = (float *)malloc(s * sizeof(float));                                        // Allocate memory for the state vector d(z3(k))/dt.
    CSO.y_k = (float *)malloc(m * sizeof(float));                                           // Allocate memory for the output vector y(k).
    CSO.flag = (bool *)malloc(sizeof(bool));                                                // Allocate memory for flag of the structure defined as CSO (disable or enable observer).
    //-----------------------------------------------
    CSO.INT = createIntegrator(3*s,sampleTime,1.0f);                                        // Create integrator structure within observer CSO global structure.
    CSO.SMDIF = createHOSMDifferentiator(3*Robots_Qty,sampleTime,diff_pg,diff_lc);          // Create HOSM-based differentiator structure within observer CSO global structure.
    //-----------------------------------------------
    CSO.flag[0] = false;                                                                    // Setting CSO flag to false.
    return CSO;
}
//---------------------------------------------------------------------------------------------------------------
// Adding initial conditions to high-gain observer 01 structured as CSO (variant x):
void init_CSx_Observer01(CSx_Observer CSO, float z_0[]){
    int i, j, s = 0, m = Robots_Qty-1, n = 3*Robots_Qty;                                    // Declaration of i, j, s, n and m as integer variables.
    float Xi_0[6*m];                                                                        // Variable to save initial conditions for CSO.INT integrator.
    float Xd_0[3*n];                                                                        // Variable to save initial conditions for CSO.SMDIF differentiator.
    for(i = 0; i < CSO.s_state; i++){
        Xi_0[i] = 0.0f;                                                                     // Saving initial conditions for x1(0) within CSO.INT structure.
    }
    for(i = 0; i < 3; i++){
        for (j = 0; j < m; j++){
            CSO.Z_0[s] = z_0[6*i+3+j];                                                      // Saving initial conditions data for z(0) within CSO structure.
            Xi_0[s+3*m] = z_0[6*i+3+j];                                                     // Saving initial conditions for x2(0) within CSO.INT structure.
            s++;                                                                            // Increasing s.
        }
    }
    for(i = 0; i < n; i++){
        Xd_0[i] = z_0[i];                                                                   // Saving initial conditions for x1(0) within CSO.SMDIF structure.
        Xd_0[i+n] = z_0[i+n];                                                               // Saving initial conditions for x2(0) within CSO.SMDIF structure.
        Xd_0[i+2*n] = 0.0f;                                                                 // Saving initial conditions for x3(0) within CSO.SMDIF structure (initial values for second derivatives of c(k) are assumed equal to zero).
    }
    // Initiating integrator CSO.INT and differentiator CSO.DIF:
    initIntegrator(CSO.INT,Xi_0);                                                           // Initialize integrator of CSO high-gain observer.
    initHOSMDifferentiator(CSO.SMDIF,Xd_0);                                                 // Initialize HOSM-based differentiator of CSO high-gain observer.
    // Initiating variables z1(k), z2(k) and z3(k):
    for(i = 0; i < m; i++){
        CSO.z1_k[i] = z_0[i+3];                                                             // Saving initial conditions data for z1(k) within CSO structure.
        CSO.z2_k[i] = z_0[i+n+3];                                                           // Saving initial conditions data for z2(k) within CSO structure.
        CSO.z3_k[i] = z_0[i+2*n+3];                                                         // Saving initial conditions data for z3(k) within CSO structure.
        CSO.z1_kp1[i] = 0.0f;                                                               // Computing initial values for state d(z1(k))/dt within CSO structure.
        CSO.z2_kp1[i] = 0.0f;                                                               // Computing initial values for state d(z2(k))/dt within CSO structure.
        CSO.z3_kp1[i] = 0.0f;                                                               // Computing initial values for state d(z3(k))/dt within CSO structure.
    }
    // Updating y(k):
    for(i = 0; i < n; i++){
        CSO.y_k[i] = CSO.SMDIF.y_k[i+n];                                                    // Saving initial conditions data for y(k) within CSO structure.
        CSO.y_k[i+n] = 0.0f;                                                                // Saving initial conditions data for y(k) within CSO structure.
    }
    for (j = 0; j < m; j++){
        CSO.y_k[j+3+n] = CSO.Z_0[j];                                                        // Saving initial conditions data for y(k) within CSO structure.
    }
    // Updating the observer flag:
    CSO.flag[0] = true;                                                                     // Flag settled to true, which enables the estimation algorithm on CSO structure.
}
//---------------------------------------------------------------------------------------------------------------
// Cluster space estimation function for CS observer 01 (variant x):
void CSx_Estimation01(CSx_Observer CSO, float fmr_u_k[], float fmr_c_k[], float fmr_params[]){
    int i, j, m = Robots_Qty-1, n = 3*Robots_Qty;                                           // Declaration of i, j, m and n as integer variables.
    // Getting output of integrator CSO.INT:
    for(i = 0; i < m; i++){
        CSO.z1_k[i] = CSO.INT.y_k[i];                                                       // Updating data for z1(k) within CSO structure.
        CSO.z2_k[i] = CSO.INT.y_k[i+m];                                                     // Updating data for z2(k) within CSO structure.
        CSO.z3_k[i] = CSO.INT.y_k[i+2*m];                                                   // Updating data for z3(k) within CSO structure.
    }
    // Execute estimation algorithm:
    if(CSO.flag[0]){
        HOSMDifferentiation(CSO.SMDIF,fmr_c_k);                                             // Compute differentiation of input[], entered in this estimation function.
        switch(Robots_Qty){
            case 2:{
                // Computing values of the matrix -inv(D)*H(k), in the cluster space:
                float H12_k = 1.5f*(CSO.SMDIF.y_k[8] + CSO.SMDIF.y_k[10])*jw_1/(fmr_params[0]);  // Precompute value in {1,2} position of H(k) matrix.
                float H45_k = 1.5f*(CSO.SMDIF.y_k[8] + CSO.SMDIF.y_k[11])*jw_2/(fmr_params[1]);  // Precompute value in {4,5} position of H(k) matrix.
                float w11_k = H12_k*fmr_params[8];                                          // Precompute value in {1,2} position of W1(k) matrix.
                float w12_k = H45_k*fmr_params[10];                                         // Precompute value in {4,5} position of W1(k) matrix.
                float w13_k = (w11_k - w12_k)/2.0f;                                         // Precompute operation 1 in W1(k).
                // Computing W1_k as the fourth row of -J(c)*inv(D)*H(c)*inv(J(c)) + d(J(c))/dt*inv(J(c)):
                float W1_k[1][3*Robots_Qty] = {
                    {                                    cos(fmr_c_k[2])*w13_k,
                                                        -sin(fmr_c_k[2])*w13_k,
                     (fmr_c_k[3]*(w11_k + w12_k + 2.0f*CSO.SMDIF.y_k[8]))/2.0f,
                                                                          0.0f,
                                                                          0.0f,
                                                                          0.0f
                    }
                };
                // Computing values of the matrix 1000.0*inv(D)*B(k):
                float w20a_k = fmr_c_k[2] + fmr_c_k[4];                                     // Precompute angular addition 0a in W2(k).
                float w20b_k = fmr_c_k[2] + fmr_c_k[5];                                     // Precompute angular addition 0b in W2(k).
                float w21_k = delta_1 + w20a_k;                                             // Precompute angular addition 1 in W2(k).
                float w22_k = delta_1 - w20a_k;                                             // Precompute angular subtraction 1 in W2(k).
                float w23_k = delta_2 + w20b_k;                                             // Precompute angular addition 2 in W2(k).
                float w24_k = delta_2 - w20b_k;                                             // Precompute angular subtraction 2 in W2(k).
                float w25_k = fmr_params[18]/2.0f;                                          // Precompute division 1 in W2(k).
                float w26_k = fmr_params[19]/2.0f;                                          // Precompute division 2 in W2(k).
                float w27_k = w20a_k + fmr_c_k[2];                                          // Precompute angular addition 3 in W2(k).
                float w28_k = w20b_k + fmr_c_k[2];                                          // Precompute angular addition 4 in W2(k).
                // Computing W2_k as the fourth row of 1000.0*J(c)*inv(D)*B(c):
                float W2_k[1][3*Robots_Qty] = {
                    { (w25_k*cos(fmr_c_k[2] + w21_k)),
                     -(w25_k*cos(fmr_c_k[2] - w22_k)),
                                   (w25_k*sin(w27_k)),
                     -(w26_k*cos(fmr_c_k[2] + w23_k)),
                      (w26_k*cos(fmr_c_k[2] - w24_k)),
                                  -(w26_k*sin(w28_k))
                    }
                };
                //-----------------------------------------------
                // Updating vector fields F(k) and G(k), together with variables z1(k + 1), z2(k + 1) and z3(k + 1) where derivative of estimated signals were defined in this algorithm:
                float Z_kp1[3*m];                                                           // Creates a support variable for concatenate z1(k + 1), z2(k + 1) and z3(k + 1) in only a vector.
                for(i = 0; i < m; i++){
                    CSO.F_k[i] = 0.0f;                                                      // Clear i^th value of vector field F(k).
                    CSO.G_k[i] = 0.0f;                                                      // Clear i^th value of vector field G(k).
                    CSO.z1_kp1[i] = 0.0f;                                                   // Clear i^th value of z1(k + 1).
                    CSO.z2_kp1[i] = 0.0f;                                                   // Clear i^th value of z2(k + 1).
                    CSO.z3_kp1[i] = 0.0f;                                                   // Clear i^th value of z3(k + 1).
                    for(j = 0; j < m; j++){
                        // Compute state correction for z1(k + 1), z2(k + 1) and z3(k + 1):
                        CSO.z1_kp1[i] += CSO.alpha_1.data[i][j]*(fmr_c_k[j+3] - CSO.z1_k[j])/(CSO.gamma);
                        CSO.z2_kp1[i] += CSO.alpha_2.data[i][j]*(fmr_c_k[j+3] - CSO.z1_k[j])/(CSO.gamma*CSO.gamma);
                        // Final prediction result for z3(k + 1):
                        CSO.z3_kp1[i] += CSO.alpha_3.data[i][j]*(fmr_c_k[j+3] - CSO.z1_k[j])/(CSO.gamma*CSO.gamma*CSO.gamma);
                    }
                    for(j = 0; j < n; j++){
                        // Updating vector fields F(k) and G(k):
                        CSO.F_k[i] += W1_k[i][j]*CSO.SMDIF.y_k[j+n];                        // Compute vector field F(k).
                        CSO.G_k[i] += W2_k[i][j]*fmr_u_k[j];                                // Compute vector field G(k).
                    }
                    CSO.z1_kp1[i] += CSO.z2_k[i];                                           // Final prediction result for z1(k + 1).
                    CSO.z2_kp1[i] += CSO.z3_k[i] + CSO.F_k[i] + CSO.G_k[i];                 // Final prediction result for z2(k + 1).
                    // Concatenation of z1(k + 1), z2(k + 1) and z3(k + 1) within z(k + 1):
                    Z_kp1[i] = CSO.z1_kp1[i];
                    Z_kp1[i+m] = CSO.z2_kp1[i];
                    Z_kp1[i+2*m] = CSO.z3_kp1[i];
                }
                for(i = 0; i < n; i++){
                    // Output of high-gain observer CSO:
                    CSO.y_k[i] = CSO.SMDIF.y_k[i+n];                                        // Saving internal differentaition of CSO structure within its output y(k).
                    CSO.y_k[i+n] = 0.0f;
                }
                for (j = 0; j < m; j++){
                    CSO.y_k[j+3+n] = CSO.z3_k[j];                                           // Arranging disturbance estimations on output y(k), within CSO structure.
                }
                Integration(CSO.INT,Z_kp1);                                                 // Compute integration for x1(k + 1), x2(k + 1) and x3(k + 1).
                break;
            }
            case 3:{
                break;
            }
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Creating the sliding surfaces:
Sl_Surfaces createSlidingSurfaces(float sampleTime, float gains[], float satValues[]){
    int i, s = 3*Robots_Qty;                                                                // Declaration of i, and s as integer variables.
    // Configuring the members of the SLS structure (sliding surfaces):
    Sl_Surfaces SLS;                                                                        // Creates sliding surfaces structure.
    SLS.s_in = 5*s;                                                                         // Assign value of inputSize to the member s_in of the SLS structure.
    SLS.s_out = s;                                                                          // Assign value of outputSize to the member s_out of the SLS structure.
    SLS.s_state = s;                                                                        // Assign value of statetSize to the member s_state of the SLS structure.
    SLS.Ts = sampleTime;                                                                    // Assign value of sampleTime to the member TS of the SLS structure.
    //-----------------------------------------------
    SLS.Gamma = (float *)malloc(s+1 * sizeof(float));                                       // Allocate memory for the sliding gains within SLS.
    SLS.E_0 = (float *)malloc(2*s * sizeof(float));                                         // Allocate memory for the initial tracking error state vector e(0) = [e1(0) e2(0)]'.
    SLS.v1_max = (float *)malloc(s * sizeof(float));                                        // Allocate memory for the saturation values for sliding functions on SLS.
    SLS.v1_k = (float *)malloc(s * sizeof(float));                                          // Allocate memory for the state vector v1(k).
    SLS.v2_k = (float *)malloc(s * sizeof(float));                                          // Allocate memory for the state vector v2(k).
    SLS.v2_kp1 = (float *)malloc(s * sizeof(float));                                        // Allocate memory for the state vector d(v2(k))/dt.
    SLS.y_k = (float *)malloc(s * sizeof(float));                                           // Allocate memory for the output vector y(k) of sliding surfaces as SLS.
    SLS.flag = (bool *)malloc(sizeof(bool));                                                // Allocate memory for flag of the structure defined within SLS (disable or enable sliding surfaces generation).
    //-----------------------------------------------
    // Creating vector array for Gamma:
    for(i = 0; i < s+1; i++){
        SLS.Gamma[i] = gains[i];                                                            // Assigning values to the gains vector Gamma, of SLS.
        if(i < s) SLS.v1_max[i] = satValues[i];                                             // Saving the previously assigned saturation values.
    }
    //-----------------------------------------------
    SLS.INT = createIntegrator(s,sampleTime,1.0f);                                          // Create integrator structure within sliding surfaces structure as SLS.INT.
    //-----------------------------------------------
    SLS.flag[0] = false;                                                                    // Setting SLS flag to false.
    return SLS;
}
//---------------------------------------------------------------------------------------------------------------
// Adding initial conditions to sliding surfaces structured within SLS:
void init_SlidingSurfaces(Sl_Surfaces SLS, float ref_z_0[], float fmr_z_0[]){
    int i;                                                                                  // Declaration of i as integer variable.
    float Xi_0[2*SLS.s_out];                                                                // Variable to save initial conditions for SLS.INT integrator.
    for(i = 0; i < SLS.s_out; i++){
        Xi_0[i] = fmr_z_0[i] - ref_z_0[i];                                                  // Saving initial conditions for x1(0) within SLS.INT structure.
        Xi_0[i+SLS.s_out] = 0.0f;                                                           // Saving initial conditions for x2(0) within SLS.INT structure.
        SLS.E_0[i] = Xi_0[i];                                                               // Saving the initial tracking errors as e1(0).
        SLS.E_0[i+SLS.s_out] = fmr_z_0[i+SLS.s_out] - ref_z_0[i+SLS.s_out];                 // Saving the initial tracking errors as e2(0).
        SLS.v2_k[i] = 0.0f;                                                                 // Saving initial conditions for vector field v2(k) within SLS structure.
        SLS.v1_k[i] = 0.0f;                                                                 // Saving initial conditions for vector field v1(k) within SLS structure.
        SLS.v2_kp1[i] = Xi_0[i];                                                            // Saving initial conditions for d(v2(k))/dt functions within SLS structure.
        SLS.y_k[i] = 0.0f;                                                                  // Saving initial conditions for output y(k) within SLS structure.
    }
    initIntegrator(SLS.INT,Xi_0);                                                           // Initialize internal integrator of sliding SLS structure.
    // Updating the sliding flag:
    SLS.flag[0] = true;                                                                     // Flag settled to true, which enables the generation of sliding surfaces on SLS structure.
}
//---------------------------------------------------------------------------------------------------------------
// Compute the sliding surfaces algorithm that updates structured variables within SLS:
void compute_SlidingSurfaces(Sl_Surfaces SLS, float ref_y_k[], float fmr_c_k[], float cso_y_k[]){
    int i;                                                                                  // Declaration of i as integer variable.
    // Execute time-updating algorithm for designed sliding surfaces as SLS:
    if(SLS.flag[0]){
        for(i = 0; i < SLS.s_out; i++){
            // Getting output of integrator SLS.INT:
            SLS.v2_k[i] = SLS.INT.y_k[i];                                                   // Updating data for v2(k) within SLS structure (integration function).
            //-----------------------------------------------
            // Cumputing the current values for sliding surfaces as v1(k):
            float OP1 = 2.0f*SLS.Gamma[i];                                                  // Precomputing operation 1.
            float OP2 = SLS.Gamma[i]*SLS.Gamma[i];                                          // Precomputing operation 2.
            SLS.v1_k[i] = cso_y_k[i] - ref_y_k[i+SLS.s_out] + OP1*(fmr_c_k[i] - ref_y_k[i]) + OP2*SLS.v2_k[i] - SLS.E_0[i+SLS.s_out] - OP1*SLS.E_0[i];
            //-----------------------------------------------
            SLS.y_k[i] = saturation(SLS.v1_k[i],-SLS.v1_max[i],SLS.v1_max[i]);              // Updating output y(k) of SLS structure.
            // Updating d(v2(k))/dt:
            SLS.v2_kp1[i] = fmr_c_k[i] - ref_y_k[i] + SLS.Gamma[SLS.s_out]*(SLS.y_k[i] - SLS.v1_k[i]);
        }
        Integration(SLS.INT,SLS.v2_kp1);                                                    // Compute integration for d(v2(k))/dt as v2_kp1.
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Creating the SMC controller data structure in the cluster space as SMC:
SMC_Controller createSMC_Controller(float gains[], float unc_values[], float dis_values[], float sls_gains[], float epsilon){
    int i, s = 3*Robots_Qty;                                                                // Declaration of i, and s as integer variables.
    // Configuring the members of the SMC structure (sliding mode control):
    SMC_Controller SMC;                                                                     // Creates sliding mode controller data structure.
    SMC.s_in = 5*s;                                                                         // Assign value of inputSize to the member s_in of the SMC structure.
    SMC.s_out = s;                                                                          // Assign value of outputSize to the member s_out of the SMC structure.
    SMC.epsilon = epsilon;                                                                  // Small constant used in the SMC strategy.
    //-----------------------------------------------
    SMC.Gamma = (float *)malloc(s * sizeof(float));                                         // Allocate memory for the sliding gains within SMC.
    SMC.omega = (float *)malloc(s * sizeof(float));                                         // Allocate memory for the fixed control gains within SMC.
    SMC.rho = (float *)malloc(s * sizeof(float));                                           // Allocate memory for the disturbances bounding values within SMC strategy.
    SMC.Delta = (float *)malloc(4 * sizeof(float));                                         // Allocate memory for the uncertainties bounding values within SMC strategy.
    SMC.aux_u_k = (float *)malloc(s * sizeof(float));                                       // Allocate memory for the auxiliary control law within SMC strategy.
    SMC.kappa_k = (float *)malloc(s * sizeof(float));                                       // Allocate memory for the whole variant control gains within SMC strategy.
    SMC.ast_u_k = (float *)malloc(s * sizeof(float));                                       // Allocate memory for the tracking error based control law, within auxiliary control law of SMC.
    SMC.y_k = (float *)malloc(s * sizeof(float));                                           // Allocate memory for the output vector y(k) of sliding mode control strategy as SMC.
    SMC.flag = (bool *)malloc(sizeof(bool));                                                // Allocate memory for flag of the struct defined as SMC (disable or enable sliding mode control).
    //-----------------------------------------------
    // Assigning values to the gains:
    for(i = 0; i < s; i++){
        SMC.Gamma[i] = sls_gains[i];                                                        // Assigning values to the gains vector Gamma, of SMC.
        SMC.omega[i] = gains[i];                                                            // Assigning values to fixed control gains vector omega, within SMC.
        SMC.rho[i] = dis_values[i];                                                         // Assigning values to the disturbances bounding vector rho, within SMC.
        if(i < 4) SMC.Delta[i] = unc_values[i];                                             // Assigning values to the uncertainties bounding vector delta, within SMC.
    }
    //-----------------------------------------------
    SMC.flag[0] = false;                                                                    // Setting SMC flag to false.
    return SMC;
}
//---------------------------------------------------------------------------------------------------------------
// Initializing the sliding mode controller structured as SMC:
void initSMC_Controller(SMC_Controller SMC, float ref_z_0[], float cso_z_0[], float sls_e_0[], float fmr_params[]){
    int i, j;                                                                               // Declaration of i, and j as integer variables.
    switch(Robots_Qty){
        case 2:{
            // Computing the matrix H(k):
            float H12_k = (cso_z_0[8] + cso_z_0[10])*(fmr_params[4] - mt_1);                // Precompute value in {1,2} position of H(k) matrix in the cluster space.
            float H45_k = (cso_z_0[8] + cso_z_0[11])*(fmr_params[6] - mt_2);                // Precompute value in {4,5} position of H(k) matrix in the cluster space.
            // Computing the matrix W1(k) = inv(B(k))*H(k)*inv(J(k)) - inv(B(k))*D*inv(J(k))*d(J(k))/dt*inv(J(k)) = -inv(gc(k))*fc(k):
            float w101_k = cso_z_0[2] + cso_z_0[4];                                         // Precompute angular addition 1 in W1(k).
            float w102_k = cso_z_0[2] + cso_z_0[5];                                         // Precompute angular subtraction 1 in W1(k).
            float w103_k = w101_k + delta_1;                                                // Precompute angular addition 1 in W1(k).
            float w104_k = w101_k - delta_1;                                                // Precompute angular subtraction 1 in W1(k).
            float w105_k = w102_k + delta_2;                                                // Precompute angular addition 2 in W1(k).
            float w106_k = w102_k - delta_2;                                                // Precompute angular subtraction 2 in W1(k).
            float w107_k = sinf(w101_k);                                                    // Precompute sin(ph1_k) in W1(k).
            float w108_k = cosf(w101_k);                                                    // Precompute cos(ph1_k) in W1(k).
            float w109_k = sinf(w102_k);                                                    // Precompute sin(ph2_k) in W1(k).
            float w110_k = cosf(w102_k);                                                    // Precompute cos(ph2_k) in W1(k).
            float w111_k = fmr_params[26]*H12_k;                                            // Precompute multiplication 1 in W1(k).
            float w112_k = fmr_params[27]*H45_k;                                            // Precompute multiplication 2 in W1(k).
            float w113_k = fmr_params[14]*H12_k;                                            // Precompute multiplication 3 in W1(k).
            float w114_k = fmr_params[15]*H45_k;                                            // Precompute multiplication 4 in W1(k).
            float w115_k = w101_k + cso_z_0[2];                                             // Precompute angular addition 3 in W1(k).
            float w116_k = w102_k + cso_z_0[2];                                             // Precompute angular addition 4 in W1(k).
            float w117_k = w115_k + delta_1;                                                // Precompute angular addition 5 in W1(k).
            float w118_k = w115_k - delta_1;                                                // Precompute angular addition 6 in W1(k).
            float w119_k = w116_k + delta_2;                                                // Precompute angular addition 7 in W1(k).
            float w120_k = w116_k - delta_2;                                                // Precompute angular addition 8 in W1(k).
            float w121_k = sinf(w115_k);                                                    // Precompute sin(w115(k)) in W1(k).
            float w122_k = cosf(w115_k);                                                    // Precompute cos(w115(k)) in W1(k).
            float w123_k = sinf(w117_k);                                                    // Precompute sin(w117(k)) in W1(k).
            float w124_k = cosf(w117_k);                                                    // Precompute cos(w117(k)) in W1(k).
            float w125_k = sinf(w118_k);                                                    // Precompute sin(w118(k)) in W1(k).
            float w126_k = cosf(w118_k);                                                    // Precompute cos(w118(k)) in W1(k).
            float w127_k = sinf(w116_k);                                                    // Precompute sin(w116(k)) in W1(k).
            float w128_k = cosf(w116_k);                                                    // Precompute cos(w116(k)) in W1(k).
            float w129_k = sinf(w119_k);                                                    // Precompute sin(w119(k)) in W1(k).
            float w130_k = cosf(w119_k);                                                    // Precompute cos(w119(k)) in W1(k).
            float w131_k = sinf(w120_k);                                                    // Precompute sin(w120(k)) in W1(k).
            float w132_k = cosf(w120_k);                                                    // Precompute cos(w120(k)) in W1(k).
            float w133_k = w121_k + w126_k;                                                 // Precompute addition 1 in W1(k).
            float w134_k = w121_k - w124_k;                                                 // Precompute subtraction 1 in W1(k).
            float w135_k = w122_k + w123_k;                                                 // Precompute addition 2 in W1(k).
            float w136_k = w127_k + w132_k;                                                 // Precompute addition 3 in W1(k).
            float w137_k = w127_k - w130_k;                                                 // Precompute subtraction 2 in W1(k).
            float w138_k = w128_k + w129_k;                                                 // Precompute addition 4 in W1(k).
            float w139_k = cso_z_0[3]*cso_z_0[8];                                           // Precompute multiplication 7 in W1(k).
            float w140_k = cso_z_0[3]*w113_k;                                               // Precompute multiplication 8 in W1(k).
            float w141_k = cso_z_0[3]*w114_k;                                               // Precompute multiplication 9 in W1(k).
            float w143_k = fmr_params[20]*cso_z_0[8];                                       // Precompute multiplication 11 in W1(k).
            float w144_k = fmr_params[20]*cso_z_0[9];                                       // Precompute multiplication 12 in W1(k).
            float w145_k = fmr_params[20]*w139_k;                                           // Precompute multiplication 13 in W1(k).
            float w147_k = fmr_params[22]*cso_z_0[8];                                       // Precompute multiplication 15 in W1(k).
            float w148_k = fmr_params[22]*cso_z_0[9];                                       // Precompute multiplication 16 in W1(k).
            float w149_k = fmr_params[22]*w139_k;                                           // Precompute multiplication 17 in W1(k).
            float w152_k = w145_k + w140_k;                                                 // Precompute addition 5 in W1(k).
            float w153_k = w149_k + w141_k;                                                 // Precompute addition 6 in W1(k).
            float w154_k = w143_k + w113_k;                                                 // Precompute addition 7 in W1(k).
            float w155_k = w147_k + w114_k;                                                 // Precompute addition 8 in W1(k).
            float w156_k = cosf(w103_k);                                                    // Precompute cos(w103(k)) in W1(k).
            float w157_k = sinf(w103_k);                                                    // Precompute sin(w103(k)) in W1(k).
            float w158_k = cosf(w104_k);                                                    // Precompute cos(w104(k)) in W1(k).
            float w159_k = sinf(w104_k);                                                    // Precompute sin(w104(k)) in W1(k).
            float w160_k = cosf(w105_k);                                                    // Precompute cos(w105(k)) in W1(k).
            float w161_k = sinf(w105_k);                                                    // Precompute sin(w105(k)) in W1(k).
            float w162_k = cosf(w106_k);                                                    // Precompute cos(w106(k)) in W1(k).
            float w163_k = sinf(w106_k);                                                    // Precompute sin(w106(k)) in W1(k).
            float w164_k = w156_k - w107_k;                                                 // Precompute subtraction 3 in W1(k).
            float w165_k = w157_k + w108_k;                                                 // Precompute addition 9 in W1(k).
            float w166_k = w158_k + w107_k;                                                 // Precompute addition 10 in W1(k).
            float w167_k = w159_k - w108_k;                                                 // Precompute subtraction 4 in W1(k).
            float w168_k = w160_k - w109_k;                                                 // Precompute subtraction 5 in W1(k).
            float w169_k = w161_k + w110_k;                                                 // Precompute addition 11 in W1(k).
            float w170_k = w162_k + w109_k;                                                 // Precompute addition 12 in W1(k).
            float w171_k = w163_k - w110_k;                                                 // Precompute subtraction 6 in W1(k).
            float w172_k = w121_k*fmr_params[28];                                           // Precompute multiplication 20 in W1(k).
            float w173_k = w122_k*fmr_params[28];                                           // Precompute multiplication 21 in W1(k).
            float w174_k = w127_k*fmr_params[29];                                           // Precompute multiplication 22 in W1(k).
            float w175_k = w128_k*fmr_params[29];                                           // Precompute multiplication 23 in W1(k).
            float W1_k[3*Robots_Qty][3*Robots_Qty] = {
                { w113_k*w167_k, -w113_k*w166_k,    -w144_k*w133_k + (w145_k - w140_k)*w122_k + w152_k*w125_k,                     -w133_k*w154_k, 0.0f, 0.0f},
                { w113_k*w165_k, -w113_k*w164_k,                                w144_k*w134_k + w152_k*w135_k,                      w134_k*w154_k, 0.0f, 0.0f},
                {-w111_k*w107_k,  w111_k*w108_k, cso_z_0[9]*w173_k - w139_k*w172_k - cso_z_0[3]*w111_k*w121_k,  w173_k*cso_z_0[8] + w122_k*w111_k, 0.0f, 0.0f},
                { w114_k*w171_k, -w114_k*w170_k,     w148_k*w136_k - (w149_k - w141_k)*w128_k - w153_k*w131_k,                      w136_k*w155_k, 0.0f, 0.0f},
                { w114_k*w169_k, -w114_k*w168_k,                               -w148_k*w137_k - w153_k*w138_k,                     -w137_k*w155_k, 0.0f, 0.0f},
                {-w112_k*w109_k,  w112_k*w110_k, cso_z_0[3]*w112_k*w127_k - cso_z_0[9]*w175_k + w139_k*w174_k, -w175_k*cso_z_0[8] - w128_k*w112_k, 0.0f, 0.0f}
            };
            // Computing the matrix W2(k) = -inv(B(k))*D*inv(J(k)) = -inv(gc(k)):
            float w207_k = cso_z_0[3]*fmr_params[20];                                       // Precompute multiplication 7 in W2(k).
            float w208_k = cso_z_0[3]*fmr_params[22];                                       // Precompute multiplication 8 in W2(k).
            float W2_k[3*Robots_Qty][3*Robots_Qty] = {
                { w166_k*fmr_params[20],  w167_k*fmr_params[20], -fmr_params[32] + w207_k*(w126_k + w121_k), -(w122_k - w125_k)*fmr_params[20], -fmr_params[21],            0.0f},
                { w164_k*fmr_params[20],  w165_k*fmr_params[20], -fmr_params[32] + w207_k*(w124_k - w121_k),  (w122_k + w123_k)*fmr_params[20], -fmr_params[21],            0.0f},
                {-w108_k*fmr_params[28], -w107_k*fmr_params[28],        -fmr_params[30] - cso_z_0[3]*w173_k,                           -w172_k, -fmr_params[30],            0.0f},
                { w170_k*fmr_params[22],  w171_k*fmr_params[22], -fmr_params[33] - w208_k*(w132_k + w127_k),  (w128_k - w131_k)*fmr_params[22],            0.0f, -fmr_params[23]},
                { w168_k*fmr_params[22],  w169_k*fmr_params[22], -fmr_params[33] - w208_k*(w130_k - w127_k), -(w128_k + w129_k)*fmr_params[22],            0.0f, -fmr_params[23]},
                {-w110_k*fmr_params[29], -w109_k*fmr_params[29],        -fmr_params[31] + cso_z_0[3]*w175_k,                            w174_k,            0.0f, -fmr_params[31]}
            };
            //-----------------------------------------------
            // Computing SMC output y(k) from initial values of REF, CSO and SLS structures:
            for(i = 0; i < SMC.s_out; i++){
                SMC.kappa_k[i] = 0.0f;                                                      // Clear i^th value within gains vector kappa(k).
                SMC.aux_u_k[i] = 0.0f;                                                      // Clear i^th value of auxiliary control law.
                SMC.ast_u_k[i] = 0.0f;                                                      // Clear i^th values of complementary part of auxiliary control law.
                SMC.y_k[i] = 0.0f;                                                          // Clear SMC output.
                // Initial computing of the tracking error based control law:
                SMC.ast_u_k[i] = SMC.Gamma[i]*SMC.Gamma[i]*sls_e_0[i] + 2.0f*SMC.Gamma[i]*sls_e_0[i+SMC.s_out] - ref_z_0[i+2*SMC.s_out];
                // Initial computing of the auxiliary control input:
                SMC.aux_u_k[i] = SMC.ast_u_k[i];
            }
            // Initial computing of the variable control gains within the vector kappa(k):
            for(i = 0; i < SMC.s_out; i++){
                for(j = 0; j < SMC.s_out; j++){
                    // Initial computing of SMC strategy output y(k):
                    SMC.y_k[i] += W1_k[i][j]*cso_z_0[j+SMC.s_out] + W2_k[i][j]*SMC.aux_u_k[j];
                }
            }
            break;
        }
        case 3:{
            break;
        }
    }
    // Updating the sliding mode controller flag:
    SMC.flag[0] = true;                                                                     // Flag settled to true, which enables the control law algorithm on SMC structure.
}
//---------------------------------------------------------------------------------------------------------------
// SMC strategy computing function:
void computeSMC_Controller(SMC_Controller SMC, float ref_y_k[], float fmr_c_k[], float cso_y_k[], float sls_y_k[], float fmr_params[]){
    int i, j;                                                                               // Declaration of i, and j as integer variables.
    float hat_Fc_k[SMC.s_out];                                                              // Declaration of nominal vector field.
    float til_Fc_k[SMC.s_out];                                                              // Declaration of vector field with uncertainty maximum values.
    // Execute SMC algorithm:
    if(SMC.flag[0]){
        switch(Robots_Qty){
            case 2:{
                // Computing the matrix H(k):
                float H12_k = (cso_y_k[2] + cso_y_k[4])*(fmr_params[4] - mt_1);             // Precompute value in {1,2} position of H(k) matrix in the cluster space.
                float H45_k = (cso_y_k[2] + cso_y_k[5])*(fmr_params[6] - mt_2);             // Precompute value in {4,5} position of H(k) matrix in the cluster space.
                // Computing the matrix W1(k) = inv(B(k))*H(k)*inv(J(k)) - inv(B(k))*D*inv(J(k))*d(J(k))/dt*inv(J(k)) = -inv(gc(k))*fc(k) (without post multiplying by d(c)/dt):
                float w101_k = fmr_c_k[2] + fmr_c_k[4];                                     // Precompute angular addition 1 in W1(k).
                float w102_k = fmr_c_k[2] + fmr_c_k[5];                                     // Precompute angular subtraction 1 in W1(k).
                float w103_k = w101_k + delta_1;                                            // Precompute angular addition 1 in W1(k).
                float w104_k = w101_k - delta_1;                                            // Precompute angular subtraction 1 in W1(k).
                float w105_k = w102_k + delta_2;                                            // Precompute angular addition 2 in W1(k).
                float w106_k = w102_k - delta_2;                                            // Precompute angular subtraction 2 in W1(k).
                float w107_k = sinf(w101_k);                                                 // Precompute sin(ph1_k) in W1(k).
                float w108_k = cosf(w101_k);                                                 // Precompute cos(ph1_k) in W1(k).
                float w109_k = sinf(w102_k);                                                 // Precompute sin(ph2_k) in W1(k).
                float w110_k = cosf(w102_k);                                                 // Precompute cos(ph2_k) in W1(k).
                float w111_k = fmr_params[26]*H12_k;                                        // Precompute multiplication 2 in W1(k).
                float w112_k = fmr_params[27]*H45_k;                                        // Precompute multiplication 4 in W1(k).
                float w113_k = fmr_params[14]*H12_k;                                        // Precompute multiplication 5 in W1(k).
                float w114_k = fmr_params[15]*H45_k;                                        // Precompute multiplication 6 in W1(k).
                float w115_k = w101_k + fmr_c_k[2];                                         // Precompute angular addition 3 in W1(k).
                float w116_k = w102_k + fmr_c_k[2];                                         // Precompute angular addition 4 in W1(k).
                float w117_k = w115_k + delta_1;                                            // Precompute angular addition 5 in W1(k).
                float w118_k = w115_k - delta_1;                                            // Precompute angular addition 6 in W1(k).
                float w119_k = w116_k + delta_2;                                            // Precompute angular addition 7 in W1(k).
                float w120_k = w116_k - delta_2;                                            // Precompute angular addition 8 in W1(k).
                float w121_k = sinf(w115_k);                                                // Precompute sin(w115(k)) in W1(k).
                float w122_k = cosf(w115_k);                                                // Precompute cos(w115(k)) in W1(k).
                float w123_k = sinf(w117_k);                                                // Precompute sin(w117(k)) in W1(k).
                float w124_k = cosf(w117_k);                                                // Precompute cos(w117(k)) in W1(k).
                float w125_k = sinf(w118_k);                                                // Precompute sin(w118(k)) in W1(k).
                float w126_k = cosf(w118_k);                                                // Precompute cos(w118(k)) in W1(k).
                float w127_k = sinf(w116_k);                                                // Precompute sin(w116(k)) in W1(k).
                float w128_k = cosf(w116_k);                                                // Precompute cos(w116(k)) in W1(k).
                float w129_k = sinf(w119_k);                                                // Precompute sin(w119(k)) in W1(k).
                float w130_k = cosf(w119_k);                                                // Precompute cos(w119(k)) in W1(k).
                float w131_k = sinf(w120_k);                                                // Precompute sin(w120(k)) in W1(k).
                float w132_k = cosf(w120_k);                                                // Precompute cos(w120(k)) in W1(k).
                float w133_k = w121_k + w126_k;                                             // Precompute addition 1 in W1(k).
                float w134_k = w121_k - w124_k;                                             // Precompute subtraction 1 in W1(k).
                float w135_k = w122_k + w123_k;                                             // Precompute addition 2 in W1(k).
                float w136_k = w127_k + w132_k;                                             // Precompute addition 3 in W1(k).
                float w137_k = w127_k - w130_k;                                             // Precompute subtraction 2 in W1(k).
                float w138_k = w128_k + w129_k;                                             // Precompute addition 4 in W1(k).
                float w139_k = fmr_c_k[3]*cso_y_k[2];                                       // Precompute multiplication 7 in W1(k).
                float w140_k = fmr_c_k[3]*w113_k;                                           // Precompute multiplication 8 in W1(k).
                float w141_k = fmr_c_k[3]*w114_k;                                           // Precompute multiplication 9 in W1(k).
                float w143_k = fmr_params[20]*cso_y_k[2];                                   // Precompute multiplication 11 in W1(k).
                float w144_k = fmr_params[20]*cso_y_k[3];                                   // Precompute multiplication 12 in W1(k).
                float w145_k = fmr_params[20]*w139_k;                                       // Precompute multiplication 13 in W1(k).
                float w147_k = fmr_params[22]*cso_y_k[2];                                   // Precompute multiplication 15 in W1(k).
                float w148_k = fmr_params[22]*cso_y_k[3];                                   // Precompute multiplication 16 in W1(k).
                float w149_k = fmr_params[22]*w139_k;                                       // Precompute multiplication 17 in W1(k).
                float w152_k = w145_k + w140_k;                                             // Precompute addition 5 in W1(k).
                float w153_k = w149_k + w141_k;                                             // Precompute addition 6 in W1(k).
                float w154_k = w143_k + w113_k;                                             // Precompute addition 7 in W1(k).
                float w155_k = w147_k + w114_k;                                             // Precompute addition 8 in W1(k).
                float w156_k = cosf(w103_k);                                                // Precompute cos(w103(k)) in W1(k).
                float w157_k = sinf(w103_k);                                                // Precompute sin(w103(k)) in W1(k).
                float w158_k = cosf(w104_k);                                                // Precompute cos(w104(k)) in W1(k).
                float w159_k = sinf(w104_k);                                                // Precompute sin(w104(k)) in W1(k).
                float w160_k = cosf(w105_k);                                                // Precompute cos(w105(k)) in W1(k).
                float w161_k = sinf(w105_k);                                                // Precompute sin(w105(k)) in W1(k).
                float w162_k = cosf(w106_k);                                                // Precompute cos(w106(k)) in W1(k).
                float w163_k = sinf(w106_k);                                                // Precompute sin(w106(k)) in W1(k).
                float w164_k = w156_k - w107_k;                                             // Precompute subtraction 3 in W1(k).
                float w165_k = w157_k + w108_k;                                             // Precompute addition 9 in W1(k).
                float w166_k = w158_k + w107_k;                                             // Precompute addition 10 in W1(k).
                float w167_k = w159_k - w108_k;                                             // Precompute subtraction 4 in W1(k).
                float w168_k = w160_k - w109_k;                                             // Precompute subtraction 5 in W1(k).
                float w169_k = w161_k + w110_k;                                             // Precompute addition 11 in W1(k).
                float w170_k = w162_k + w109_k;                                             // Precompute addition 12 in W1(k).
                float w171_k = w163_k - w110_k;                                             // Precompute subtraction 6 in W1(k).
                float w172_k = w121_k*fmr_params[28];                                       // Precompute multiplication 20 in W1(k).
                float w173_k = w122_k*fmr_params[28];                                       // Precompute multiplication 21 in W1(k).
                float w174_k = w127_k*fmr_params[29];                                       // Precompute multiplication 22 in W1(k).
                float w175_k = w128_k*fmr_params[29];                                       // Precompute multiplication 23 in W1(k).
                float W1_k[3*Robots_Qty][3*Robots_Qty] = {
                    { w113_k*w167_k, -w113_k*w166_k,    -w144_k*w133_k + (w145_k - w140_k)*w122_k + w152_k*w125_k,                     -w133_k*w154_k, 0.0f, 0.0f},
                    { w113_k*w165_k, -w113_k*w164_k,                                w144_k*w134_k + w152_k*w135_k,                      w134_k*w154_k, 0.0f, 0.0f},
                    {-w111_k*w107_k,  w111_k*w108_k, cso_y_k[3]*w173_k - w139_k*w172_k - fmr_c_k[3]*w111_k*w121_k,  w173_k*cso_y_k[2] + w122_k*w111_k, 0.0f, 0.0f},
                    { w114_k*w171_k, -w114_k*w170_k,     w148_k*w136_k - (w149_k - w141_k)*w128_k - w153_k*w131_k,                      w136_k*w155_k, 0.0f, 0.0f},
                    { w114_k*w169_k, -w114_k*w168_k,                               -w148_k*w137_k - w153_k*w138_k,                     -w137_k*w155_k, 0.0f, 0.0f},
                    {-w112_k*w109_k,  w112_k*w110_k, fmr_c_k[3]*w112_k*w127_k - cso_y_k[3]*w175_k + w139_k*w174_k, -w175_k*cso_y_k[2] - w128_k*w112_k, 0.0f, 0.0f}
                };
                // Computing the matrix W2(k) = -inv(B(k))*D*inv(J(k)) = -inv(gc(k)):
                float w207_k = fmr_c_k[3]*fmr_params[20];                                   // Precompute multiplication 7 in W2(k).
                float w208_k = fmr_c_k[3]*fmr_params[22];                                   // Precompute multiplication 8 in W2(k).
                float W2_k[3*Robots_Qty][3*Robots_Qty] = {
                    { w166_k*fmr_params[20],  w167_k*fmr_params[20], -fmr_params[32] + w207_k*(w126_k + w121_k), -(w122_k - w125_k)*fmr_params[20], -fmr_params[21],            0.0f},
                    { w164_k*fmr_params[20],  w165_k*fmr_params[20], -fmr_params[32] + w207_k*(w124_k - w121_k),  (w122_k + w123_k)*fmr_params[20], -fmr_params[21],            0.0f},
                    {-w108_k*fmr_params[28], -w107_k*fmr_params[28],        -fmr_params[30] - fmr_c_k[3]*w173_k,                           -w172_k, -fmr_params[30],            0.0f},
                    { w170_k*fmr_params[22],  w171_k*fmr_params[22], -fmr_params[33] - w208_k*(w132_k + w127_k),  (w128_k - w131_k)*fmr_params[22],            0.0f, -fmr_params[23]},
                    { w168_k*fmr_params[22],  w169_k*fmr_params[22], -fmr_params[33] - w208_k*(w130_k - w127_k), -(w128_k + w129_k)*fmr_params[22],            0.0f, -fmr_params[23]},
                    {-w110_k*fmr_params[29], -w109_k*fmr_params[29],        -fmr_params[31] + fmr_c_k[3]*w175_k,                            w174_k,            0.0f, -fmr_params[31]}
                };
                // Computing the matrix W3(k) = J(k)*inv(D)*B(k)*inv(u_B(k))*u_D*inv(J(k)) = gc(k)*inv(u_gc(k)); and u_gc(k) is the version of gc(k) with maximum uncertainty values,
                // according to the bounds Delta[0] = a1, Delta[1] = a2, Delta[2] = a3 and Delta[3] = a4:
                float w301_k = SMC.Delta[0] + 1.0f;                                         // Precompute addition 1 in W3(k).
                float w302_k = SMC.Delta[3] + 1.0f;                                         // Precompute addition 2 in W3(k).
                float w303_k = fmr_c_k[2] + M_PI_4;                                         // Precompute angular addition 1 in W3(k).
                float w307_k = w302_k*2.0f;                                                 // Precompute multiplication 2 in W3(k).
                float w308_k = w307_k*fmr_params[4];                                        // Precompute multiplication 3 in W3(k).
                float w309_k = w307_k*fmr_params[6];                                        // Precompute multiplication 4 in W3(k).
                float w310_k = 2.0f*fmr_c_k[2];                                             // Precompute multiplication 5 in W3(k).
                float w311_k = sinf(w310_k);                                                // Precompute sin(...) 1 in W3(k).
                float w312_k = cosf(w310_k);                                                // Precompute cos(...) 1 in W3(k).
                float w313_k = 2.0f*fmr_c_k[3];                                             // Precompute multiplication 6 in W3(k).
                float w314_k = sinf(fmr_c_k[2]);                                            // Precompute sin(thc(0)) in W3(k).
                float w315_k = cosf(fmr_c_k[2]);                                            // Precompute cos(thc(0)) in W3(k).
                float w316_k = w314_k + w315_k;                                             // Precompute addition 5 in W3(k).
                float w317_k = w315_k - w314_k;                                             // Precompute addition 6 in W3(k).
                float w318_k = M_SQRT2*SMC.Delta[1];                                        // Precompute multiplication 7 in W3(k).
                float w319_k = w318_k*sinf(w303_k);                                         // Precompute multiplication 8 in W3(k).
                float w320_k = w318_k*cosf(w303_k);                                         // Precompute multiplication 9 in W3(k).
                float w321_k = fmr_params[34]*w307_k;                                       // Precompute multiplication 10 in W3(k).
                float w322_k = w314_k*fmr_params[40];                                       // Precompute multiplication 11 in W3(k).
                float w323_k = w315_k*fmr_params[40];                                       // Precompute multiplication 12 in W3(k).
                float w324_k = SMC.Delta[1]*w322_k;                                         // Precompute multiplication 13 in W3(k).
                float w325_k = SMC.Delta[1]*w323_k;                                         // Precompute multiplication 14 in W3(k).
                float w326_k = fmr_c_k[3]*fmr_params[5];                                    // Precompute multiplication 15 in W3(k).
                float w327_k = fmr_c_k[3]*fmr_params[7];                                    // Precompute multiplication 16 in W3(k).
                float w328_k = fmr_c_k[3]*w308_k;                                           // Precompute multiplication 17 in W3(k).
                float w329_k = fmr_c_k[3]*w309_k;                                           // Precompute multiplication 18 in W3(k).
                float w330_k = fmr_c_k[3]*w311_k;                                           // Precompute multiplication 19 in W3(k).
                float w331_k = fmr_c_k[3]*w312_k;                                           // Precompute multiplication 20 in W3(k).
                float w332_k = fmr_c_k[3]*w313_k;                                           // Precompute multiplication 21 in W3(k).
                float w333_k = fmr_c_k[3]*w321_k;                                           // Precompute multiplication 22 in W3(k).
                float w334_k = fmr_c_k[3]*w324_k;                                           // Precompute multiplication 23 in W3(k).
                float w335_k = fmr_c_k[3]*w325_k;                                           // Precompute multiplication 24 in W3(k).
                float w336_k = SMC.Delta[1]*fmr_params[39];                                 // Precompute multiplication 25 in W3(k).
                float w337_k = SMC.Delta[1]*w317_k;                                         // Precompute multiplication 26 in W3(k).
                float w338_k = SMC.Delta[1]/w308_k;                                         // Precompute division 1 in W3(k).
                float w339_k = SMC.Delta[1]/w309_k;                                         // Precompute division 2 in W3(k).
                float w340_k = w301_k*w313_k;                                               // Precompute multiplication 27 in W3(k).
                float w341_k = fmr_params[40]*w316_k;                                       // Precompute multiplication 28 in W3(k).
                float w342_k = fmr_params[39]*w312_k;                                       // Precompute multiplication 29 in W3(k).
                float w343_k = fmr_params[39]*w330_k;                                       // Precompute multiplication 30 in W3(k).
                float w344_k = fmr_params[34]*w313_k;                                       // Precompute multiplication 31 in W3(k).
                float w345_k = fmr_params[34]*w317_k;                                       // Precompute multiplication 32 in W3(k).
                float w346_k = w316_k*w344_k;                                               // Precompute multiplication 33 in W3(k).
                float w347_k = w321_k*w326_k;                                               // Precompute multiplication 34 in W3(k).
                float w348_k = w321_k*w327_k;                                               // Precompute multiplication 35 in W3(k).
                float w349_k = w332_k*w345_k;                                               // Precompute multiplication 36 in W3(k).
                float w350_k = SMC.Delta[1]*w341_k;                                         // Precompute multiplication 37 in W3(k).
                float w351_k = SMC.Delta[1]*w342_k;                                         // Precompute multiplication 38 in W3(k).
                float w352_k = SMC.Delta[1]*w343_k;                                         // Precompute multiplication 39 in W3(k).
                float w353_k = SMC.Delta[1]*w344_k;                                         // Precompute multiplication 40 in W3(k).
                float w354_k = SMC.Delta[1]*w346_k;                                         // Precompute multiplication 41 in W3(k).
                float w355_k = w301_k/w302_k;                                               // Precompute division 3 in W3(k).
                float w356_k = w320_k/w328_k;                                               // Precompute division 4 in W3(k).
                float w357_k = w320_k/w329_k;                                               // Precompute division 5 in W3(k).
                float w358_k = w324_k/w321_k;                                               // Precompute division 6 in W3(k).
                float w359_k = w325_k/w321_k;                                               // Precompute division 7 in W3(k).
                float w360_k = w336_k/w321_k;                                               // Precompute division 8 in W3(k).
                float w361_k = w353_k/w347_k;                                               // Precompute division 9 in W3(k).
                float w362_k = fmr_params[5]/w347_k;                                        // Precompute division 10 in W3(k).
                float w363_k = fmr_params[7]/w348_k;                                        // Precompute division 11 in W3(k).
                float W3_k[3*Robots_Qty][3*Robots_Qty] = {
                    {                w355_k,                 w360_k,                                  w360_k + w334_k/w321_k,                        -w359_k,                                 w338_k,                                 w339_k},
                    {                w360_k,                 w355_k,                                  w360_k + w335_k/w321_k,                        -w358_k,                                 w338_k,                                 w339_k},
                    {         w324_k/w333_k,         -w325_k/w333_k,        (fmr_params[34]*w340_k - w350_k + w352_k)/w333_k,           w312_k*w336_k/w333_k,                                 w356_k,                                -w357_k},
                    {               -w359_k,                -w358_k,                           w331_k*w360_k - w350_k/w321_k,         w355_k + w311_k*w360_k,                          w319_k/w308_k,                         -w319_k/w309_k},
                    {w361_k - w324_k*w362_k, w361_k + w325_k*w362_k, (w337_k*fmr_params[40] + w352_k)*w362_k + w349_k/w347_k, -w351_k*w362_k + w354_k/w347_k, (w340_k*fmr_params[4] - w337_k)/w328_k,                                 w357_k},
                    {w361_k - w324_k*w363_k, w361_k + w325_k*w363_k,                (w350_k + w352_k)*w363_k - w349_k/w348_k, -w351_k*w363_k - w354_k/w348_k,                                -w356_k, (w340_k*fmr_params[6] + w337_k)/w329_k}
                };
                // Computing the matrix W4(k) = J(k)*(inv(D)*H(k) - inv(u_D)*u_H(k))*inv(J(k)), needed to subsequently compute [u_fc(k) - f_c(k)] = W4(k)*d(c(k))/dt.
                // and u_fc(k) is the version of fc(k) with maximum uncertainty values, according to Delta[0] = a1, Delta[1] = a2, Delta[2] = a3 and Delta[3] = a4:
                float w4001_k = 2.0f*SMC.Delta[1];                                          // Precompute multiplication 1 in W4(k).
                float w4002_k = w4001_k*SMC.Delta[1];                                       // Precompute multiplication 2 in W4(k).
                float w4003_k = fmr_params[4]*SMC.Delta[2];                                 // Precompute multiplication 3 in W4(k).
                float w4004_k = fmr_params[6]*SMC.Delta[2];                                 // Precompute multiplication 4 in W4(k).
                float w4005_k = H12_k*SMC.Delta[1];                                         // Precompute multiplication 5 in W4(k).
                float w4006_k = H45_k*SMC.Delta[1];                                         // Precompute multiplication 6 in W4(k).
                float w4007_k = fmr_c_k[3]*w314_k;                                          // Precompute multiplication 7 in W4(k).
                float w4008_k = fmr_c_k[3]*w315_k;                                          // Precompute multiplication 8 in W4(k).
                float w4011_k = fmr_params[4]*w301_k;                                       // Precompute multiplication 9 in W4(k).
                float w4012_k = fmr_params[5]*w301_k;                                       // Precompute multiplication 10 in W4(k).
                float w4013_k = fmr_params[6]*w301_k;                                       // Precompute multiplication 11 in W4(k).
                float w4014_k = fmr_params[7]*w301_k;                                       // Precompute multiplication 12 in W4(k).
                float w4015_k = fmr_params[4]*w313_k;                                       // Precompute multiplication 13 in W4(k).
                float w4016_k = fmr_params[6]*w313_k;                                       // Precompute multiplication 14 in W4(k).
                float w4017_k = w301_k*w314_k;                                              // Precompute multiplication 15 in W4(k).
                float w4018_k = w301_k*w315_k;                                              // Precompute multiplication 16 in W4(k).
                float w4019_k = w301_k*w4007_k;                                             // Precompute multiplication 17 in W4(k).
                float w4020_k = w301_k*w4008_k;                                             // Precompute multiplication 18 in W4(k).
                float w4021_k = w301_k*fmr_params[38];                                      // Precompute multiplication 19 in W4(k).
                float w4022_k = w301_k*fmr_params[41];                                      // Precompute multiplication 20 in W4(k).
                float w4023_k = 2.0f*w4011_k;                                               // Precompute multiplication 21 in W4(k).
                float w4024_k = 2.0f*w4013_k;                                               // Precompute multiplication 22 in W4(k).
                float w4025_k = w314_k*SMC.Delta[1];                                        // Precompute multiplication 23 in W4(k).
                float w4026_k = w315_k*SMC.Delta[1];                                        // Precompute multiplication 24 in W4(k).
                float w4027_k = w4007_k*SMC.Delta[1];                                       // Precompute multiplication 25 in W4(k).
                float w4028_k = w4008_k*SMC.Delta[1];                                       // Precompute multiplication 26 in W4(k).
                float w4029_k = SMC.Delta[1] + w4011_k;                                     // Precompute addition 3 in W4(k).
                float w4030_k = w4011_k - SMC.Delta[1];                                     // Precompute subtraction 1 in W4(k).
                float w4031_k = w4012_k - SMC.Delta[1];                                     // Precompute subtraction 2 in W4(k).
                float w4032_k = SMC.Delta[1] + w4013_k;                                     // Precompute addition 4 in W4(k).
                float w4033_k = w4013_k - SMC.Delta[1];                                     // Precompute subtraction 3 in W4(k).
                float w4034_k = w4014_k - SMC.Delta[1];                                     // Precompute subtraction 4 in W4(k).
                float w4035_k = w4003_k + w4005_k;                                          // Precompute addition 5 in W4(k).
                float w4036_k = w4003_k - w4005_k;                                          // Precompute subtraction 5 in W4(k).
                float w4037_k = w4004_k + w4006_k;                                          // Precompute addition 6 in W4(k).
                float w4038_k = w4004_k - w4006_k;                                          // Precompute subtraction 6 in W4(k).
                float w4039_k = w4021_k - w4001_k;                                          // Precompute subtraction 7 in W4(k).
                float w4040_k = w4022_k - w4001_k;                                          // Precompute subtraction 8 in W4(k).
                float w4041_k = w4023_k - w4001_k;                                          // Precompute subtraction 9 in W4(k).
                float w4042_k = w4024_k - w4001_k;                                          // Precompute subtraction 10 in W4(k).
                float w4043_k = w313_k*w4030_k;                                             // Precompute multiplication 27 in W4(k).
                float w4044_k = w313_k*w4033_k;                                             // Precompute multiplication 28 in W4(k).
                float w4045_k = w314_k*w4035_k;                                             // Precompute multiplication 29 in W4(k).
                float w4046_k = w314_k*w4036_k;                                             // Precompute multiplication 30 in W4(k).
                float w4047_k = w314_k*w4037_k;                                             // Precompute multiplication 31 in W4(k).
                float w4048_k = w314_k*w4038_k;                                             // Precompute multiplication 32 in W4(k).
                float w4049_k = w315_k*w4031_k;                                             // Precompute multiplication 33 in W4(k).
                float w4050_k = w315_k*w4035_k;                                             // Precompute multiplication 34 in W4(k).
                float w4051_k = w315_k*w4036_k;                                             // Precompute multiplication 35 in W4(k).
                float w4052_k = w315_k*w4037_k;                                             // Precompute multiplication 36 in W4(k).
                float w4053_k = w315_k*w4038_k;                                             // Precompute multiplication 37 in W4(k).
                float w4054_k = w4011_k*w4031_k;                                            // Precompute multiplication 38 in W4(k).
                float w4055_k = w4012_k*w4029_k;                                            // Precompute multiplication 39 in W4(k).
                float w4056_k = w4013_k*w4034_k;                                            // Precompute multiplication 40 in W4(k).
                float w4057_k = w4014_k*w4032_k;                                            // Precompute multiplication 41 in W4(k).
                float w4058_k = w4015_k*w4030_k;                                            // Precompute multiplication 42 in W4(k).
                float w4059_k = w4016_k*w4033_k;                                            // Precompute multiplication 43 in W4(k).
                float w4060_k = w4017_k*w4031_k;                                            // Precompute multiplication 44 in W4(k).
                float w4061_k = w4017_k*w4034_k;                                            // Precompute multiplication 45 in W4(k).
                float w4062_k = w4018_k*w4034_k;                                            // Precompute multiplication 46 in W4(k).
                float w4063_k = w314_k*w4054_k;                                             // Precompute multiplication 47 in W4(k).
                float w4064_k = w314_k*w4056_k;                                             // Precompute multiplication 48 in W4(k).
                float w4065_k = w315_k*w4054_k;                                             // Precompute multiplication 49 in W4(k).
                float w4066_k = w315_k*w4056_k;                                             // Precompute multiplication 50 in W4(k).
                float w4067_k = fmr_params[4]*w4041_k;                                      // Precompute multiplication 51 in W4(k).
                float w4068_k = fmr_params[6]*w4042_k;                                      // Precompute multiplication 52 in W4(k).
                float w4069_k = w340_k*w4030_k;                                             // Precompute multiplication 53 in W4(k).
                float w4070_k = w340_k*w4033_k;                                             // Precompute multiplication 54 in W4(k).
                float w4071_k = w4025_k*w4039_k;                                            // Precompute multiplication 55 in W4(k).
                float w4072_k = w4025_k*w4040_k;                                            // Precompute multiplication 56 in W4(k).
                float w4073_k = w4026_k*w4039_k;                                            // Precompute multiplication 57 in W4(k).
                float w4074_k = w4026_k*w4040_k;                                            // Precompute multiplication 58 in W4(k).
                float w4075_k = w4031_k*w4035_k;                                            // Precompute multiplication 59 in W4(k).
                float w4076_k = w4031_k*w4036_k;                                            // Precompute multiplication 60 in W4(k).
                float w4077_k = w4034_k*w4037_k;                                            // Precompute multiplication 61 in W4(k).
                float w4078_k = w4034_k*w4038_k;                                            // Precompute multiplication 62 in W4(k).
                float w4079_k = w4035_k*w4039_k;                                            // Precompute multiplication 63 in W4(k).
                float w4080_k = w4036_k*w4039_k;                                            // Precompute multiplication 64 in W4(k).
                float w4081_k = w4037_k*w4040_k;                                            // Precompute multiplication 65 in W4(k).
                float w4082_k = w4038_k*w4040_k;                                            // Precompute multiplication 66 in W4(k).
                float w4083_k = w4017_k*w4075_k;                                            // Precompute multiplication 67 in W4(k).
                float w4084_k = w4017_k*w4076_k;                                            // Precompute multiplication 68 in W4(k).
                float w4085_k = w4017_k*w4077_k;                                            // Precompute multiplication 69 in W4(k).
                float w4086_k = w4017_k*w4078_k;                                            // Precompute multiplication 70 in W4(k).
                float w4087_k = w4018_k*w4075_k;                                            // Precompute multiplication 71 in W4(k).
                float w4088_k = w4018_k*w4076_k;                                            // Precompute multiplication 72 in W4(k).
                float w4089_k = w4018_k*w4077_k;                                            // Precompute multiplication 73 in W4(k).
                float w4090_k = w4018_k*w4078_k;                                            // Precompute multiplication 74 in W4(k).
                float w4091_k = w4025_k*w4079_k;                                            // Precompute multiplication 75 in W4(k).
                float w4092_k = w4025_k*w4081_k;                                            // Precompute multiplication 77 in W4(k).
                float w4093_k = w4026_k*w4080_k;                                            // Precompute multiplication 79 in W4(k).
                float w4094_k = w4026_k*w4082_k;                                            // Precompute multiplication 80 in W4(k).
                float w4095_k = w4055_k - w4002_k;                                          // Precompute subtraction 11 in W4(k).
                float w4096_k = w4057_k - w4002_k;                                          // Precompute subtraction 12 in W4(k).
                float w4097_k = w4013_k + w4014_k - w4001_k;                                // Precompute subtraction 13 in W4(k).
                float w4098_k = w4011_k*(w4049_k - w4043_k) + w4071_k;                      // Precompute operation 1 in W4(k).
                float w4099_k = fmr_params[4]*(w4060_k + w4069_k) + w4073_k;                // Precompute operation 2 in W4(k).
                float w4100_k = fmr_params[6]*(w4061_k - w4070_k) + w4074_k;                // Precompute operation 3 in W4(k).
                float w4101_k = fmr_params[6]*(w4062_k + w4070_k) + w4072_k;                // Precompute operation 4 in W4(k).
                float w4102_k = w4025_k*w4097_k - w4066_k;                                  // Precompute operation 5 in W4(k).
                float w4103_k = w4063_k + w4073_k;                                          // Precompute addition 7 in W4(k).
                float w4104_k = w4073_k - w4063_k;                                          // Precompute subtraction 14 in W4(k).
                float w4105_k = w4064_k + w4074_k;                                          // Precompute addition 8 in W4(k).
                float w4106_k = w4074_k - w4064_k;                                          // Precompute subtraction 15 in W4(k).
                float w4107_k = w4065_k + w4071_k;                                          // Precompute addition 9 in W4(k).
                float w4108_k = w4071_k - w4065_k;                                          // Precompute subtraction 16 in W4(k).
                float w4109_k = w4066_k + w4072_k;                                          // Precompute addition 10 in W4(k).
                float w4110_k = w4041_k*w4095_k;                                            // Precompute multiplication 81 in W4(k).
                float w4111_k = w4042_k*w4096_k;                                            // Precompute multiplication 82 in W4(k).
                float w4112_k = w4043_k*w4095_k;                                            // Precompute multiplication 83 in W4(k).
                float w4113_k = w4044_k*w4096_k;                                            // Precompute multiplication 84 in W4(k).
                float w4114_k = w4045_k*w4107_k;                                            // Precompute multiplication 85 in W4(k).
                float w4115_k = w4046_k*w4103_k;                                            // Precompute multiplication 86 in W4(k).
                float w4116_k = w4047_k*w4109_k;                                            // Precompute multiplication 87 in W4(k).
                float w4117_k = w4048_k*w4105_k;                                            // Precompute multiplication 88 in W4(k).
                float w4118_k = w4050_k*w4107_k;                                            // Precompute multiplication 89 in W4(k).
                float w4119_k = w4051_k*w4103_k;                                            // Precompute multiplication 90 in W4(k).
                float w4120_k = w4052_k*w4109_k;                                            // Precompute multiplication 91 in W4(k).
                float w4121_k = w4053_k*w4105_k;                                            // Precompute multiplication 92 in W4(k).
                float w4122_k = w4058_k*w4095_k;                                            // Precompute multiplication 93 in W4(k).
                float w4123_k = w4059_k*w4096_k;                                            // Precompute multiplication 94 in W4(k).
                float w4124_k = w4067_k*w4095_k;                                            // Precompute multiplication 95 in W4(k).
                float w4125_k = w4068_k*w4096_k;                                            // Precompute multiplication 96 in W4(k).
                float w4126_k = w4075_k/w4110_k;                                            // Precompute division 1 in W4(k).
                float w4127_k = w4076_k/w4110_k;                                            // Precompute division 2 in W4(k).
                float w4128_k = w4077_k/w4111_k;                                            // Precompute division 3 in W4(k).
                float w4129_k = w4078_k/w4111_k;                                            // Precompute division 4 in W4(k).
                float w4130_k = w4079_k/w4124_k;                                            // Precompute division 5 in W4(k).
                float w4131_k = w4080_k/w4124_k;                                            // Precompute division 6 in W4(k).
                float w4132_k = w4081_k/w4125_k;                                            // Precompute division 7 in W4(k).
                float w4133_k = w4082_k/w4125_k;                                            // Precompute division 8 in W4(k).
                float w4134_k = w4083_k/w4110_k;                                            // Precompute division 9 in W4(k).
                float w4135_k = w4084_k/w4112_k;                                            // Precompute division 10 in W4(k).
                float w4136_k = w4085_k/w4111_k;                                            // Precompute division 11 in W4(k).
                float w4137_k = w4086_k/w4113_k;                                            // Precompute division 12 in W4(k).
                float w4138_k = w4087_k/w4112_k;                                            // Precompute division 13 in W4(k).
                float w4139_k = w4088_k/w4110_k;                                            // Precompute division 14 in W4(k).
                float w4140_k = w4089_k/w4113_k;                                            // Precompute division 15 in W4(k).
                float w4141_k = w4090_k/w4111_k;                                            // Precompute division 16 in W4(k).
                float w4142_k = w4091_k/w4122_k;                                            // Precompute division 17 in W4(k).
                float w4143_k = w4092_k/w4123_k;                                            // Precompute division 18 in W4(k).
                float w4144_k = w4093_k/w4122_k;                                            // Precompute division 19 in W4(k).
                float w4145_k = w4094_k/w4123_k;                                            // Precompute division 20 in W4(k).
                float w4146_k = w4114_k/w4122_k;                                            // Precompute division 21 in W4(k).
                float w4147_k = w4115_k/w4124_k;                                            // Precompute division 22 in W4(k).
                float w4148_k = w4116_k/w4123_k;                                            // Precompute division 23 in W4(k).
                float w4149_k = w4117_k/w4125_k;                                            // Precompute division 24 in W4(k).
                float w4150_k = w4118_k/w4124_k;                                            // Precompute division 25 in W4(k).
                float w4151_k = w4119_k/w4122_k;                                            // Precompute division 26 in W4(k).
                float w4152_k = w4120_k/w4125_k;                                            // Precompute division 27 in W4(k).
                float w4153_k = w4121_k/w4123_k;                                            // Precompute division 28 in W4(k).
                float w4154_k = w4130_k - w4132_k;                                          // Precompute subtraction 17 in W4(k).
                float w4155_k = w4131_k - w4133_k;                                          // Precompute subtraction 18 in W4(k).
                float w4156_k = w4136_k - w4134_k;                                          // Precompute subtraction 19 in W4(k).
                float w4157_k = w4141_k - w4139_k;                                          // Precompute subtraction 20 in W4(k).
                float w4158_k = w4138_k - w4140_k + w4142_k - w4143_k;                      // Precompute operation 6 in W4(k).
                float w4159_k = w4137_k - w4135_k - w4144_k + w4145_k;                      // Precompute operation 7 in W4(k).
                float w4160_k = w4150_k + w4147_k;                                          // Precompute addition 11 in W4(k).
                float w4161_k = w4152_k + w4149_k;                                          // Precompute addition 12 in W4(k).
                float w4162_k = w4146_k - w4151_k;                                          // Precompute subtraction 21 in W4(k).
                float w4163_k = w4148_k - w4153_k;                                          // Precompute subtraction 22 in W4(k).
                float W4_k[3*Robots_Qty][3*Robots_Qty] = {
                    {     -w301_k*(w4126_k + w4128_k), SMC.Delta[1]*(w4131_k + w4133_k),                                                                             w4020_k*(w4128_k - w4126_k) - w4027_k*w4155_k,                                                           w4156_k + w4093_k/w4124_k - w4094_k/w4125_k, 0, 0},
                    {SMC.Delta[1]*(w4130_k + w4132_k),      -w301_k*(w4127_k + w4129_k),                                                                             w4019_k*(w4127_k - w4129_k) + w4028_k*w4154_k,                                                           w4157_k + w4091_k/w4124_k - w4092_k/w4125_k, 0, 0},
                    {                        -w4158_k,                         -w4159_k,                                                                                                      -(w4160_k + w4161_k),                                                                                  -(w4162_k + w4163_k), 0, 0},
                    {       w4156_k + w4026_k*w4154_k,        w4157_k + w4025_k*w4155_k, w4008_k*(w4035_k*w4104_k/w4124_k + w4037_k*w4106_k/w4125_k) - w4007_k*(w4036_k*w4108_k/w4124_k + w4038_k*w4102_k/w4125_k), w4051_k*w4108_k/w4124_k + w4053_k*w4102_k/w4125_k + w4045_k*w4104_k/w4124_k + w4047_k*w4106_k/w4125_k, 0, 0},
                    {w4158_k - w301_k*w4035_k/w4095_k, w4159_k - w301_k*w4036_k/w4095_k,                                                               w4050_k*w4098_k/w4124_k + w4046_k*w4099_k/w4124_k + w4161_k,                                           w4163_k - w4051_k*w4099_k/w4122_k + w4045_k*w4098_k/w4122_k, 0, 0},
                    {w4158_k - w301_k*w4037_k/w4096_k, w4159_k - w301_k*w4038_k/w4096_k,                                                               w4052_k*w4101_k/w4125_k + w4048_k*w4100_k/w4125_k + w4160_k,                                           w4162_k - w4053_k*w4100_k/w4123_k + w4047_k*w4101_k/w4123_k, 0, 0},
                };
                // Computing the matrix W5(k) = -J(k)*inv(D)*H(k)*inv(J(k)) + d(J(k))/dt*inv(J(k)), needed for SMC structure.
                float w501_k = fmr_params[4]*H45_k;                                         // Precompute multiplication 1 in W5(k).
                float w502_k = fmr_params[6]*H12_k;                                         // Precompute multiplication 2 in W5(k).
                float w503_k = w501_k - w502_k;                                             // Precompute subtraction 1 in W5(k).
                float w504_k = w501_k + w502_k;                                             // Precompute addition 1 in W5(k).
                float w507_k = H12_k/fmr_params[35] + H45_k/fmr_params[36];                 // Precompute operation 1 in W5(k).
                float w508_k = cso_y_k[3]/fmr_c_k[3];                                       // Precompute division 1 in W5(k).
                float w511_k = w314_k*w503_k;                                               // Precompute multiplication 7 in W5(k).
                float w512_k = w315_k*w503_k;                                               // Precompute multiplication 8 in W5(k).
                float w513_k = (w504_k + fmr_params[37]*cso_y_k[2])/w344_k;                 // Precompute operation 2 in W5(k).
                float w514_k = w503_k/fmr_params[37];                                       // Precompute division 2 in W5(k).
                float w515_k = w511_k/w344_k;                                               // Precompute division 3 in W5(k).
                float w516_k = w511_k/fmr_params[37];                                       // Precompute division 4 in W5(k).
                float w517_k = w512_k/fmr_params[37];                                       // Precompute division 5 in W5(k).
                float w518_k = w512_k/w344_k;                                               // Precompute division 6 in W5(k).
                float W5_k[3*Robots_Qty][3*Robots_Qty] = {
                    {   0.0f, -w507_k,                           -w4007_k*w514_k,  w517_k, 0.0f, 0.0f},
                    { w507_k,    0.0f,                           -w4008_k*w514_k, -w516_k, 0.0f, 0.0f},
                    { w515_k,  w518_k,                                   -w508_k, -w513_k, 0.0f, 0.0f},
                    {-w517_k,  w516_k, fmr_c_k[3]*w504_k/fmr_params[37] + w139_k,    0.0f, 0.0f, 0.0f},
                    {-w515_k, -w518_k,                                    w508_k,  w513_k, 0.0f, 0.0f},
                    {-w515_k, -w518_k,                                    w508_k,  w513_k, 0.0f, 0.0f}
                };
                // Computing the matrix W6(k) = J(k)*inv(D)*B(k) = -inv(W2(k)) = gc(k):
                float w603_k = w4015_k*r_1;                                                 // Precompute multiplication 3 in W6(k).
                float w604_k = w4016_k*r_2;                                                 // Precompute multiplication 4 in W6(k).
                float w607_k = 1000.0f/w603_k;                                              // Precompute division 3 in W6(k).
                float w608_k = 1000.0f/w604_k;                                              // Precompute division 4 in W6(k).
                float w609_k = w607_k*w122_k;                                               // Precompute multiplication 5 in W6(k).
                float w610_k = w607_k*w123_k;                                               // Precompute multiplication 6 in W6(k).
                float w611_k = w607_k*w125_k;                                               // Precompute multiplication 7 in W6(k).
                float w612_k = w607_k*w4015_k;                                              // Precompute multiplication 8 in W6(k).
                float w613_k = w608_k*w128_k;                                               // Precompute multiplication 9 in W6(k).
                float w614_k = w608_k*w129_k;                                               // Precompute multiplication 10 in W6(k).
                float w615_k = w608_k*w131_k;                                               // Precompute multiplication 11 in W6(k).
                float w616_k = w608_k*w4016_k;                                              // Precompute multiplication 12 in W6(k).
                float w617_k = w612_k*l_1/fmr_params[5];                                    // Precompute operation 1 in W6(k).
                float w618_k = w616_k*l_2/fmr_params[7];                                    // Precompute operation 2 in W6(k).
                float W6_k[3*Robots_Qty][3*Robots_Qty] = {
                    {-fmr_params[44]*w157_k,  fmr_params[44]*w159_k, fmr_params[44]*w108_k, -fmr_params[45]*w161_k,  fmr_params[45]*w163_k,  fmr_params[45]*w110_k},
                    { fmr_params[44]*w156_k, -fmr_params[44]*w158_k, fmr_params[44]*w107_k,  fmr_params[45]*w160_k, -fmr_params[45]*w162_k,  fmr_params[45]*w109_k},
                    {               -w610_k,                 w611_k,                w609_k,                 w614_k,                -w615_k,                -w613_k},
                    { fmr_params[44]*w124_k, -fmr_params[44]*w126_k, fmr_params[44]*w121_k, -fmr_params[45]*w130_k,  fmr_params[45]*w132_k, -fmr_params[45]*w127_k},
                    {       w610_k + w617_k,       -w611_k + w617_k,      -w609_k + w617_k,                -w614_k,                 w615_k,                 w613_k},
                    {                w610_k,                -w611_k,               -w609_k,       -w614_k + w618_k,        w615_k + w618_k,        w613_k + w618_k}
                };
                //-----------------------------------------------
                // Computing the SMC output y(k) from corresponding values of REF, CSO and SLS structures:
                for(i = 0; i < SMC.s_out; i++){
                    SMC.kappa_k[i] = 0.0f;                                                  // Clear i^th value within gains vector kappa(k).
                    SMC.aux_u_k[i] = 0.0f;                                                  // Clear i^th value of auxiliary control law.
                    SMC.ast_u_k[i] = 0.0f;                                                  // Clear i^th values of complementary part of auxiliary control law.
                    hat_Fc_k[i] = 0.0f;                                                     // Clear vector field ^{\hat}f_c(k).
                    til_Fc_k[i] = 0.0f;                                                     // Clear vector field ^{\tilde}f_c(k).
                    SMC.y_k[i] = 0.0f;                                                      // Clear SMC output.
                    // Updating the initial tracking error based control law:
                    SMC.ast_u_k[i] = SMC.Gamma[i]*SMC.Gamma[i]*(fmr_c_k[i] - ref_y_k[i]) + 2.0f*SMC.Gamma[i]*(cso_y_k[i] - ref_y_k[i+SMC.s_out]) - ref_y_k[i+2*SMC.s_out];
                    // Updating the vector fields hat_Fc_k and til_Fc_k:
                    for(j = 0; j < SMC.s_out; j++){
                        til_Fc_k[i] += fabsf(W4_k[i][j]*cso_y_k[j]);                        // Function fabsf(...) of math.h, gives the absolute value for single-precision floating-point numbers at its input argument.
                        hat_Fc_k[i] += W5_k[i][j]*cso_y_k[j];
                    }
                }
                for(i = 0; i < SMC.s_out; i++){
                    // Updating the variable control gains within the vector kappa(k):
                    for(j = 0; j < SMC.s_out; j++){
                        if(i == j) SMC.kappa_k[i] += fabs(W3_k[i][j])*(til_Fc_k[j] + SMC.omega[j]) + fabs(fabs(W3_k[i][j]) - 1.0f)*fabs(SMC.ast_u_k[j] + hat_Fc_k[j]) + fabs(W6_k[i][j])*SMC.rho[j];
                        else SMC.kappa_k[i] += fabs(W3_k[i][j])*(til_Fc_k[j] + SMC.omega[j] + SMC.ast_u_k[j] + hat_Fc_k[j]) + fabs(W6_k[i][j])*SMC.rho[j];
                    }
                    // Updating the auxiliary control input:
                    SMC.aux_u_k[i] = SMC.ast_u_k[i] + SMC.kappa_k[i]*tanh(SMC.epsilon*sls_y_k[i]);
                }
                for(i = 0; i < SMC.s_out; i++){
                    // Updating the output of SMC strategy --> y(k):
                    for(j = 0; j < SMC.s_out; j++){
                        SMC.y_k[i] += W1_k[i][j]*cso_y_k[j] + W2_k[i][j]*(SMC.aux_u_k[j] + cso_y_k[j+SMC.s_out]);
                    }
                }
                break;
            }
            case 3:{
                break;
            }
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Creating formation structure:
Formation createFormation(int qty){
    int i, j, s = 3*qty;                                                                    // Declaration of i, j and s as integer variables.
    // Configuring the members of the OMRs formation structure:
    Formation FMR;                                                                          // Creates a formation struct (FMR).
    FMR.qty = qty;                                                                          // OMRs quantity in the formation as FMR.
    //-----------------------------------------------
    FMR.q_k = (float *)malloc(3*qty * sizeof(float));                                       // Allocate memory for the robot space states vector q(k).
    FMR.c_k = (float *)malloc(3*qty * sizeof(float));                                       // Allocate memory for the cluster space states vector c(k).
    FMR.w_k = (float *)malloc(3*qty * sizeof(float));                                       // Allocate memory for the angular velocities vector w(k).
    FMR.u_k = (float *)malloc(3*qty * sizeof(float));                                       // Allocate memory for the control torques vector u(k).
    FMR.v_k = (float *)malloc(3*qty * sizeof(float));                                       // Allocate memory for the control voltages vector v(k).
    FMR.params = (float *)malloc(25*qty * sizeof(float));                                   // Allocate memory for precomputation of several constant values required by the formation control systems.
    FMR.flag = (bool *)malloc(2*qty * sizeof(bool));                                        // Allocate memory for the control voltages vector v(k).
    FMR.CORq = createAngleConverter(qty);                                                   // Creating the angle correction CORq structure within FMR.
    FMR.CORc = createAngleConverter(qty-1);                                                 // Creating the angle correction CORc structure within FMR.
    //-----------------------------------------------
    if(allocateStMatrix(&FMR.qs_k,s,16) && allocateStMatrix(&FMR.cs_k,s,16) && allocateStMatrix(&FMR.ws_k,s,16) && allocateStMatrix(&FMR.us_k,s,16) && allocateStMatrix(&FMR.vs_k,s,16)){
        FMR.flag[0] = true;                                                                 // Set flag 0 to TRUE.
        // Initializing values for allocated matrix:
        for(i = 0; i < s; i++){
            for(j = 0; j < 16; j++){
                FMR.qs_k.data[i][j] = 0x00;                                                 // Assigning initial zero values to the string-format elements of qs_k matrix.
                FMR.cs_k.data[i][j] = 0x00;                                                 // Assigning initial zero values to the string-format elements of cs_k matrix.
                FMR.ws_k.data[i][j] = 0x00;                                                 // Assigning initial zero values to the string-format elements of ws_k matrix.
                FMR.us_k.data[i][j] = 0x00;                                                 // Assigning initial zero values to the string-format elements of us_k matrix.
                FMR.vs_k.data[i][j] = 0x00;                                                 // Assigning initial zero values to the string-format elements of vs_k matrix.
            }
        }
    }
    //-----------------------------------------------
    switch(qty){
        case 2:
        // Computing values of diagonal matrix D and its inverse inv(D):
        FMR.params[0] = r_1*r_1;                                                            // Precompute r_1^2.
        FMR.params[1] = r_2*r_2;                                                            // Precompute r_2^2.
        FMR.params[2] = l_1*l_1;                                                            // Precompute l_1^2.
        FMR.params[3] = l_2*l_2;                                                            // Precompute l_2^2.
        FMR.params[4] = mt_1 + (1.5f*jw_1)/FMR.params[0];                                   // Precompute value in {1,1} position of D matrix.
        FMR.params[5] = jr_1 + (3.0f*jw_1*FMR.params[2])/FMR.params[0];                     // Precompute value in {3,3} position of D matrix.
        FMR.params[6] = mt_2 + (1.5f*jw_2)/FMR.params[1];                                   // Precompute value in {4,4} position of D matrix.
        FMR.params[7] = jr_2 + (3.0f*jw_2*FMR.params[3])/FMR.params[1];                     // Precompute value in {6,6} position of D matrix.
        FMR.params[8] = 1/FMR.params[4];                                                    // Precompute value in {1,1} position of D inverse matrix.
        FMR.params[9] = 1/FMR.params[5];                                                    // Precompute value in {3,3} position of D inverse matrix.
        FMR.params[10] = 1/FMR.params[6];                                                   // Precompute value in {4,4} position of D inverse matrix.
        FMR.params[11] = 1/FMR.params[7];                                                   // Precompute value in {6,6} position of D inverse matrix.
        // Computing another operations:
        FMR.params[12] = r_1/(2000.0f*l_1*(sinf(delta_1) + 1.0f));                          // Precompute value in {1,3} position of inverse B(k) matrix.
        FMR.params[13] = r_2/(2000.0f*l_2*(sinf(delta_2) + 1.0f));                          // Precompute value in {4,6} position of inverse B(k) matrix.
        FMR.params[14] = r_1/(1000.0f*(sinf(2.0f*delta_1) + 2.0f*cosf(delta_1)));           // Precompute auxiliar value 1 of inverse B(k) matrix.
        FMR.params[15] = r_2/(1000.0f*(sinf(2.0f*delta_2) + 2.0f*cosf(delta_2)));           // Precompute auxiliar value 1 of inverse B(k) matrix.
        FMR.params[16] = 1000.0f*l_1/r_1;                                                   // Precompute value in {3,1} position of B(k) matrix.
        FMR.params[17] = 1000.0f*l_2/r_2;                                                   // Precompute value in {3,1} position of B(k) matrix.
        FMR.params[18] = 1000.0f*FMR.params[8]/r_1;                                         // Precompute division 1.
        FMR.params[19] = 1000.0f*FMR.params[10]/r_2;                                        // Precompute division 2.
        FMR.params[20] = FMR.params[4]*FMR.params[14];                                      // Precompute multiplication 1.
        FMR.params[21] = FMR.params[5]*FMR.params[12];                                      // Precompute multiplication 2.
        FMR.params[22] = FMR.params[6]*FMR.params[15];                                      // Precompute multiplication 3.
        FMR.params[23] = FMR.params[7]*FMR.params[13];                                      // Precompute multiplication 4.
        FMR.params[24] = FMR.params[9]*FMR.params[16];                                      // Precompute multiplication 5.
        FMR.params[25] = FMR.params[11]*FMR.params[17];                                     // Precompute multiplication 6.
        FMR.params[26] = 2.0f*l_1*FMR.params[12];                                           // Precompute multiplication 7.
        FMR.params[27] = 2.0f*l_2*FMR.params[13];                                           // Precompute multiplication 8.
        FMR.params[28] = FMR.params[4]*FMR.params[26];                                      // Precompute multiplication 9.
        FMR.params[29] = FMR.params[6]*FMR.params[27];                                      // Precompute multiplication 10.
        FMR.params[30] = 2.0f*FMR.params[21]*sinf(delta_1);                                 // Precompute multiplication 11.
        FMR.params[31] = 2.0f*FMR.params[23]*sinf(delta_2);                                 // Precompute multiplication 12.
        FMR.params[32] = FMR.params[5]*FMR.params[14]*cosf(delta_1)/l_1;                    // Precompute multiplication 13.
        FMR.params[33] = FMR.params[7]*FMR.params[15]*cosf(delta_2)/l_2;                    // Precompute multiplication 14.
        FMR.params[34] = FMR.params[4]*FMR.params[6];                                       // Precompute multiplication 15.
        FMR.params[35] = 2.0f*FMR.params[4];                                                // Precompute multiplication 16.
        FMR.params[36] = 2.0f*FMR.params[6];                                                // Precompute multiplication 17.
        FMR.params[37] = 2.0f*FMR.params[34];                                               // Precompute multiplication 18.
        FMR.params[38] = FMR.params[4] + FMR.params[5];                                     // Precompute addition 1.
        FMR.params[39] = FMR.params[4] + FMR.params[6];                                     // Precompute addition 2.
        FMR.params[40] = FMR.params[4] - FMR.params[6];                                     // Precompute subtraction 1.
        FMR.params[41] = FMR.params[6] + FMR.params[7];                                     // Precompute addition 3.
        FMR.params[42] = FMR.params[35]*r_1;                                                // Precompute multiplication 19.
        FMR.params[43] = FMR.params[36]*r_2;                                                // Precompute multiplication 20.
        FMR.params[44] = 1000.0f/FMR.params[42];                                            // Precompute division 3.
        FMR.params[45] = 1000.0f/FMR.params[43];                                            // Precompute division 4.
        break;
        case 3:
        break;
    }
    //-----------------------------------------------
    return FMR;
}
//---------------------------------------------------------------------------------------------------------------
// Compute the corresponding cluster space variables to OMRs formation as FMR:
void computeCSVariables(Formation FMR){
    switch(FMR.qty){
        case 2:{
            FMR.c_k[0] = (FMR.q_k[0] + FMR.q_k[3])/2.0f;                                    // Determines xc(k).
            FMR.c_k[1] = (FMR.q_k[1] + FMR.q_k[4])/2.0f;                                    // Determines yc(k).
            float subt1_k = FMR.q_k[0] - FMR.q_k[3];                                        // Precompute subtraction 1.
            float subt2_k = FMR.q_k[1] - FMR.q_k[4];                                        // Precompute subtraction 2.
            //-----------------------------------------------
            float angles_k[1] = {atan2f(subt1_k,subt2_k)};                                  // Compute partial cluster's orientation.
            if(FMR.CORc.flag[0] == false){
                initAngleConverter(FMR.CORc,angles_k);                                      // Initialize angle conversion to absolute domain.
            }
            else angleConversion(FMR.CORc,angles_k);                                        // Compute angle conversion to absolute domain.
            //-----------------------------------------------
            FMR.c_k[2] = FMR.CORc.y_k[0];                                                   // Determines thc(k).
            FMR.c_k[3] = sqrtf(subt1_k*subt1_k + subt2_k*subt2_k)/2.0f;                     // Determines dc(k):
            FMR.c_k[4] = FMR.q_k[2] - FMR.c_k[2];                                           // Determines psi1(k).
            FMR.c_k[5] = FMR.q_k[5] - FMR.c_k[2];                                           // Determines psi2(k).
            break;
        }
    }
}
//---------------------------------------------------------------------------------------------------------------
// Create and initialize the correction structure for translating angles to an absolute format:
Correction_Struct createAngleConverter(int inputSize){
    Correction_Struct COR;                                                                  // Creates an angle absolute correction structure as COR.
    COR.s_in = inputSize;                                                                   // Assign value of input size to the member s_out of COR structure.
    COR.s_out = inputSize;                                                                  // Assign value of output size to the member s_out of COR structure.
    COR.s_state = inputSize;                                                                // Assign value of state size to the member s_state of COR structure.
    COR.m_PI = roundToFourDecimals(M_PI);                                                   // Fixed-pont value for M_PI.
    COR.m_PI_2 = roundToFourDecimals(M_PI_2);                                               // Fixed-pont value for M_PI_2.
    COR.x1_k = (float *)malloc(inputSize * sizeof(float));                                  // Allocate memory for the state vector x1(k).
    COR.x1_kp1 = (float *)malloc(inputSize * sizeof(float));                                // Allocate memory for the state vector x1(k + 1).
    COR.y_k = (float *)malloc(inputSize * sizeof(float));                                   // Allocate memory for the output vector y(k).
    COR.eta_k = (int *)malloc(inputSize * sizeof(int));                                     // Allocate memory for the quadrant multiplier eta(k).
    COR.f1_k = (int *)malloc(inputSize * sizeof(int));                                      // Allocate memory for the quadrant arriving flag f1(k).
    COR.f2_k = (int *)malloc(inputSize * sizeof(int));                                      // Allocate memory for the quadrant arriving flag f2(k).
    COR.flag = (bool *)malloc(sizeof(bool));                                                // Allocate memory for flag of the structure defined within COR (disable or enable angle correction).
    //--------------------------------------------------------------------
    COR.flag[0] = false;                                                                    // Setting COR flag[0] to false. Angle conversion is disabled.
    return COR;
}
//---------------------------------------------------------------------------------------------------------------
// Initialize the correction procedure for translating angles to an absolute format:
void initAngleConverter(Correction_Struct COR, float x1_0[]){
    int i;                                                                                  // Declaration of i as integer variable.
    for(i = 0; i < COR.s_in; i++){
        COR.x1_k[i] = x1_0[i];                                                              // Saving initial angles as x1(k = 0) of correction structure.
        COR.x1_kp1[i] = x1_0[i];                                                            // Saving initial angles within x1(k + 1), as representing an instantaneous statical orientation.
        COR.eta_k[i] = 0;                                                                   // Saving initial conditions for vector eta(k).
        // Quadrant recognition for current and delayed input angle:
        if(x1_0[i] >= 0 && x1_0[i] <= COR.m_PI_2){
            COR.f1_k[i] = 1;                                                                // Delayed input angle inside first quadrant.
            COR.f2_k[i] = 1;                                                                // Input angle inside first quadrant.
        }
        else if(x1_0[i] > COR.m_PI_2 && x1_0[i] <= COR.m_PI){
            COR.f1_k[i] = 2;                                                                // Delayed input angle inside second quadrant.
            COR.f2_k[i] = 2;                                                                // Input angle inside second quadrant.
        }
        else if(x1_0[i] > -COR.m_PI && x1_0[i] <= -COR.m_PI_2){
            COR.f1_k[i] = 3;                                                                // Delayed input angle inside third quadrant.
            COR.f2_k[i] = 3;                                                                // Input angle inside third quadrant.
        }
        else{
            COR.f1_k[i] = 4;                                                                // Delayed input angle inside fourth quadrant.
            COR.f2_k[i] = 4;                                                                // Input angle inside fourth quadrant.
        }
        // Output of COR structure:
        COR.y_k[i] = x1_0[i];                                                               // Setting output y(k) = x1(k = 0) = x1(k + 1) for convenience.
    }
    COR.flag[0] = true;                                                                     // Setting COR flag[0] to true, which enables angle conversion to absolute format type.
}
//---------------------------------------------------------------------------------------------------------------
// Compute the angle correction algorithm for translating angles to an absolute format:
void angleConversion(Correction_Struct COR, float angles_k[]){
    int i;                                                                                  // Declaration of i as integer variable.
    // Executing angle correction algorithm:
    if(COR.flag[0]){
        for(i = 0; i < COR.s_in; i++){
            COR.x1_k[i] = COR.x1_kp1[i];                                                    // Updating x1(k) as delayed input angles of COR structure.
            COR.x1_kp1[i] = angles_k[i];                                                    // Updating x1(k + 1) as current input angles of COR structure.
            // Quadrant recognition for current input angle:
            if(COR.x1_kp1[i] >= 0 && COR.x1_kp1[i] <= COR.m_PI_2){
                COR.f2_k[i] = 1;                                                            // Input angle inside first quadrant.
            }
            else if(COR.x1_kp1[i] > COR.m_PI_2 && COR.x1_kp1[i] <= COR.m_PI){
                COR.f2_k[i] = 2;                                                            // Input angle inside second quadrant.
            }
            else if(COR.x1_kp1[i] > -COR.m_PI && COR.x1_kp1[i] <= -COR.m_PI_2){
                COR.f2_k[i] = 3;                                                            // Input angle inside third quadrant.
            }
            else COR.f2_k[i] = 4;                                                           // Input angle inside fourth quadrant.
            // Quadrant recognition for delayed input angle:
            if(COR.x1_k[i] >= 0 && COR.x1_k[i] <= COR.m_PI_2){
                COR.f1_k[i] = 1;                                                            // Input angle inside first quadrant.
            }
            else if(COR.x1_k[i] > COR.m_PI_2 && COR.x1_k[i] <= COR.m_PI){
                COR.f1_k[i] = 2;                                                            // Input angle inside second quadrant.
            }
            else if(COR.x1_k[i] > -COR.m_PI && COR.x1_k[i] <= -COR.m_PI_2){
                COR.f1_k[i] = 3;                                                            // Input angle inside third quadrant.
            }
            else COR.f1_k[i] = 4;                                                           // Input angle inside fourth quadrant.
            // Addition of 2*pi:
            if(COR.f1_k[i] == 2 && COR.f2_k[i] == 3){
                COR.eta_k[i] += 2;                                                          // Increasing eta(k) to two more.
            }
            if(COR.f1_k[i] == 1 && COR.f2_k[i] == 3){
                COR.eta_k[i] += 2;                                                          // Increasing eta(k) to two more.
            }
            // Subtraction of 2*pi:
            if(COR.f1_k[i] == 3 && COR.f2_k[i] == 2){
                COR.eta_k[i] += -2;                                                         // Decreasing eta(k) to two least.
            }
            // Correction of input angles:
            COR.y_k[i] = (float)(COR.eta_k[i])*COR.m_PI + COR.x1_kp1[i];                    // Absolute output angle conversion.
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
