// Including libraries to execute the programmed control functions:
#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include <math.h>
#include "3WD_OMRs_Controllers.h"
//---------------------------------------------------------------------------------------------------------------
// Developing control functions:
//---------------------------------------------------------------------------------------------------------------
// Function to round a floating-point number to three decimal places:
float roundToThreeDecimals(float num){
    return round(num*1000.0)/1000.0;                                                        // Return a fixed-point number with three decimals.
}
//---------------------------------------------------------------------------------------------------------------
// Creating matrix structure:
extern bool allocateMatrix(Matrix *MAT, int rows, int cols){
    int i = 0, j = 0;                                                                       // Declaration of i and j as integer variables.
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
// Function to free memory for the matrix in the struct:
extern void freeMatrix(Matrix *MAT){
    int i = 0;                                                                              // Declaration of i as integer variable.
    for(i = 0; i < MAT->rows; i++){
        free(MAT->data[i]);                                                                 // Liberate space for MAT struct.
    }
    free(MAT->data);
    MAT->rows = 0;                                                                          // Set rows size of MAT to zero.
    MAT->cols = 0;                                                                          // Set cols size of MAT to zero.
    MAT->data = NULL;                                                                       // Data of MAT to empty.
}
//---------------------------------------------------------------------------------------------------------------
// Create integrator structure:
extern Integrator createIntegrator(int inputSize, float sampleTime, float gain){
    // Configuring the members of the Integrator structure:
    Integrator INT;                                                                         // Creates integrator struct.
    INT.s_in = inputSize;                                                                   // Assign value of inputSize to the member s_in of the struct INT.
    INT.s_out = inputSize;                                                                  // Assign value of outputSize to the member s_out of the struct INT.
    INT.s_state = 2*inputSize;                                                              // Assign value of statetSize to the member s_state of the struct INT.
    INT.Ts = sampleTime;                                                                    // Assign value of sampleTime to the member TS of the struct INT.
    INT.gain = gain;                                                                        // Assign a gain value to the integrator.
    INT.X_0 = (float *)malloc(2*inputSize * sizeof(float));                                 // Allocate memory for the initial state vector x(0) = [x1(0) x2(0)]'.
    INT.x1_k = (float *)malloc(inputSize * sizeof(float));                                  // Allocate memory for the input vector u(k) = x1(k).
    INT.x1_kp1 = (float *)malloc(inputSize * sizeof(float));                                // Allocate memory for the input vector u(k + 1) = x1(k + 1).
    INT.x2_k = (float *)malloc(inputSize * sizeof(float));                                  // Allocate memory for the state vector x2(k).
    INT.x2_kp1 = (float *)malloc(inputSize * sizeof(float));                                // Allocate memory for the state vector x2(k + 1).
    INT.y_k = (float *)malloc(inputSize * sizeof(float));                                   // Allocate memory for the output vector y(k).
    INT.flag = (int *)malloc(sizeof(int));                                                  // Allocate memory for flag of the struct defined as INT (disable or enable integrator).
    INT.flag[0] = 0;                                                                        // Setting INT flag to 0.
    return INT;
}
//---------------------------------------------------------------------------------------------------------------
// Adding initial conditions to INT Integrator struct:
extern void initIntegrator(Integrator INT, float x_0[]){
    int i = 0;                                                                              // Declaration of i as integer variable.
    for(i = 0; i < INT.s_state; i++){
        INT.X_0[i] = x_0[i];                                                                // Saving initial conditions data for x(0) within INT struct.
    }
    for(i = 0; i < INT.s_in; i++){
        INT.x1_k[i] = 0.0;                                                                  // Saving initial conditions data for delayed input signal u(k) within INT struct as x1(k) = x1(0) = 0.0.
        INT.x1_kp1[i] = x_0[i];                                                             // Saving initial input signal u(k + 1) within INT struct as x1(k + 1) = x1(0).
        INT.x2_k[i] = x_0[i+INT.s_in];                                                      // Saving initial integration state within INT struct as x2(k) = x2(0).
        INT.x2_kp1[i] = (INT.Ts/2.0)*(INT.x1_kp1[i] + INT.x1_k[i]) + INT.x2_k[i];           // Integration operator as x2(k + 1).
        // Updating output y(k):
        INT.y_k[i] = INT.gain*INT.x2_k[i];                                                  // Saving initial conditions data for y_k within INT struct.
    }
    INT.flag[0] = 1;                                                                        // Flag settled to 1, which enables integration function defined as INT.
}
//---------------------------------------------------------------------------------------------------------------
// Integration function:
extern void Integration(Integrator INT, float input[]){
    int i = 0;                                                                              // Declaration of i as integer variable.
    // Execute integration algorithm:
    if(INT.flag[0] == 1){
        for(i = 0; i < INT.s_in; i++){
            INT.x1_k[i] = INT.x1_kp1[i];                                                    // Updates the delayed input signal u(k - 1) as x1(k) for integrator INT.
            INT.x1_kp1[i] = input[i];                                                       // Get input signal u(k) as x1(k + 1), for integrator INT.
            INT.x2_k[i] = INT.x2_kp1[i];                                                    // Updates the delayed state x2(k), corresponding to output of integrator INT.
            INT.x2_kp1[i] = (INT.Ts/2.0)*(INT.x1_kp1[i] + INT.x1_k[i]) + INT.x2_k[i];       // Integration operator as x2(k + 1).
            // Updating integrator output y(k):
            INT.y_k[i] = INT.gain*INT.x2_k[i];                                              // Determines the output of integrator INT.
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Initialize Differentiator structure:
extern Differentiator createDifferentiator(int inputSize, float sampleTime, float gain){
    // Configuring the members of the differentiator structure:
    Differentiator DIF;                                                                     // Creates differentiator struct.
    DIF.s_in = inputSize;                                                                   // Assign value of inputSize to the member s_in of the struct DIF.
    DIF.s_out = inputSize;                                                                  // Assign value of outputSize to the member s_out of the struct DIF.
    DIF.s_state = 2*inputSize;                                                              // Assign value of statetSize to the member s_state of the struct DIF.
    DIF.Ts = sampleTime;                                                                    // Assign value of sampleTime to the member TS of the struct DIF.
    DIF.gain = gain;                                                                        // Assign a gain value to the differentiator.
    DIF.X_0 = (float *)malloc(2*inputSize * sizeof(float));                                 // Allocate memory for the initial state vector x(0) = [x1(0) x2(0)]'.
    DIF.x1_k = (float *)malloc(inputSize * sizeof(float));                                  // Allocate memory for the input vector u(k) = x1(k).
    DIF.x1_kp1 = (float *)malloc(inputSize * sizeof(float));                                // Allocate memory for the input vector u(k + 1) = x1(k + 1).
    DIF.x2_k = (float *)malloc(inputSize * sizeof(float));                                  // Allocate memory for the state vector x2(k).
    DIF.x2_kp1 = (float *)malloc(inputSize * sizeof(float));                                // Allocate memory for the state vector x2(k + 1).
    DIF.y_k = (float *)malloc(inputSize * sizeof(float));                                   // Allocate memory for the output vector y(k).
    DIF.flag = (int *)malloc(sizeof(int));                                                  // Allocate memory for flag of the struct defined as DIF (disable or enable differentiator).
    DIF.flag[0] = 0;                                                                        // Setting DIF flag to 0.
    return DIF;
}
//---------------------------------------------------------------------------------------------------------------
// Adding initial conditions to DIF differentiator struct:
extern void initDifferentiator(Differentiator DIF, float x_0[]){
    int i = 0;                                                                              // Declaration of i as integer variable.
    for(i = 0; i < DIF.s_state; i++){
        DIF.X_0[i] = x_0[i];                                                                // Saving initial conditions data for x(0) within DIF struct.
    }
    for(i = 0; i < DIF.s_in; i++){
        DIF.x1_k[i] = x_0[i];                                                               // Saving initial conditions data for delayed input signal u(k) within DIF struct as x1(k) = x1(0).
        DIF.x1_kp1[i] = DIF.Ts*x_0[i+DIF.s_in] + x_0[i];                                    // Saving initial input signal u(k + 1) within DIF struct as x1(k + 1).
        DIF.x2_k[i] = x_0[i+DIF.s_in];                                                      // Saving initial differentiation state within DIF struct as x2(k) = x2(0).
        DIF.x2_kp1[i] = (1.0/DIF.Ts)*(DIF.x1_kp1[i] - DIF.x1_k[i]);                         // Differentiator operator as x2(k + 1).
        // Updating output y(k):
        DIF.y_k[i] = DIF.gain*DIF.x2_k[i];                                                  // Saving initial conditions data for y_k within DIF struct.
    }
    DIF.flag[0] = 1;                                                                        // Flag settled to 1, which enables differentiation function defined as DIF.
}
//---------------------------------------------------------------------------------------------------------------
// Differentiation function:
extern void Differentiation(Differentiator DIF, float input[]){
    int i = 0;                                                                              // Declaration of i as integer variable.
    // Execute differentiation algorithm:
    if(DIF.flag[0] == 1){
        for(i = 0; i < DIF.s_in; i++){
            DIF.x1_k[i] = DIF.x1_kp1[i];                                                    // Updates the delayed input signal u(k - 1) as x1(k) for differentiator DIF.
            DIF.x1_kp1[i] = input[i];                                                       // Get input signal u(k) as x1(k + 1), for differentiator DIF.
            DIF.x2_k[i] = DIF.x2_kp1[i];                                                    // Updates the delayed state x2(k), corresponding to output of differentiator DIF.
            DIF.x2_kp1[i] = (1.0/DIF.Ts)*(DIF.x1_kp1[i] - DIF.x1_k[i]);                     // Differentiator operator as x2(k + 1).
            // Updating differentiator output y(k):
            DIF.y_k[i] = DIF.gain*DIF.x2_k[i];                                              // Determines the output y(k) = x2(k), of differentator DIF.
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Initialize robot space high-gain observer structure:
extern RS_Observer createRS_Observer(float sampleTime, float gains[9*Robots_Qty][3*Robots_Qty], float epsilon){
    int i = 0, j = 0;                                                                       // Declaration of i and j as integer variables.
    // Configuring the members of the RS observer structure:
    RS_Observer RSO;                                                                        // Creates observer struct.
    RSO.s_in = 6*Robots_Qty;                                                                // Assign value of inputSize to the member s_in of the struct RSO.
    RSO.s_out = 9*Robots_Qty;                                                               // Assign value of outputSize to the member s_out of the struct RSO.
    RSO.s_state = 9*Robots_Qty;                                                             // Assign value of statetSize to the member s_state of the struct RSO.
    RSO.Ts = sampleTime;                                                                    // Assign value of sampleTime to the member TS of the struct RSO.
    RSO.gamma = epsilon;                                                                    // Small constant used in the ROS observer.
    //-----------------------------------------------
    if(allocateMatrix(&RSO.alpha_1, 3*Robots_Qty, 3*Robots_Qty) && allocateMatrix(&RSO.alpha_2, 3*Robots_Qty, 3*Robots_Qty) && allocateMatrix(&RSO.alpha_3, 3*Robots_Qty, 3*Robots_Qty)){
        // Creating matrix arrays for alpha_1, alpha_2 and alpha_3:
        for(i = 0; i < 3*Robots_Qty; i++){
            for(j = 0; j < 3*Robots_Qty; j++){
                RSO.alpha_1.data[i][j] = gains[i][j];                                       // Assigning values to the matrix alpha_1 of RSO.
                RSO.alpha_2.data[i][j] = gains[i+3*Robots_Qty][j];                          // Assigning values to the matrix alpha_2 of RSO.
                RSO.alpha_3.data[i][j] = gains[i+6*Robots_Qty][j];                          // Assigning values to the matrix alpha_3 of RSO.
            }
        }
    }
    //-----------------------------------------------
    RSO.F_k = (float*)malloc(3*Robots_Qty * sizeof(float));                                 // Allocate memory for vector field F(k).
    RSO.G_k = (float*)malloc(3*Robots_Qty * sizeof(float));                                 // Allocate memory for vector field G(k).
    RSO.X_0 = (float *)malloc(9*Robots_Qty * sizeof(float));                                // Allocate memory for the initial state vector x(0) = [x1(0) x2(0) x3(0)]'.
    RSO.x1_k = (float *)malloc(3*Robots_Qty * sizeof(float));                               // Allocate memory for the state vector x1(k).
    RSO.x1_kp1 = (float *)malloc(3*Robots_Qty * sizeof(float));                             // Allocate memory for the state vector x1(k + 1).
    RSO.x2_k = (float *)malloc(3*Robots_Qty * sizeof(float));                               // Allocate memory for the state vector x2(k).
    RSO.x2_kp1 = (float *)malloc(3*Robots_Qty * sizeof(float));                             // Allocate memory for the state vector x2(k + 1).
    RSO.x3_k = (float *)malloc(3*Robots_Qty * sizeof(float));                               // Allocate memory for the state vector x3(k).
    RSO.x3_kp1 = (float *)malloc(3*Robots_Qty * sizeof(float));                             // Allocate memory for the state vector x3(k + 1).
    RSO.y_k = (float *)malloc(9*Robots_Qty * sizeof(float));                                // Allocate memory for the output vector y(k).
    RSO.flag = (int *)malloc(sizeof(int));                                                  // Allocate memory for flag of the struct defined as RSO (disable or enable observer).
    //-----------------------------------------------
    RSO.INT = createIntegrator(9*Robots_Qty,sampleTime,1.0);                                // Create integrator struct within observer ROS struct.
    RSO.flag[0] = 0;                                                                        // Setting RSO flag to 0.
    return RSO;
}
//---------------------------------------------------------------------------------------------------------------
// Adding initial conditions to high-gain observer structured as RSO:
extern void init_RS_Observer(RS_Observer RSO, float x_0[]){
    int i = 0;                                                                              // Declaration of i as integer variable.
    float Xi_0[18*Robots_Qty];                                                              // Variable to save initial conditions for integrator RSO.INT.
    for(i = 0; i < RSO.s_state; i++){
        RSO.X_0[i] = x_0[i];                                                                // Saving initial conditions data for x(0) within struct RSO.
        Xi_0[i] = 0.0;                                                                      // Saving initial conditions for x1(0) within RSO.INT struct.
        Xi_0[i+9*Robots_Qty] = x_0[i];                                                      // Saving initial conditions for x2(0) within RSO.INT struct.
    }
    // Updating integrator RSO.INT and variables x1(k), x2(k) and x3(k):
    initIntegrator(RSO.INT,Xi_0);                                                           // Initialize integrator of RSO high-gain observer.
    for(i = 0; i < 3*Robots_Qty; i++){
        RSO.x1_k[i] = x_0[i];                                                               // Saving initial conditions data for x1(k) within RSO struct.
        RSO.x2_k[i] = x_0[i+3*Robots_Qty];                                                  // Saving initial conditions data for x2(k) within RSO struct.
        RSO.x3_k[i] = x_0[i+6*Robots_Qty];                                                  // Saving initial conditions data for x3(k) within RSO struct.
        RSO.x1_kp1[i] = 0.0;                                                                // Computing initial values for state x1(k + 1) within RSO struct.
        RSO.x2_kp1[i] = 0.0;                                                                // Computing initial values for state x2(k + 1) within RSO struct.
        RSO.x3_kp1[i] = 0.0;                                                                // Computing initial values for state x3(k + 1) within RSO struct.
        // Updating y(k):
        RSO.y_k[i] = RSO.x1_k[i];                                                           // Saving initial conditions data for y(k) within RSO struct as x1(k).
        RSO.y_k[i+3*Robots_Qty] = RSO.x2_k[i];                                              // Saving initial conditions data for y(k) within RSO struct as x2(k).
        RSO.y_k[i+6*Robots_Qty] = RSO.x3_k[i];                                              // Saving initial conditions data for y(k) within RSO struct as x3(k).
    }
    // Updating the observer flag:
    RSO.flag[0] = 1;                                                                        // Flag settled to 1, which enables differentiation function defined as DIF.
}
//---------------------------------------------------------------------------------------------------------------
// Robot space estimation function:
extern void RS_Estimation(RS_Observer RSO, float input[], float output[]){
    int i = 0, j = 0, s = 0;                                                                // Declaration of i, j and s as integer variables.
    // Getting output of integrator RSO.INT:
    for(i = 0; i < 3*Robots_Qty; i++){
        RSO.x1_k[i] = RSO.INT.y_k[i];                                                       // Updating data for x1(k) within RSO struct.
        RSO.x2_k[i] = RSO.INT.y_k[i+3*Robots_Qty];                                          // Updating data for x2(k) within RSO struct.
        RSO.x3_k[i] = RSO.INT.y_k[i+6*Robots_Qty];                                          // Updating data for x3(k) within RSO struct.
    }
    // Execute estimation algorithm:
    if(RSO.flag[0] == 1 && Robots_Qty == 2){
        // Compute the matrix inv(D):
        float Din[3*Robots_Qty][3*Robots_Qty] = {
            {(2.0*r_1*r_1)/(2.0*mt_1*r_1*r_1 + 3.0*jw_1),                                         0.0,                                       0.0,                                         0.0,                                         0.0,                                       0.0},
            {                                        0.0, (2.0*r_1*r_1)/(2.0*mt_1*r_1*r_1 + 3.0*jw_1),                                       0.0,                                         0.0,                                         0.0,                                       0.0},
            {                                        0.0,                                         0.0, r_1*r_1/(3.0*jw_1*l_1*l_1 + jr_1*r_1*r_1),                                         0.0,                                         0.0,                                       0.0},
            {                                        0.0,                                         0.0,                                       0.0, (2.0*r_2*r_2)/(2.0*mt_2*r_2*r_2 + 3.0*jw_2),                                         0.0,                                       0.0},
            {                                        0.0,                                         0.0,                                       0.0,                                         0.0, (2.0*r_2*r_2)/(2.0*mt_2*r_2*r_2 + 3.0*jw_2),                                       0.0},
            {                                        0.0,                                         0.0,                                       0.0,                                         0.0,                                         0.0, r_2*r_2/(3.0*jw_2*l_2*l_2 + jr_2*r_2*r_2)}
        };
        // Compute the matrix H(k):
        float H_k[3*Robots_Qty][3*Robots_Qty] = {
            {                                0.0, 3.0*RSO.x2_k[2]*jw_1/(2.0*r_1*r_1), 0.0,                                 0.0,                                0.0, 0.0},
            {-3.0*RSO.x2_k[2]*jw_1/(2.0*r_1*r_1),                                0.0, 0.0,                                 0.0,                                0.0, 0.0},
            {                                0.0,                                0.0, 0.0,                                 0.0,                                0.0, 0.0},
            {                                0.0,                                0.0, 0.0,                                 0.0, 3.0*RSO.x2_k[5]*jw_2/(2.0*r_2*r_2), 0.0},
            {                                0.0,                                0.0, 0.0, -3.0*RSO.x2_k[5]*jw_2/(2.0*r_2*r_2),                                0.0, 0.0},
            {                                0.0,                                0.0, 0.0,                                 0.0,                                0.0, 0.0}
        };
        // Compute the matrix B(k):
        float B_k[3*Robots_Qty][3*Robots_Qty] = {
            {-sin(delta_1 + RSO.x1_k[2])/r_1, -sin(delta_1 - RSO.x1_k[2])/r_1, cos(RSO.x1_k[2])/r_1,                             0.0,                             0.0,                  0.0},
            { cos(delta_1 + RSO.x1_k[2])/r_1, -cos(delta_1 - RSO.x1_k[2])/r_1, sin(RSO.x1_k[2])/r_1,                             0.0,                             0.0,                  0.0},
            {                        l_1/r_1,                         l_1/r_1,              l_1/r_1,                             0.0,                             0.0,                  0.0},
            {                            0.0,                             0.0,                  0.0, -sin(delta_2 + RSO.x1_k[5])/r_2, -sin(delta_2 - RSO.x1_k[5])/r_2, cos(RSO.x1_k[5])/r_2},
            {                            0.0,                             0.0,                  0.0,  cos(delta_2 + RSO.x1_k[5])/r_2, -cos(delta_2 - RSO.x1_k[5])/r_2, sin(RSO.x1_k[5])/r_2},
            {                            0.0,                             0.0,                  0.0,                         l_2/r_2,                         l_2/r_2,              l_2/r_2}
        };
        // Updating vector fields F(k) and G(k), together with variables x1(k + 1), x2(k + 1) and x3(k + 1):
        float X_kp1[9*Robots_Qty];                                                          // Creates a support variable for concatenate x1(k + 1), x2(k + 1) and x3(k + 1) in only a vector.
        float W1[3*Robots_Qty][3*Robots_Qty];                                               // Defining a support computing matrix W1(k).
        float W2[3*Robots_Qty][3*Robots_Qty];                                               // Defining a support computing matrix W2(k).
        for(i = 0; i < 3*Robots_Qty; i++){
            RSO.F_k[i] = 0.0;                                                               // Clear i^th value of vector field F(k).
            RSO.G_k[i] = 0.0;                                                               // Clear i^th value of vector field G(k).
            RSO.x1_kp1[i] = 0.0;                                                            // Clear i^th value of x1(k + 1).
            RSO.x2_kp1[i] = 0.0;                                                            // Clear i^th value of x2(k + 1).
            RSO.x3_kp1[i] = 0.0;                                                            // Clear i^th value of x3(k + 1).
            for(j = 0; j < 3*Robots_Qty; j++){
                W1[i][j] = 0.0;                                                             // Clear the i^th j^th value of W1(k).
                W2[i][j] = 0.0;                                                             // Clear the i^th j^th value of W2(k).
                for(s = 0; s < 3*Robots_Qty; s++){
                    W1[i][j] += -Din[i][s]*H_k[s][j];                                       // Update W1(k).
                    W2[i][j] += Din[i][s]*B_k[s][j];                                        // Update W2(k).
                }
                // Compute state correction for x1(k + 1), x2(k + 1) and x3(k + 1):
                RSO.x1_kp1[i] += RSO.alpha_1.data[i][j]*(output[j] - RSO.x1_k[j])/(RSO.gamma);
                RSO.x2_kp1[i] += RSO.alpha_2.data[i][j]*(output[j] - RSO.x1_k[j])/(RSO.gamma*RSO.gamma);
                // Final prediction result for x3(k + 1):
                RSO.x3_kp1[i] += RSO.alpha_3.data[i][j]*(output[j] - RSO.x1_k[j])/(RSO.gamma*RSO.gamma*RSO.gamma);
                // Updating vector fields F(k) and G(k):
                RSO.F_k[i] += W1[i][j]*RSO.x2_k[j];                                         // Compute vector field F(k).
                RSO.G_k[i] += W2[i][j]*input[j];                                            // Compute vector field G(k).
            }
            RSO.x1_kp1[i] += RSO.x2_k[i];                                                   // Final prediction result for x1(k + 1).
            RSO.x2_kp1[i] += RSO.x3_k[i] + RSO.F_k[i] + RSO.G_k[i];                         // Final prediction result for x2(k + 1).
            // Concatenation of x1(k + 1), x2(k + 1) and x3(k + 1) within x(k + 1):
            X_kp1[i] = RSO.x1_kp1[i];
            X_kp1[i+3*Robots_Qty] = RSO.x2_kp1[i];
            X_kp1[i+6*Robots_Qty] = RSO.x3_kp1[i];
            // Output of high-gain observer RSO:
            RSO.y_k[i] = RSO.x1_k[i];
            RSO.y_k[i+3*Robots_Qty] = RSO.x2_k[i];
            RSO.y_k[i+6*Robots_Qty] = RSO.x3_k[i];
        }
        Integration(RSO.INT,X_kp1);                                                         // Compute integration for x1(k + 1), x2(k + 1) and x3(k + 1).
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Creating the GPI controller that shall be structured as GPI:
// Creating the GPI controller that shall be structured as GPI:
extern GPI_Controller createGPI_Controller(float sampleTime, float gains[3*Robots_Qty][3]){
    int i = 0, j = 0;                                                                       // Declaration of i and j as integer variables.
    // Configuring the members of the GPI controller structure:
    GPI_Controller GPI;                                                                     // Creates GPI controller struct.
    GPI.s_in = 3*Robots_Qty;                                                                // Assign value of inputSize to the member s_in of the GPI struct.
    GPI.s_out = 3*Robots_Qty;                                                               // Assign value of outputSize to the member s_out of the GPI struct.
    GPI.s_state = 6*Robots_Qty;                                                             // Assign value of statetSize to the member s_state of the GPI struct.
    GPI.Ts = sampleTime;                                                                    // Assign value of sampleTime to the member Ts of the GPI struct.
    if(allocateMatrix(&GPI.lambda, 3*Robots_Qty, 3)){
        // Creating matrix arrays for alpha_1, alpha_2 and alpha_3:
        for(i = 0; i < 3*Robots_Qty; i++){
            for(j = 0; j < 3; j++){
                GPI.lambda.data[i][j] = gains[i][j];                                        // Assigning values to the gains matrix lambda of GPI controller.
            }
        }
    }
    //-----------------------------------------------
    GPI.X_0 = (float *)malloc(6*Robots_Qty * sizeof(float));                                // Allocate memory for the initial state vector x(0) = [x1(0) x2(0) x3(0)]'.
    // GPI.x1_k = (float *)malloc(3*Robots_Qty * sizeof(float));                               // Allocate memory for the state vector x1(k).
    // GPI.x1_kp1 = (float *)malloc(3*Robots_Qty * sizeof(float));                             // Allocate memory for the state vector x1(k + 1).
    // GPI.x2_k = (float *)malloc(3*Robots_Qty * sizeof(float));                               // Allocate memory for the state vector x2(k).
    // GPI.x2_kp1 = (float *)malloc(3*Robots_Qty * sizeof(float));                             // Allocate memory for the state vector x2(k + 1).
    // GPI.y_k = (float *)malloc(3*Robots_Qty * sizeof(float));                                // Allocate memory for the output vector y(k).
    GPI.flag = (int *)malloc(sizeof(int));                                                  // Allocate memory for flag of the struct defined as GPI (disable or enable observer).
    //-----------------------------------------------
    GPI.flag[0] = 0;                                                                        // Setting GPI flag to 0.
    return GPI;
}
//---------------------------------------------------------------------------------------------------------------
// Initializing the GPI controller structured as GPI:
extern void initGPI_Controller(GPI_Controller GPI, float x_0[]){
    int i = 0;                                                                              // Declaration of i as integer variable.
    for(i = 0; i < GPI.s_state; i++){
        GPI.X_0[i] = x_0[i];                                                                // Saving initial conditions data for x(0) within GPI struct.
    }
    // for(i = 0; i < GPI.s_in; i++){
    //     GPI.x1_k[i] = 0.0;                                                                  // Saving initial conditions data for delayed input signal u(k) within GPI struct as x1(k) = x1(0).
    //     GPI.x1_kp1[i] = x_0[i];                                                             // Saving initial input signal u(k + 1) within GPI struct as x1(k + 1).
    //     GPI.x2_k[i] = x_0[i+GPI.s_in];                                                      // Saving initial integration state within GPI struct as x2(k) = x2(0).
    //     // Updating GPI operator as x2(k + 1):
    //     GPI.x2_kp1[i] = GPI.x1_kp1[i] - GPI.lambda.data[i][0]*GPI.x1_k[i] + GPI.lambda.data[i][1]*GPI.x2_k[i];
    //     // Updating GPI output y(k):
    //     GPI.y_k[i] = GPI.lambda.data[i][2]*GPI.x2_k[i];                                     // Saving initial conditions data for y_k within GPI struct.
    // }
    GPI.flag[0] = 1;                                                                        // Flag settled to 1, which enables control function defined as GPI.
}
//---------------------------------------------------------------------------------------------------------------
// GPI control computing function:
extern void computeGPIControl(GPI_Controller GPI, float errors[]){
    int i = 0;                                                                              // Declaration of i as integer variable.
    // Execute integration algorithm:
    if(GPI.flag[0] == 1){
        for(i = 0; i < GPI.s_in; i++){
    //         GPI.x1_k[i] = GPI.x1_kp1[i];                                                    // Updates the delayed input signal u(k - 1) as x1(k) for integrator INT.
    //         GPI.x1_kp1[i] = errors[i];                                                      // Get input signal u(k) as x1(k + 1), for integrator INT.
    //         GPI.x2_k[i] = GPI.x2_kp1[i];                                                    // Updates the delayed state x2(k), corresponding to output of integrator INT.
    //         // Updating GPI operator as x2(k + 1):
    //         GPI.x2_kp1[i] = GPI.x1_kp1[i] - GPI.lambda.data[i][0]*GPI.x1_k[i] + GPI.lambda.data[i][1]*GPI.x2_k[i];
    //         // Updating GPI output y(k):
    //         GPI.y_k[i] = GPI.lambda.data[i][2]*GPI.x2_k[i];                                 // Saving initial conditions data for y_k within GPI struct.
    //         GPI.y_k[i] = roundToThreeDecimals(GPI.y_k[i]);
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------