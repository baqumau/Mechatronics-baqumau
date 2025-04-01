// Including libraries to execute the programmed reference trajectories functions:
#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
// #include <math.h>
#include <float.h>
#include "C28x_FPU_FastRTS.h"                                                               // Include operators from FPUfastRTS library.
#include "3WD_OMRs_References.h"
#include "3WD_OMRs_Controllers.h"
//---------------------------------------------------------------------------------------------------------------
// Developing references builder functions:
//---------------------------------------------------------------------------------------------------------------
// Configuring the corresponding reference trajectory for OMRs control system (using CS framework):
Reference createReference(float sampleTime, Reference_Type reftype){
    // Configuring the members of the desired circumference trajectory structure:
    Reference REF;                                                                          // Creates a reference trajectory structure as REF.
    REF.s_out = 9*Robots_Qty;                                                               // Assign value of output size to the member s_out for the REF structure.
    REF.s_state = 9*Robots_Qty;                                                             // Assign value of state size to the member s_state for the REF structure.
    REF.Ts = sampleTime;                                                                    // Assign value of sample time to the member Ts of the REF structure.
    //-----------------------------------------------
    REF.X_0 = (float *)malloc(9*Robots_Qty * sizeof(float));                                // Allocate memory for the initial state vector x(0) = [x1(0) x2(0) x3(0)]'.
    REF.x1_k = (float *)malloc(3*Robots_Qty * sizeof(float));                               // Allocate memory for the state vector x1(k).
    REF.x1_kp1 = (float *)malloc(3*Robots_Qty * sizeof(float));                             // Allocate memory for the state vector x1(k + 1).
    REF.x2_k = (float *)malloc(3*Robots_Qty * sizeof(float));                               // Allocate memory for the state vector x2(k).
    REF.x2_kp1 = (float *)malloc(3*Robots_Qty * sizeof(float));                             // Allocate memory for the state vector x2(k + 1).
    REF.x3_k = (float *)malloc(3*Robots_Qty * sizeof(float));                               // Allocate memory for the state vector x3(k).
    REF.x3_kp1 = (float *)malloc(3*Robots_Qty * sizeof(float));                             // Allocate memory for the state vector x3(k + 1).
    //-----------------------------------------------
    REF.Z_0 = (float *)malloc(9*Robots_Qty * sizeof(float));                                // Allocate memory for the initial state vector x(0) = [x1(0) x2(0) x3(0)]'.
    REF.z1_k = (float *)malloc(3*Robots_Qty * sizeof(float));                               // Allocate memory for the state vector x1(k).
    REF.z1_kp1 = (float *)malloc(3*Robots_Qty * sizeof(float));                             // Allocate memory for the state vector x1(k + 1).
    REF.z2_k = (float *)malloc(3*Robots_Qty * sizeof(float));                               // Allocate memory for the state vector x2(k).
    REF.z2_kp1 = (float *)malloc(3*Robots_Qty * sizeof(float));                             // Allocate memory for the state vector x2(k + 1).
    REF.z3_k = (float *)malloc(3*Robots_Qty * sizeof(float));                               // Allocate memory for the state vector x3(k).
    REF.z3_kp1 = (float *)malloc(3*Robots_Qty * sizeof(float));                             // Allocate memory for the state vector x3(k + 1).
    //-----------------------------------------------
    REF.y_k = (float *)malloc(9*Robots_Qty * sizeof(float));                                // Allocate memory for the output vector y(k).
    REF.flag = (bool *)malloc(sizeof(bool));                                                // Allocate memory for flag of the structure defined as REF (disable or enable reference builder).
    //-----------------------------------------------
    switch(reftype){
        case MINGYUE_01:{
            REF.COR = createAngleConverter(Robots_Qty);                                     // Create a conversion angle structure.
            REF.DIF_1 = createDifferentiator(Robots_Qty,sampleTime,1.0f,100.0f);            // Create first differentiator structure within reference builder REF structure.
            REF.DIF_2 = createDifferentiator(Robots_Qty,sampleTime,1.0f,100.0f);            // Create second differentiator structure within reference builder REF structure.
            REF.INT_1 = createIntegrator((2+Robots_Qty),sampleTime,1.0f);                   // Create first integrator structure within reference builder REF structure.
            REF.INT_2 = createIntegrator(1,sampleTime,1.0f);                                // Create second integrator structure within reference builder REF structure.
            REF.INT_3 = createIntegrator((Robots_Qty+1),sampleTime,1.0f);                   // Create third integrator structure within reference builder REF structure.
            break;
        }
        default:{
            REF.INT_1 = createIntegrator(3*Robots_Qty,sampleTime,1.0f);                     // Create first integrator structure within reference builder REF structure.
            REF.INT_2 = createIntegrator(3*Robots_Qty,sampleTime,1.0f);                     // Create second integrator structure within reference builder REF structure.
        }
    }
    //-----------------------------------------------
    REF.flag[0] = false;                                                                    // Setting REF flag to false.
    return REF;
}
//---------------------------------------------------------------------------------------------------------------
// Initialize the circumference-shape reference trajectory for OMRs control system (using CS framework):
void initReference(Reference REF, Control_System consys, Reference_Type reftype, float z_0[]){
    int i, s = 3*Robots_Qty, r = 2*s;                                                       // Declaration of i, r and s as integer variables.
    float *Ci1_0 = (float *)malloc(r * sizeof(float));                                      // Allocate temporal memory for a vector to place the initial conditions of associated INT_1 integrator within REF structure.
    float *Ci2_0 = (float *)malloc(r * sizeof(float));                                      // Allocate temporal memory for a vector to place the initial conditions of associated INT_2 integrator within REF structure.
    for(i = 0; i < s; i++){
        // Initial conditions Z_0 of desired cluster reference trajectories:
        REF.Z_0[i] = z_0[i];                                                                // Saving cluster initial conditions data for c(0) within REF structure.
        REF.Z_0[i+s] = z_0[i+s];                                                            // Saving cluster initial conditions data for c(0) within REF structure.
        REF.Z_0[i+r] = z_0[i+r];                                                            // Saving cluster initial conditions data for c(0) within REF structure.
        // Initial conditions for cluster space variables:
        REF.z1_k[i] = z_0[i];                                                               // Saving initial cluster's pose c1(k = 0) for OMRs formation.
        REF.z1_kp1[i] = REF.Ts*z_0[i+s] + z_0[i];                                           // Saving cluster's pose prediction c1(k + 1) within REF structure.
        REF.z2_k[i] = z_0[i+s];                                                             // Saving initial cluster's velocity c2(k = 0) for OMRs formation.
        REF.z2_kp1[i] = REF.Ts*z_0[i+r] + z_0[i+s];                                         // Saving cluster's velocity prediction c2(k + 1) within REF structure.
        REF.z3_k[i] = z_0[i+r];                                                             // Saving initial cluster's acceleration c3(k = 0) for OMRs formation.
        REF.z3_kp1[i] = (1.0/REF.Ts)*(REF.z2_kp1[i] - REF.z2_k[i]);                         // Simple differentiation operator to obtain the prediction c3(k + 1).
        // Adding initial conditions to associated INT_1 and INT_2 integration structures, within REF structure:
        Ci1_0[i] = REF.z2_k[i];
        Ci1_0[i+s] = REF.z1_k[i];
        Ci2_0[i] = REF.z3_k[i];
        Ci2_0[i+s] = REF.z2_k[i];
    }
    // Initial conditions X_0 of desired robot pose trajectories:
    switch(Robots_Qty){
        case 2:{
            switch(consys){
                case SMC_CSa:{
                    float SC2_0 = sinf(REF.Z_0[2]);                                         // Pre-compute sin(thc);
                    float CC2_0 = cosf(REF.Z_0[2]);                                         // Pre-compute cos(thc);
                    float OP1_0 = REF.Z_0[3]*SC2_0;                                         // Pre-compute operation 1;
                    float OP2_0 = REF.Z_0[3]*CC2_0;                                         // Pre-compute operation 2;
                    float OP3_0 = REF.Z_0[9]*SC2_0;                                         // Pre-compute operation 3;
                    float OP4_0 = REF.Z_0[9]*CC2_0;                                         // Pre-compute operation 4;
                    float OP5_0 = REF.Z_0[15]*SC2_0;                                        // Pre-compute operation 5;
                    float OP6_0 = REF.Z_0[15]*CC2_0;                                        // Pre-compute operation 6;
                    float OP7_0 = OP2_0*REF.Z_0[8];                                         // Pre-compute operation 7;
                    float OP8_0 = OP1_0*REF.Z_0[8];                                         // Pre-compute operation 8;
                    float OP9_0 = 2.0f*OP4_0*REF.Z_0[8];                                    // Pre-compute operation 9;
                    float OP10_0 = 2.0f*OP3_0*REF.Z_0[8];                                   // Pre-compute operation 10;
                    float OP11_0 = REF.Z_0[8]*REF.Z_0[8];                                   // Pre-compute operation 11;
                    float OP12_0 = (SC2_0*OP11_0 - CC2_0*REF.Z_0[14]);                      // Pre-compute operation 12;
                    float OP13_0 = (CC2_0*OP11_0 + SC2_0*REF.Z_0[14]);                      // Pre-compute operation 13;
                    float OP14_0 = REF.Z_0[3]*OP12_0;                                       // Pre-compute operation 14;
                    float OP15_0 = REF.Z_0[3]*OP13_0;                                       // Pre-compute operation 15;
                    float OP16_0 = OP3_0 + OP7_0;                                           // Pre-compute operation 16;
                    float OP17_0 = OP4_0 - OP8_0;                                           // Pre-compute operation 17;
                    float OP18_0 = OP5_0 + OP9_0 - OP14_0;                                  // Pre-compute operation 18;
                    float OP19_0 = OP6_0 - OP10_0 - OP15_0;                                 // Pre-compute operation 19;
                    //------------------------------
                    // Computing the initial conditions for the state variables in the robot space:
                    REF.X_0[0] = REF.Z_0[0] + OP1_0;
                    REF.X_0[1] = REF.Z_0[1] + OP2_0;
                    REF.X_0[2] = REF.Z_0[4];
                    REF.X_0[3] = REF.Z_0[0] - OP1_0;
                    REF.X_0[4] = REF.Z_0[1] - OP2_0;
                    REF.X_0[5] = REF.Z_0[5];
                    REF.X_0[6] = REF.Z_0[6] + OP16_0;
                    REF.X_0[7] = REF.Z_0[7] + OP17_0;
                    REF.X_0[8] = REF.Z_0[10];
                    REF.X_0[9] = REF.Z_0[6] - OP16_0;
                    REF.X_0[10] = REF.Z_0[7] - OP17_0;
                    REF.X_0[11] = REF.Z_0[11];
                    REF.X_0[12] = REF.Z_0[12] + OP18_0;
                    REF.X_0[13] = REF.Z_0[13] + OP19_0;
                    REF.X_0[14] = REF.Z_0[16];
                    REF.X_0[15] = REF.Z_0[12] - OP18_0;
                    REF.X_0[16] = REF.Z_0[13] - OP19_0;
                    REF.X_0[17] = REF.Z_0[17];
                    break;
                }
                default:{
                    float SC2_0 = sinf(REF.Z_0[2]);                                         // Pre-compute sin(thc(0));
                    float CC2_0 = cosf(REF.Z_0[2]);                                         // Pre-compute cos(thc(0));
                    float OP1_0 = REF.Z_0[3]*SC2_0;                                         // Pre-compute operation 1;
                    float OP2_0 = REF.Z_0[3]*CC2_0;                                         // Pre-compute operation 2;
                    float OP3_0 = REF.Z_0[9]*SC2_0;                                         // Pre-compute operation 3;
                    float OP4_0 = REF.Z_0[9]*CC2_0;                                         // Pre-compute operation 4;
                    float OP5_0 = REF.Z_0[15]*SC2_0;                                        // Pre-compute operation 5;
                    float OP6_0 = REF.Z_0[15]*CC2_0;                                        // Pre-compute operation 6;
                    float OP7_0 = OP2_0*REF.Z_0[8];                                         // Pre-compute operation 7;
                    float OP8_0 = OP1_0*REF.Z_0[8];                                         // Pre-compute operation 8;
                    float OP9_0 = 2.0f*OP4_0*REF.Z_0[8];                                    // Pre-compute operation 9;
                    float OP10_0 = 2.0f*OP3_0*REF.Z_0[8];                                   // Pre-compute operation 10;
                    float OP11_0 = REF.Z_0[8]*REF.Z_0[8];                                   // Pre-compute operation 11;
                    float OP12_0 = (SC2_0*OP11_0 - CC2_0*REF.Z_0[14]);                      // Pre-compute operation 12;
                    float OP13_0 = (CC2_0*OP11_0 + SC2_0*REF.Z_0[14]);                      // Pre-compute operation 13;
                    float OP14_0 = REF.Z_0[3]*OP12_0;                                       // Pre-compute operation 14;
                    float OP15_0 = REF.Z_0[3]*OP13_0;                                       // Pre-compute operation 15;
                    float OP16_0 = OP3_0 + OP7_0;                                           // Pre-compute operation 16;
                    float OP17_0 = OP4_0 - OP8_0;                                           // Pre-compute operation 17;
                    float OP18_0 = OP5_0 + OP9_0 - OP14_0;                                  // Pre-compute operation 18;
                    float OP19_0 = OP6_0 - OP10_0 - OP15_0;                                 // Pre-compute operation 19;
                    //------------------------------
                    // Computing the initial conditions for the state variables in the robot space:
                    REF.X_0[0] = REF.Z_0[0] + OP1_0;
                    REF.X_0[1] = REF.Z_0[1] + OP2_0;
                    REF.X_0[2] = REF.Z_0[2] + REF.Z_0[4];
                    REF.X_0[3] = REF.Z_0[0] - OP1_0;
                    REF.X_0[4] = REF.Z_0[1] - OP2_0;
                    REF.X_0[5] = REF.Z_0[2] + REF.Z_0[5];
                    REF.X_0[6] = REF.Z_0[6] + OP16_0;
                    REF.X_0[7] = REF.Z_0[7] + OP17_0;
                    REF.X_0[8] = REF.Z_0[8] + REF.Z_0[10];
                    REF.X_0[9] = REF.Z_0[6] - OP16_0;
                    REF.X_0[10] = REF.Z_0[7] - OP17_0;
                    REF.X_0[11] = REF.Z_0[8] + REF.Z_0[11];
                    REF.X_0[12] = REF.Z_0[12] + OP18_0;
                    REF.X_0[13] = REF.Z_0[13] + OP19_0;
                    REF.X_0[14] = REF.Z_0[14] + REF.Z_0[16];
                    REF.X_0[15] = REF.Z_0[12] - OP18_0;
                    REF.X_0[16] = REF.Z_0[13] - OP19_0;
                    REF.X_0[17] = REF.Z_0[14] + REF.Z_0[17];
                    break;
                }
            }
            break;
        }
    }
    //------------------------------
    // Initial conditions for robot space variables:
    for(i = 0; i < s; i++){
        REF.x1_k[i] = REF.X_0[i];                                                           // Saving initial robots' pose x1(k = 0) for OMRs formation.
        REF.x1_kp1[i] = REF.Ts*REF.X_0[i+s] + REF.X_0[i];                                   // Saving robots' pose prediction x1(k + 1) within REF structure.
        REF.x2_k[i] = REF.X_0[i+s];                                                         // Saving initial robots' velocity x2(k = 0) for OMRs formation.
        REF.x2_kp1[i] = REF.Ts*REF.X_0[i+r] + REF.X_0[i+s];                                 // Saving robots' velocity prediction x2(k + 1) within REF structure.
        REF.x3_k[i] = REF.X_0[i+r];                                                         // Saving initial robots' acceleration x3(k = 0) for OMRs formation.
        REF.x3_kp1[i] = (1.0f/REF.Ts)*(REF.x2_kp1[i] - REF.x2_k[i]);                        // Differentiation operator to obtain prediction x3(k + 1).
    }
    //------------------------------
    switch(reftype){
        case MINGYUE_01:{
            free(Ci1_0);                                                                    // Release the allocated memory for Ci1_0.
            free(Ci2_0);                                                                    // Release the allocated memory for Ci2_0.
            float *Xco_0 = (float *)malloc(Robots_Qty * sizeof(float));                     // Allocate temporal memory for a vector to place the initial conditions for associated converter COR within REF reference structure.
            float *Xd1_0 = (float *)malloc(2*Robots_Qty * sizeof(float));                   // Allocate temporal memory for a vector to place the initial conditions for associated differentiator DIF_1 within REF reference structure.
            float *Xd2_0 = (float *)malloc(2*Robots_Qty * sizeof(float));                   // Allocate temporal memory for a vector to place the initial conditions for associated differentiator DIF_2 within REF reference structure.
            float *Ci1_0 = (float *)malloc(2*(Robots_Qty+2) * sizeof(float));               // Allocate temporal memory for a vector to place the initial conditions of associated INT_3 integrator within REF structure.
            float *Ci2_0 = (float *)malloc(2 * sizeof(float));                              // Allocate temporal memory for a vector to place the initial conditions of associated INT_3 integrator within REF structure.
            float *Ci3_0 = (float *)malloc(2*(Robots_Qty+1) * sizeof(float));               // Allocate temporal memory for a vector to place the initial conditions of associated INT_3 integrator within REF structure.
            //-----------------------------------------------
            // Configuring initiation vectors:
            for(i = 0; i < Robots_Qty; i++){
                Xco_0[i] = REF.X_0[2+3*i];                                                  // Initial condition for angle conversion function.
                // Adding initial conditions to associated differentiators DIF_1 and DIF_2 within REF structure:
                Xd1_0[i] = REF.x1_k[2+3*i];
                Xd1_0[i+Robots_Qty] = REF.x2_k[2+3*i];
                Xd2_0[i] = REF.x2_k[2+3*i];
                Xd2_0[i+Robots_Qty] = REF.x3_k[2+3*i];
            }
            // Adding initial conditions to associated integrator INT_1, within REF structure:
            for(i = 0; i < Robots_Qty+2; i++){
                Ci1_0[i] = REF.z2_k[i];
                Ci1_0[i+Robots_Qty+2] = REF.z1_k[i];
            }
            // Adding initial conditions to associated integrator INT_2, within REF structure:
            Ci2_0[0] = REF.z3_k[2];
            Ci2_0[1] = REF.z2_k[2];
            // Adding initial conditions to associated integrator INT_3, within REF structure:
            for(i = 0; i < Robots_Qty+1; i++){
                if(i < 2){
                    Ci3_0[i] = REF.z3_k[i];
                    Ci3_0[i+Robots_Qty+1] = REF.z2_k[i];
                }
                else{
                    Ci3_0[i] = REF.z3_k[i+1];
                    Ci3_0[i+Robots_Qty+1] = REF.z2_k[i+1];
                }
            }
            //-----------------------------------------------
            initAngleConverter(REF.COR,Xco_0);                                              // Initialize angle conversion function to obtained angles after atan2(.) function.
            initDifferentiator(REF.DIF_1,Xd1_0);                                            // Initialize first differentiation structure within reference builder REF structure.
            initDifferentiator(REF.DIF_2,Xd2_0);                                            // Initialize second differentiation structure within reference builder REF structure.
            // Initiating REF.INT_1, REF.INT_2 and REF.INT_3 integration structures:
            initIntegrator(REF.INT_1,Ci1_0);                                                // Initialize first common integrator of REF references builder.
            initIntegrator(REF.INT_2,Ci2_0);                                                // Initialize second common integrator of REF references builder.
            initIntegrator(REF.INT_3,Ci3_0);                                                // Initialize third common integrator of REF references builder.
            break;
        }
        default:{
            // Initiating REF.INT_1 and REF.INT_2 integration structures:
            initIntegrator(REF.INT_1,Ci1_0);                                                // Initialize first common integrator of REF references builder.
            initIntegrator(REF.INT_2,Ci2_0);                                                // Initialize second common integrator of REF references builder.
        }
    }
    switch(consys){
        case ADRC_RS:
        for(i = 0; i < 3*Robots_Qty; i++){
            // Arranging output of REF structure in the robot space:
            REF.y_k[i] = roundToThreeDecimals(REF.x1_k[i]);
            REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.x2_k[i]);
            REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.x3_k[i]);
        }
        break;
        case SMC_CS:
        for(i = 0; i < 3*Robots_Qty; i++){
            // Arranging output of REF structure in the cluster space:
            REF.y_k[i] = roundToThreeDecimals(REF.z1_k[i]);
            REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.z2_k[i]);
            REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.z3_k[i]);
        }
        break;
        case SMC_CSa:
        for(i = 0; i < 3*Robots_Qty; i++){
            // Arranging output of REF structure in the cluster space and robot space:
            REF.y_k[i] = roundToThreeDecimals(REF.z1_k[i]);
            REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.z2_k[i]);
            REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.z3_k[i]);
        }
        break;
    }
    //-----------------------------------------------
    REF.flag[0] = true;                                                                     // Flag settled to true, which enables the reference builder within REF structure.
}
//---------------------------------------------------------------------------------------------------------------
// Compute the instantaneous circumference-shape reference trajectory n: 01, for OMRs control system (using CS framework):
void computeCircumference01(Reference REF, Control_System consys, unsigned long iterations){
    int i;                                                                                  // Declaration of i as integer variable.
    // Executing circumference references builder algorithm (using CS framework):
    if(REF.flag[0]){
        // Updating algorithm:
        for(i = 0; i < 3*Robots_Qty; i++){
            REF.x1_k[i] = REF.x1_kp1[i];                                                    // Updating data for x1(k) within REF structure.
            REF.x2_k[i] = REF.x2_kp1[i];                                                    // Updating data for x2(k) within REF structure.
            REF.x3_k[i] = REF.x3_kp1[i];                                                    // Updating data for x3(k) within REF structure.
            REF.z1_k[i] = REF.z1_kp1[i];                                                    // Updating data for c1(k) within REF structure.
            REF.z2_k[i] = REF.z2_kp1[i];                                                    // Updating data for c2(k) within REF structure.
            REF.z3_k[i] = REF.z3_kp1[i];                                                    // Updating data for c3(k) within REF structure.
        }
        // Computing equations for circumference profiles generation in the cluster space:
        float Vc = 200.0f;                                                                  // [mm/s], linear velocity of cluster centroid.
        float Rc = 1200.0f;                                                                 // [mm], desired radius of planned trajectory.
        float Ac = Vc*Vc/Rc;                                                                // Pre-compute angular acceleration Vc^2/Rc.
        float WTc = Vc*(float)(iterations)*REF.Ts/Rc + REF.Z_0[2];                          // Rate variation of sinusoidal functions.
        switch(Robots_Qty){
            case 2:{
                //------------------------------Cluster Space--------------------------------
                REF.z3_kp1[0] = Ac*sinf(WTc);                                               // Computing d^2(xc)/dt^2.
                REF.z3_kp1[1] = Ac*cosf(WTc);                                               // Computing d^2(yc)/dt^2.
                REF.z3_kp1[2] = 0.0f;                                                       // Computing d^2(thc)/dt^2.
                REF.z3_kp1[3] = 0.0f;                                                       // Computing d^2(dc)/dt^2.
                REF.z3_kp1[4] = 0.0f;                                                       // Computing d^2(psi_1)/dt^2.
                REF.z3_kp1[5] = 0.0f;                                                       // Computing d^2(psi_2)/dt^2.
                Integration(REF.INT_2,REF.z3_kp1);                                          // Compute second integration to c3(k + 1).
                Integration(REF.INT_1,REF.INT_2.y_k);                                       // Compute first integration to second integration output.
                for(i = 0; i < 3*Robots_Qty; i++){
                    REF.z1_kp1[i] = REF.INT_1.x2_kp1[i];                                    // Updating data for c1(k + 1) within REF structure.
                    REF.z2_kp1[i] = REF.INT_2.x2_kp1[i];                                    // Updating data for c2(k + 1) within REF structure.
                }
                //-------------------------------Robot Space---------------------------------
                float SC2_kp1 = sinf(REF.z1_kp1[2]);                                        // Pre-compute sin(thc);
                float CC2_kp1 = cosf(REF.z1_kp1[2]);                                        // Pre-compute cos(thc);
                float OP1_kp1 = REF.z1_kp1[3]*SC2_kp1;                                      // Pre-compute operation 1;
                float OP2_kp1 = REF.z1_kp1[3]*CC2_kp1;                                      // Pre-compute operation 2;
                float OP3_kp1 = REF.z2_kp1[3]*SC2_kp1;                                      // Pre-compute operation 3;
                float OP4_kp1 = REF.z2_kp1[3]*CC2_kp1;                                      // Pre-compute operation 4;
                float OP5_kp1 = REF.z3_kp1[2]*SC2_kp1;                                      // Pre-compute operation 5;
                float OP6_kp1 = REF.z3_kp1[2]*CC2_kp1;                                      // Pre-compute operation 6;
                float OP7_kp1 = REF.z3_kp1[3]*SC2_kp1;                                      // Pre-compute operation 7;
                float OP8_kp1 = REF.z3_kp1[3]*CC2_kp1;                                      // Pre-compute operation 8;
                float OP9_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*SC2_kp1;                        // Pre-compute operation 9;
                float OP10_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*CC2_kp1;                       // Pre-compute operation 10;
                float OP11_kp1 = OP1_kp1*REF.z2_kp1[2];                                     // Pre-compute operation 11;
                float OP12_kp1 = OP2_kp1*REF.z2_kp1[2];                                     // Pre-compute operation 12;
                float OP13_kp1 = OP3_kp1*REF.z2_kp1[2];                                     // Pre-compute operation 13;
                float OP14_kp1 = OP4_kp1*REF.z2_kp1[2];                                     // Pre-compute operation 14;
                float OP15_kp1 = REF.z1_kp1[3]*(OP9_kp1 - OP6_kp1);                         // Pre-compute operation 15;
                float OP16_kp1 = REF.z1_kp1[3]*(OP10_kp1 + OP5_kp1);                        // Pre-compute operation 16;
                float OP17_kp1 = OP3_kp1 + OP12_kp1;                                        // Pre-compute operation 17;
                float OP18_kp1 = OP4_kp1 - OP11_kp1;                                        // Pre-compute operation 18;
                float OP19_kp1 = OP7_kp1 + 2.0f*OP14_kp1 - OP15_kp1;                        // Pre-compute operation 19;
                float OP20_kp1 = OP8_kp1 - 2.0f*OP13_kp1 - OP16_kp1;                        // Pre-compute operation 20;
                //------------------------------
                REF.x1_kp1[0] = REF.z1_kp1[0] + OP1_kp1;
                REF.x1_kp1[1] = REF.z1_kp1[1] + OP2_kp1;
                REF.x1_kp1[3] = REF.z1_kp1[0] - OP1_kp1;
                REF.x1_kp1[4] = REF.z1_kp1[1] - OP2_kp1;
                //------------------------------
                REF.x2_kp1[0] = REF.z2_kp1[0] + OP17_kp1;
                REF.x2_kp1[1] = REF.z2_kp1[1] + OP18_kp1;
                REF.x2_kp1[3] = REF.z2_kp1[0] - OP17_kp1;
                REF.x2_kp1[4] = REF.z2_kp1[1] - OP18_kp1;
                //------------------------------
                REF.x3_kp1[0] = REF.z3_kp1[0] + OP19_kp1;
                REF.x3_kp1[1] = REF.z3_kp1[1] + OP20_kp1;
                REF.x3_kp1[3] = REF.z3_kp1[0] - OP19_kp1;
                REF.x3_kp1[4] = REF.z3_kp1[1] - OP20_kp1;
                //------------------------------
                switch(consys){
                    case SMC_CSa:{
                        REF.x1_kp1[2] = REF.z1_kp1[4];
                        REF.x1_kp1[5] = REF.z1_kp1[5];
                        REF.x2_kp1[2] = REF.z2_kp1[4];
                        REF.x2_kp1[5] = REF.z2_kp1[5];
                        REF.x3_kp1[2] = REF.z3_kp1[4];
                        REF.x3_kp1[5] = REF.z3_kp1[5];
                        break;
                    }
                    default:{
                        REF.x1_kp1[2] = REF.z1_kp1[2] + REF.z1_kp1[4];
                        REF.x1_kp1[5] = REF.z1_kp1[2] + REF.z1_kp1[5];
                        REF.x2_kp1[2] = REF.z2_kp1[2] + REF.z2_kp1[4];
                        REF.x2_kp1[5] = REF.z2_kp1[2] + REF.z2_kp1[5];
                        REF.x3_kp1[2] = REF.z3_kp1[2] + REF.z3_kp1[4];
                        REF.x3_kp1[5] = REF.z3_kp1[2] + REF.z3_kp1[5];
                        break;
                    }
                }
                break;
            }
        }
        //------------------------------
        switch(consys){
            case ADRC_RS:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the robot space:
                REF.y_k[i] = roundToThreeDecimals(REF.x1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.x2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.x3_k[i]);
            }
            break;
            case SMC_CS:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the cluster space:
                REF.y_k[i] = roundToThreeDecimals(REF.z1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.z2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.z3_k[i]);
            }
            break;
            case SMC_CSa:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the cluster space:
                REF.y_k[i] = roundToThreeDecimals(REF.z1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.z2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.z3_k[i]);
            }
            break;
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Compute the instantaneous mingyue's infinity-shape reference trajectory n: 01, for OMRs control system (using CS framework):
void computeInfinity01(Reference REF, Control_System consys, unsigned long iterations){
    int i;                                                                                  // Declaration of i as integer variable.
    // Executing circumference builder algorithm:
    if(REF.flag[0]){
        // Updating algorithm:
        for(i = 0; i < 3*Robots_Qty; i++){
            REF.x1_k[i] = REF.x1_kp1[i];                                                    // Updating data for x1(k) within REF structure.
            REF.x2_k[i] = REF.x2_kp1[i];                                                    // Updating data for x2(k) within REF structure.
            REF.x3_k[i] = REF.x3_kp1[i];                                                    // Updating data for x3(k) within REF structure.
            REF.z1_k[i] = REF.z1_kp1[i];                                                    // Updating data for c1(k) within REF structure.
            REF.z2_k[i] = REF.z2_kp1[i];                                                    // Updating data for c2(k) within REF structure.
            REF.z3_k[i] = REF.z3_kp1[i];                                                    // Updating data for c3(k) within REF structure.
        }
        // Computing equations for infinity reference profiles generation in the cluster space:
        float Sc = 900.0f;                                                                  // [mm], scope of infinity-shape trajectory on workspace.
        float Wc = 0.04f;                                                                   // [1.0f/25.0f rad/s], Desired angular velocity relationship gain of planned trajectory.
        float Wc0 = Sc*Wc;                                                                  // Pre-compute operation Sc*Wc.
        float Wc1 = Wc0*Wc;                                                                 // Pre-compute operation Sc*(Wc^2).
        float Wc2 = Wc1*Wc;                                                                 // Pre-compute operation Sc*(Wc^3).
        float WTc = (float)(iterations)*REF.Ts*Wc;                                          // Rate variation of sinusoidal functions.
        float ddd_xc_k = -Wc2*cosf(WTc);                                                    // Computing d^3(xc)/dt^3.
        float ddd_yc_k = -8.0f*Wc2*cosf(2.0f*WTc);                                          // Computing d^3(yc)/dt^3.
        switch(Robots_Qty){
            case 2:{
                //------------------------------Cluster Space--------------------------------
                REF.z3_kp1[0] = -Wc1*sinf(WTc) + REF.Z_0[12];                               // Computing d^2(xc)/dt^2.
                REF.z3_kp1[1] = -4.0f*Wc1*sinf(2.0f*WTc) + REF.Z_0[13];                     // Computing d^2(yc)/dt^2.
                REF.z3_kp1[3] = 0.0f + REF.Z_0[15];                                         // Computing d^2(dc)/dt^2.
                float Z3_1_k[3] = {REF.z3_kp1[0], REF.z3_kp1[1], REF.z3_kp1[3]};            // First vector of z3(k + 1) = d^2([xc,yc])/dt^2.
                Integration(REF.INT_3,Z3_1_k);                                              // Compute second integration to c3(k + 1).
                REF.z2_kp1[0] = REF.INT_3.x2_kp1[0];
                REF.z2_kp1[1] = REF.INT_3.x2_kp1[1];
                REF.z2_kp1[3] = REF.INT_3.x2_kp1[2];
                //------------------------------
                // Computing d^2(thc)/dt^2:
                float OP1_kp1 = REF.z2_kp1[0]*REF.z2_kp1[0];                                // Pre-compute operation OP1(k).
                float OP2_kp1 = REF.z2_kp1[0]*REF.z2_kp1[1];                                // Pre-compute operation OP2(k).
                float OP3_kp1 = REF.z2_kp1[1]*REF.z2_kp1[1];                                // Pre-compute operation OP3(k).
                float OP4_kp1 = OP1_kp1 + OP3_kp1;                                          // Pre-compute operation OP4(k).
                float OP5_kp1 = OP1_kp1 - OP3_kp1;                                          // Pre-compute operation OP5(k).
                float OP6_kp1 = OP4_kp1*OP4_kp1;                                            // Pre-compute operation OP6(k).
                REF.z3_kp1[2] = -REF.z3_kp1[0]*(2.0f*REF.z3_kp1[0]*OP2_kp1 - REF.z3_kp1[1]*OP5_kp1)/OP6_kp1 + REF.z3_kp1[1]*(2.0f*REF.z3_kp1[1]*OP2_kp1 + REF.z3_kp1[0]*OP5_kp1)/OP6_kp1 + (ddd_xc_k*REF.z2_kp1[1] - ddd_yc_k*REF.z2_kp1[0])/OP4_kp1;
                float Z3_2_k[1] = {REF.z3_kp1[2]};                                          // Second vector of z3(k + 1) = d^2([xc,yc])/dt^2.
                Integration(REF.INT_2,Z3_2_k);                                              // Compute second integration to c3(k + 1).
                REF.z2_kp1[2] = REF.INT_2.x2_kp1[0];
                //------------------------------
                // First vector of z2(k + 1) = d([xc,yc,thc,dc])/dt:
                float Z2_1_k[4] = {REF.z2_kp1[0], REF.z2_kp1[1], REF.z2_kp1[2], REF.z2_kp1[3]};
                Integration(REF.INT_1,Z2_1_k);                                              // Compute second integration to c3(k + 1).
                REF.z1_kp1[0] = REF.INT_1.x2_kp1[0];
                REF.z1_kp1[1] = REF.INT_1.x2_kp1[1];
                REF.z1_kp1[2] = REF.INT_1.x2_kp1[2];
                REF.z1_kp1[3] = REF.INT_1.x2_kp1[3];
                //-------------------------------Robot Space---------------------------------
                float SC2_kp1 = sinf(REF.z1_kp1[2]);                                        // Pre-compute sin(thc).
                float CC2_kp1 = cosf(REF.z1_kp1[2]);                                        // Pre-compute cos(thc).
                OP1_kp1 = REF.z1_kp1[3]*SC2_kp1;                                            // Pre-compute operation OP1(k).
                OP2_kp1 = REF.z1_kp1[3]*CC2_kp1;                                            // Pre-compute operation OP2(k).
                OP3_kp1 = REF.z2_kp1[3]*SC2_kp1;                                            // Pre-compute operation OP3(k).
                OP4_kp1 = REF.z2_kp1[3]*CC2_kp1;                                            // Pre-compute operation OP4(k).
                OP5_kp1 = REF.z3_kp1[2]*SC2_kp1;                                            // Pre-compute operation OP5(k).
                OP6_kp1 = REF.z3_kp1[2]*CC2_kp1;                                            // Pre-compute operation OP6(k).
                float OP7_kp1 = REF.z3_kp1[3]*SC2_kp1;                                      // Pre-compute operation OP7(k).
                float OP8_kp1 = REF.z3_kp1[3]*CC2_kp1;                                      // Pre-compute operation OP8(k).
                float OP9_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*SC2_kp1;                        // Pre-compute operation OP9(k).
                float OP10_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*CC2_kp1;                       // Pre-compute operation OP10(k).
                float OP11_kp1 = OP1_kp1*REF.z2_kp1[2];                                     // Pre-compute operation OP11(k).
                float OP12_kp1 = OP2_kp1*REF.z2_kp1[2];                                     // Pre-compute operation OP12(k).
                float OP13_kp1 = OP3_kp1*REF.z2_kp1[2];                                     // Pre-compute operation OP13(k).
                float OP14_kp1 = OP4_kp1*REF.z2_kp1[2];                                     // Pre-compute operation OP14(k).
                float OP15_kp1 = REF.z1_kp1[3]*(OP9_kp1 - OP6_kp1);                         // Pre-compute operation OP15(k).
                float OP16_kp1 = REF.z1_kp1[3]*(OP10_kp1 + OP5_kp1);                        // Pre-compute operation OP16(k).
                float OP17_kp1 = OP3_kp1 + OP12_kp1;                                        // Pre-compute operation OP17(k).
                float OP18_kp1 = OP4_kp1 - OP11_kp1;                                        // Pre-compute operation OP18(k).
                float OP19_kp1 = OP7_kp1 + 2.0f*OP14_kp1 - OP15_kp1;                        // Pre-compute operation OP19(k).
                float OP20_kp1 = OP8_kp1 - 2.0f*OP13_kp1 - OP16_kp1;                        // Pre-compute operation OP20(k).
                //------------------------------
                REF.x1_kp1[0] = REF.z1_kp1[0] + OP1_kp1;
                REF.x1_kp1[1] = REF.z1_kp1[1] + OP2_kp1;
                REF.x1_kp1[3] = REF.z1_kp1[0] - OP1_kp1;
                REF.x1_kp1[4] = REF.z1_kp1[1] - OP2_kp1;
                //------------------------------
                REF.x2_kp1[0] = REF.z2_kp1[0] + OP17_kp1;
                REF.x2_kp1[1] = REF.z2_kp1[1] + OP18_kp1;
                REF.x2_kp1[3] = REF.z2_kp1[0] - OP17_kp1;
                REF.x2_kp1[4] = REF.z2_kp1[1] - OP18_kp1;
                //------------------------------
                float angles_k[Robots_Qty] = {-atan2f(REF.x2_kp1[0],REF.x2_kp1[1]), -atan2f(REF.x2_kp1[3],REF.x2_kp1[4])};
                angleConversion(REF.COR,angles_k);                                          // OMRs' orientation angles th1(k) and th2(k) are converted to absolute format.
                REF.x1_kp1[2] = M_PI_2 + REF.COR.y_k[0];
                REF.x1_kp1[5] = M_PI_2 + REF.COR.y_k[1];
                Differentiation(REF.DIF_1,REF.COR.y_k);                                     // First derivative of robots' angles th1(k) and th2(k).
                REF.x2_kp1[2] = REF.DIF_1.y_k[0];
                REF.x2_kp1[5] = REF.DIF_1.y_k[1];
                Differentiation(REF.DIF_2,REF.DIF_1.y_k);                                   // Second derivative of robots' angles th1(k) and th2(k).
                //------------------------------
                REF.x3_kp1[0] = REF.z3_kp1[0] + OP19_kp1;
                REF.x3_kp1[1] = REF.z3_kp1[1] + OP20_kp1;
                REF.x3_kp1[2] = REF.DIF_2.y_k[0];
                REF.x3_kp1[3] = REF.z3_kp1[0] - OP19_kp1;
                REF.x3_kp1[4] = REF.z3_kp1[1] - OP20_kp1;
                REF.x3_kp1[5] = REF.DIF_2.y_k[1];
                //------------------------------Cluster Space--------------------------------
                switch(consys){
                    case SMC_CSa:{
                        REF.z3_kp1[4] = REF.x3_kp1[2];                                      // Computing d^2(psi_1)/dt^2.
                        REF.z3_kp1[5] = REF.x3_kp1[5];                                      // Computing d^2(psi_2)/dt^2.
                        REF.z2_kp1[4] = REF.x2_kp1[2];                                      // Computing d(psi_1)/dt.
                        REF.z2_kp1[5] = REF.x2_kp1[5];                                      // Computing d(psi_2)/dt.
                        REF.z1_kp1[4] = REF.x1_kp1[2];                                      // Computing psi_1.
                        REF.z1_kp1[5] = REF.x1_kp1[5];                                      // Computing psi_2.
                        break;
                    }
                    default:{
                        REF.z3_kp1[4] = REF.x3_kp1[2] - REF.z3_kp1[2];                      // Computing d^2(psi_1)/dt^2.
                        REF.z3_kp1[5] = REF.x3_kp1[5] - REF.z3_kp1[2];                      // Computing d^2(psi_2)/dt^2.
                        REF.z2_kp1[4] = REF.x2_kp1[2] - REF.z2_kp1[2];                      // Computing d(psi_1)/dt.
                        REF.z2_kp1[5] = REF.x2_kp1[5] - REF.z2_kp1[2];                      // Computing d(psi_2)/dt.
                        REF.z1_kp1[4] = REF.x1_kp1[2] - REF.z1_kp1[2];                      // Computing psi_1.
                        REF.z1_kp1[5] = REF.x1_kp1[5] - REF.z1_kp1[2];                      // Computing psi_2.
                        break;
                    }
                }
                break;
            }
        }
        switch(consys){
            case ADRC_RS:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the robot space:
                REF.y_k[i] = roundToThreeDecimals(REF.x1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.x2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.x3_k[i]);
            }
            break;
            case SMC_CS:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the cluster space:
                REF.y_k[i] = roundToThreeDecimals(REF.z1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.z2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.z3_k[i]);
            }
            break;
            case SMC_CSa:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the cluster space:
                REF.y_k[i] = roundToThreeDecimals(REF.z1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.z2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.z3_k[i]);
            }
            break;
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Compute the instantaneous mingyue's infinity-shape reference trajectory n: 02, for OMRs control system (using CS framework):
void computeInfinity02(Reference REF, Control_System consys, unsigned long iterations){
    int i;                                                                                  // Declaration of i as integer variable.
    // Executing circumference builder algorithm:
    if(REF.flag[0]){
        // Updating algorithm:
        for(i = 0; i < 3*Robots_Qty; i++){
            REF.x1_k[i] = REF.x1_kp1[i];                                                    // Updating data for x1(k) within REF structure.
            REF.x2_k[i] = REF.x2_kp1[i];                                                    // Updating data for x2(k) within REF structure.
            REF.x3_k[i] = REF.x3_kp1[i];                                                    // Updating data for x3(k) within REF structure.
            REF.z1_k[i] = REF.z1_kp1[i];                                                    // Updating data for c1(k) within REF structure.
            REF.z2_k[i] = REF.z2_kp1[i];                                                    // Updating data for c2(k) within REF structure.
            REF.z3_k[i] = REF.z3_kp1[i];                                                    // Updating data for c3(k) within REF structure.
        }
        // Computing equations for infinity reference profiles generation in the cluster space:
        float Sc = 900.0f;                                                                  // [mm], scope of infinity-shape trajectory on workspace.
        float Wc = 0.08f;                                                                   // [1.0f/12.5f rad/s], Desired angular velocity relationship gain of planned trajectory.
        float Wc1 = Sc*Wc*Wc;                                                               // Pre-compute operation Sc*(Wc^2).
        float Wc2 = Wc1*Wc;                                                                 // Pre-compute operation Sc*(Wc^3).
        float WTc = (float)(iterations)*REF.Ts*Wc;                                          // Rate variation of sinusoidal functions.
        float ddd_xc_k = -Wc2*cosf(WTc);                                                    // Computing d^3(xc)/dt^3.
        float ddd_yc_k = -8.0f*Wc2*cosf(2.0f*WTc);                                          // Computing d^3(yc)/dt^3.
        switch(Robots_Qty){
            case 2:{
                //------------------------------Cluster Space--------------------------------
                REF.z3_kp1[0] = -Wc1*sinf(WTc);                                             // Computing d^2(xc)/dt^2.
                REF.z3_kp1[1] = -4.0f*Wc1*sinf(2.0f*WTc);                                   // Computing d^2(yc)/dt^2.
                // Computing d^2(thc)/dt^2:
                float OP1_kp1 = REF.z2_kp1[0]*REF.z2_kp1[0];                                // Pre-compute operation OP1(k).
                float OP2_kp1 = REF.z2_kp1[0]*REF.z2_kp1[1];                                // Pre-compute operation OP2(k).
                float OP3_kp1 = REF.z2_kp1[1]*REF.z2_kp1[1];                                // Pre-compute operation OP3(k).
                float OP4_kp1 = OP1_kp1 + OP3_kp1;                                          // Pre-compute operation OP4(k).
                float OP5_kp1 = OP1_kp1 - OP3_kp1;                                          // Pre-compute operation OP5(k).
                float OP6_kp1 = OP4_kp1*OP4_kp1;                                            // Pre-compute operation OP6(k).
                REF.z3_kp1[2] = -REF.z3_kp1[0]*(2.0f*REF.z3_kp1[0]*OP2_kp1 - REF.z3_kp1[1]*OP5_kp1)/OP6_kp1 + REF.z3_kp1[1]*(2.0f*REF.z3_kp1[1]*OP2_kp1 + REF.z3_kp1[0]*OP5_kp1)/OP6_kp1 + (ddd_xc_k*REF.z2_kp1[1] - ddd_yc_k*REF.z2_kp1[0])/OP4_kp1;
                //------------------------------
                REF.z3_kp1[3] = 0.0f;                                                       // Computing d^2(dc)/dt^2.
                switch(consys){
                    case SMC_CSa:{
                        REF.z3_kp1[4] = 0.0f;                                               // Computing d^2(psi_1)/dt^2.
                        REF.z3_kp1[5] = 0.0f;                                               // Computing d^2(psi_2)/dt^2.
                        break;
                    }
                    default:{
                        REF.z3_kp1[4] = -REF.z3_kp1[2];                                     // Computing d^2(psi_1)/dt^2.
                        REF.z3_kp1[5] = -REF.z3_kp1[2];                                     // Computing d^2(psi_2)/dt^2.
                        break;
                    }
                }
                Integration(REF.INT_2,REF.z3_kp1);                                          // Compute second integration to c3(k + 1).
                Integration(REF.INT_1,REF.INT_2.y_k);                                       // Compute first integration to second integration output.
                for(i = 0; i < 3*Robots_Qty; i++){
                    REF.z1_kp1[i] = REF.INT_1.x2_kp1[i];                                    // Updating data for c1(k + 1) within REF structure.
                    REF.z2_kp1[i] = REF.INT_2.x2_kp1[i];                                    // Updating data for c2(k + 1) within REF structure.
                }
                //-------------------------------Robot Space---------------------------------
                float SC2_kp1 = sinf(REF.z1_kp1[2]);                                        // Pre-compute sin(thc).
                float CC2_kp1 = cosf(REF.z1_kp1[2]);                                        // Pre-compute cos(thc).
                OP1_kp1 = REF.z1_kp1[3]*SC2_kp1;                                            // Pre-compute operation OP1(k).
                OP2_kp1 = REF.z1_kp1[3]*CC2_kp1;                                            // Pre-compute operation OP2(k).
                OP3_kp1 = REF.z2_kp1[3]*SC2_kp1;                                            // Pre-compute operation OP3(k).
                OP4_kp1 = REF.z2_kp1[3]*CC2_kp1;                                            // Pre-compute operation OP4(k).
                OP5_kp1 = REF.z3_kp1[2]*SC2_kp1;                                            // Pre-compute operation OP5(k).
                OP6_kp1 = REF.z3_kp1[2]*CC2_kp1;                                            // Pre-compute operation OP6(k).
                float OP7_kp1 = REF.z3_kp1[3]*SC2_kp1;                                      // Pre-compute operation OP7(k).
                float OP8_kp1 = REF.z3_kp1[3]*CC2_kp1;                                      // Pre-compute operation OP8(k).
                float OP9_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*SC2_kp1;                        // Pre-compute operation OP9(k).
                float OP10_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*CC2_kp1;                       // Pre-compute operation OP10(k).
                float OP11_kp1 = OP1_kp1*REF.z2_kp1[2];                                     // Pre-compute operation OP11(k).
                float OP12_kp1 = OP2_kp1*REF.z2_kp1[2];                                     // Pre-compute operation OP12(k).
                float OP13_kp1 = OP3_kp1*REF.z2_kp1[2];                                     // Pre-compute operation OP13(k).
                float OP14_kp1 = OP4_kp1*REF.z2_kp1[2];                                     // Pre-compute operation OP14(k).
                float OP15_kp1 = REF.z1_kp1[3]*(OP9_kp1 - OP6_kp1);                         // Pre-compute operation OP15(k).
                float OP16_kp1 = REF.z1_kp1[3]*(OP10_kp1 + OP5_kp1);                        // Pre-compute operation OP16(k).
                float OP17_kp1 = OP3_kp1 + OP12_kp1;                                        // Pre-compute operation OP17(k).
                float OP18_kp1 = OP4_kp1 - OP11_kp1;                                        // Pre-compute operation OP18(k).
                float OP19_kp1 = OP7_kp1 + 2.0f*OP14_kp1 - OP15_kp1;                        // Pre-compute operation OP19(k).
                float OP20_kp1 = OP8_kp1 - 2.0f*OP13_kp1 - OP16_kp1;                        // Pre-compute operation OP20(k).
                //------------------------------
                REF.x1_kp1[0] = REF.z1_kp1[0] + OP1_kp1;
                REF.x1_kp1[1] = REF.z1_kp1[1] + OP2_kp1;
                REF.x1_kp1[3] = REF.z1_kp1[0] - OP1_kp1;
                REF.x1_kp1[4] = REF.z1_kp1[1] - OP2_kp1;
                //------------------------------
                REF.x2_kp1[0] = REF.z2_kp1[0] + OP17_kp1;
                REF.x2_kp1[1] = REF.z2_kp1[1] + OP18_kp1;
                REF.x2_kp1[3] = REF.z2_kp1[0] - OP17_kp1;
                REF.x2_kp1[4] = REF.z2_kp1[1] - OP18_kp1;
                //------------------------------
                REF.x3_kp1[0] = REF.z3_kp1[0] + OP19_kp1;
                REF.x3_kp1[1] = REF.z3_kp1[1] + OP20_kp1;
                REF.x3_kp1[3] = REF.z3_kp1[0] - OP19_kp1;
                REF.x3_kp1[4] = REF.z3_kp1[1] - OP20_kp1;
                //------------------------------
                switch(consys){
                    case SMC_CSa:{
                        REF.x1_kp1[2] = REF.z1_kp1[4];
                        REF.x1_kp1[5] = REF.z1_kp1[5];
                        REF.x2_kp1[2] = REF.z2_kp1[4];
                        REF.x2_kp1[5] = REF.z2_kp1[5];
                        REF.x3_kp1[2] = REF.z3_kp1[4];
                        REF.x3_kp1[5] = REF.z3_kp1[5];
                        break;
                    }
                    default:{
                        REF.x1_kp1[2] = REF.z1_kp1[2] + REF.z1_kp1[4];
                        REF.x1_kp1[5] = REF.z1_kp1[2] + REF.z1_kp1[5];
                        REF.x2_kp1[2] = REF.z2_kp1[2] + REF.z2_kp1[4];
                        REF.x2_kp1[5] = REF.z2_kp1[2] + REF.z2_kp1[5];
                        REF.x3_kp1[2] = REF.z3_kp1[2] + REF.z3_kp1[4];
                        REF.x3_kp1[5] = REF.z3_kp1[2] + REF.z3_kp1[5];
                        break;
                    }
                }
                break;
            }
        }
        switch(consys){
            case ADRC_RS:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the robot space:
                REF.y_k[i] = roundToThreeDecimals(REF.x1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.x2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.x3_k[i]);
            }
            break;
            case SMC_CS:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the cluster space:
                REF.y_k[i] = roundToThreeDecimals(REF.z1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.z2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.z3_k[i]);
            }
            break;
            case SMC_CSa:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the cluster space:
                REF.y_k[i] = roundToThreeDecimals(REF.z1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.z2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.z3_k[i]);
            }
            break;
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Compute the static reference trajectory n: 01, for OMRs control system:
void computeStatical01(Reference REF, Control_System consys){
    int i;                                                                                  // Declaration of i as integer variable.
    // Executing builder algorithm for static trajectory:
    if(REF.flag[0]){
        // Updating algorithm:
        for(i = 0; i < 3*Robots_Qty; i++){
            REF.x1_k[i] = REF.x1_kp1[i];                                                    // Updating data for x1(k) within REF structure.
            REF.x2_k[i] = REF.x2_kp1[i];                                                    // Updating data for x2(k) within REF structure.
            REF.x3_k[i] = REF.x3_kp1[i];                                                    // Updating data for x3(k) within REF structure.
            REF.z1_k[i] = REF.z1_kp1[i];                                                    // Updating data for c1(k) within REF structure.
            REF.z2_k[i] = REF.z2_kp1[i];                                                    // Updating data for c2(k) within REF structure.
            REF.z3_k[i] = REF.z3_kp1[i];                                                    // Updating data for c3(k) within REF structure.
        }
        // Computing equations for generation of static reference profiles in the cluster space:
        switch(Robots_Qty){
            case 2:{
                float d_ph1_k = 0.0f;                                                       // [rad/s], desired angular velocity of robot 1.
                float d_ph2_k = 0.0f;                                                       // [rad/s], desired angular velocity of robot 2.
                //------------------------------Cluster Space--------------------------------
                REF.z2_kp1[0] = 0.0f;                                                       // Computing d(xc)/dt.
                REF.z2_kp1[1] = 0.0f;                                                       // Computing d(yc)/dt.
                REF.z2_kp1[2] = 0.0f;                                                       // Computing d(thc)/dt.
                REF.z2_kp1[3] = 0.0f;                                                       // Computing d(dc)/dt.
                REF.z2_kp1[4] = d_ph1_k;                                                    // Computing d(psi_1)/dt.
                REF.z2_kp1[5] = d_ph2_k;                                                    // Computing d(psi_2)/dt.
                Integration(REF.INT_1,REF.z2_kp1);                                          // Compute only first integration to c2(k + 1).
                for(i = 0; i < 3*Robots_Qty; i++){
                    REF.z1_kp1[i] = REF.INT_1.x2_kp1[i];                                    // Updating data for c1(k + 1) within REF structure.
                }
                //------------------------------
                REF.z3_kp1[0] = 0.0f;                                                       // Computing d^2(xc)/dt^2.
                REF.z3_kp1[1] = 0.0f;                                                       // Computing d^2(yc)/dt^2.
                REF.z3_kp1[2] = 0.0f;                                                       // Computing d^2(thc)/dt^2.
                REF.z3_kp1[3] = 0.0f;                                                       // Computing d^2(dc)/dt^2.
                REF.z3_kp1[4] = 0.0f;                                                       // Computing d^2(psi_1)/dt^2.
                REF.z3_kp1[5] = 0.0f;                                                       // Computing d^2(psi_2)/dt^2.
                //-------------------------------Robot Space---------------------------------
                float SC2_kp1 = sinf(REF.z1_kp1[2]);                                        // Pre-compute sin(thc).
                float CC2_kp1 = cosf(REF.z1_kp1[2]);                                        // Pre-compute cos(thc).
                float OP1_kp1 = REF.z1_kp1[3]*SC2_kp1;                                      // Pre-compute operation OP1(k).
                float OP2_kp1 = REF.z1_kp1[3]*CC2_kp1;                                      // Pre-compute operation OP2(k).
                //------------------------------
                REF.x1_kp1[0] = REF.z1_kp1[0] + OP1_kp1;
                REF.x1_kp1[1] = REF.z1_kp1[1] + OP2_kp1;
                REF.x1_kp1[3] = REF.z1_kp1[0] - OP1_kp1;
                REF.x1_kp1[4] = REF.z1_kp1[1] - OP2_kp1;
                //------------------------------
                REF.x2_kp1[0] = 0.0f;
                REF.x2_kp1[1] = 0.0f;
                REF.x2_kp1[3] = 0.0f;
                REF.x2_kp1[4] = 0.0f;
                //------------------------------
                REF.x3_kp1[0] = 0.0f;
                REF.x3_kp1[1] = 0.0f;
                REF.x3_kp1[2] = 0.0f;
                REF.x3_kp1[3] = 0.0f;
                REF.x3_kp1[4] = 0.0f;
                REF.x3_kp1[5] = 0.0f;
                //------------------------------
                switch(consys){
                    case SMC_CSa:{
                        REF.x1_kp1[2] = REF.z1_kp1[4];
                        REF.x1_kp1[5] = REF.z1_kp1[5];
                        REF.x2_kp1[2] = REF.z2_kp1[4];
                        REF.x2_kp1[5] = REF.z2_kp1[5];
                        break;
                    }
                    default:{
                        REF.x1_kp1[2] = REF.z1_kp1[2] + REF.z1_kp1[4];
                        REF.x1_kp1[5] = REF.z1_kp1[2] + REF.z1_kp1[5];
                        REF.x2_kp1[2] = REF.z2_kp1[2] + REF.z2_kp1[4];
                        REF.x2_kp1[5] = REF.z2_kp1[2] + REF.z2_kp1[5];
                        break;
                    }
                }
                break;
            }
        }
        switch(consys){
            case ADRC_RS:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the robot space:
                REF.y_k[i] = roundToThreeDecimals(REF.x1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.x2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.x3_k[i]);
            }
            break;
            case SMC_CS:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the cluster space:
                REF.y_k[i] = roundToThreeDecimals(REF.z1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.z2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.z3_k[i]);
            }
            break;
            case SMC_CSa:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the cluster space:
                REF.y_k[i] = roundToThreeDecimals(REF.z1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.z2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.z3_k[i]);
            }
            break;
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Compute the reference trajectory of independent circumferences (n: 01), for OMRs control system:
void computeIndepCircumferences01(Reference REF, Control_System consys, unsigned long iterations){
    int i;                                                                                  // Declaration of i as integer variable.
    // Executing builder algorithm for static trajectory:
    if(REF.flag[0]){
        // Updating algorithm:
        for(i = 0; i < 3*Robots_Qty; i++){
            REF.x1_k[i] = REF.x1_kp1[i];                                                    // Updating data for x1(k) within REF structure.
            REF.x2_k[i] = REF.x2_kp1[i];                                                    // Updating data for x2(k) within REF structure.
            REF.x3_k[i] = REF.x3_kp1[i];                                                    // Updating data for x3(k) within REF structure.
            REF.z1_k[i] = REF.z1_kp1[i];                                                    // Updating data for c1(k) within REF structure.
            REF.z2_k[i] = REF.z2_kp1[i];                                                    // Updating data for c2(k) within REF structure.
            REF.z3_k[i] = REF.z3_kp1[i];                                                    // Updating data for c3(k) within REF structure.
        }
        // Computing equations for generation of static reference profiles in the cluster space:
        switch(Robots_Qty){
            case 2:{
                float d_ph1_k = 0.0f;                                                       // [rad/s], Desired angular velocity of robot 1.
                float d_ph2_k = 0.0f;                                                       // [rad/s], Desired angular velocity of robot 2.
                float RXc = 280.0f;                                                         // [mm], Dimension of larger radius of traced ellipsoid along X axis.
                float RYc = 800.0f;                                                         // [mm], Dimension of larger radius of traced ellipsoid along Y axis.
                float Wc = M_PI/12.0f;                                                      // [rad/s], Angular velocity for tracing the independent ellipsoids.
                float WTc = (float)(iterations)*REF.Ts*Wc;                                  // Rate variation of sinusoidal functions.
                float Wc_Wc = Wc*Wc;                                                        // Pre-computing Wc^2.
                //------------------------------Cluster Space--------------------------------
                REF.z2_kp1[0] = 0.0f;                                                       // Computing d(xc)/dt.
                REF.z2_kp1[1] = RYc*Wc*cosf(WTc);                                           // Computing d(yc)/dt.
                REF.z2_kp1[2] = 0.0f;                                                       // Computing d(thc)/dt.
                REF.z2_kp1[3] = RXc*Wc*sinf(WTc);                                           // Computing d(dc)/dt.
                REF.z2_kp1[4] = d_ph1_k;                                                    // Computing d(psi_1)/dt.
                REF.z2_kp1[5] = d_ph2_k;                                                    // Computing d(psi_2)/dt.
                Integration(REF.INT_1,REF.z2_kp1);                                          // Compute only first integration to c2(k + 1).
                for(i = 0; i < 3*Robots_Qty; i++){
                    REF.z1_kp1[i] = REF.INT_1.x2_kp1[i];                                    // Updating data for c1(k + 1) within REF structure.
                }
                //------------------------------
                REF.z3_kp1[0] = 0.0f;                                                       // Computing d^2(xc)/dt^2.
                REF.z3_kp1[1] = -RYc*Wc_Wc*sinf(WTc);                                       // Computing d^2(yc)/dt^2.
                REF.z3_kp1[2] = 0.0f;                                                       // Computing d^2(thc)/dt^2.
                REF.z3_kp1[3] = RXc*Wc_Wc*cosf(WTc);                                        // Computing d^2(dc)/dt^2.
                REF.z3_kp1[4] = 0.0f;                                                       // Computing d^2(psi_1)/dt^2.
                REF.z3_kp1[5] = 0.0f;                                                       // Computing d^2(psi_2)/dt^2.
                //-------------------------------Robot Space---------------------------------
                float SC2_kp1 = sinf(REF.z1_kp1[2]);                                        // Pre-compute sin(thc).
                float CC2_kp1 = cosf(REF.z1_kp1[2]);                                        // Pre-compute cos(thc).
                float OP1_kp1 = REF.z1_kp1[3]*SC2_kp1;                                      // Pre-compute operation OP1(k).
                float OP2_kp1 = REF.z1_kp1[3]*CC2_kp1;                                      // Pre-compute operation OP2(k).
                float OP3_kp1 = REF.z2_kp1[3]*SC2_kp1;                                      // Pre-compute operation OP3(k).
                float OP4_kp1 = REF.z2_kp1[3]*CC2_kp1;                                      // Pre-compute operation OP4(k).
                float OP5_kp1 = REF.z3_kp1[2]*SC2_kp1;                                      // Pre-compute operation OP5(k).
                float OP6_kp1 = REF.z3_kp1[2]*CC2_kp1;                                      // Pre-compute operation OP6(k).
                float OP7_kp1 = REF.z3_kp1[3]*SC2_kp1;                                      // Pre-compute operation OP7(k).
                float OP8_kp1 = REF.z3_kp1[3]*CC2_kp1;                                      // Pre-compute operation OP8(k).
                float OP9_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*SC2_kp1;                        // Pre-compute operation OP9(k).
                float OP10_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*CC2_kp1;                       // Pre-compute operation OP10(k).
                float OP11_kp1 = OP1_kp1*REF.z2_kp1[2];                                     // Pre-compute operation OP11(k).
                float OP12_kp1 = OP2_kp1*REF.z2_kp1[2];                                     // Pre-compute operation OP12(k).
                float OP13_kp1 = OP3_kp1*REF.z2_kp1[2];                                     // Pre-compute operation OP13(k).
                float OP14_kp1 = OP4_kp1*REF.z2_kp1[2];                                     // Pre-compute operation OP14(k).
                float OP15_kp1 = REF.z1_kp1[3]*(OP9_kp1 - OP6_kp1);                         // Pre-compute operation OP15(k).
                float OP16_kp1 = REF.z1_kp1[3]*(OP10_kp1 + OP5_kp1);                        // Pre-compute operation OP16(k).
                float OP17_kp1 = OP3_kp1 + OP12_kp1;                                        // Pre-compute operation OP17(k).
                float OP18_kp1 = OP4_kp1 - OP11_kp1;                                        // Pre-compute operation OP18(k).
                float OP19_kp1 = OP7_kp1 + 2.0f*OP14_kp1 - OP15_kp1;                        // Pre-compute operation OP19(k).
                float OP20_kp1 = OP8_kp1 - 2.0f*OP13_kp1 - OP16_kp1;                        // Pre-compute operation OP20(k).
                //------------------------------
                REF.x1_kp1[0] = REF.z1_kp1[0] + OP1_kp1;
                REF.x1_kp1[1] = REF.z1_kp1[1] + OP2_kp1;
                REF.x1_kp1[3] = REF.z1_kp1[0] - OP1_kp1;
                REF.x1_kp1[4] = REF.z1_kp1[1] - OP2_kp1;
                //------------------------------
                REF.x2_kp1[0] = REF.z2_kp1[0] + OP17_kp1;
                REF.x2_kp1[1] = REF.z2_kp1[1] + OP18_kp1;
                REF.x2_kp1[3] = REF.z2_kp1[0] - OP17_kp1;
                REF.x2_kp1[4] = REF.z2_kp1[1] - OP18_kp1;
                //------------------------------
                REF.x3_kp1[0] = REF.z3_kp1[0] + OP19_kp1;
                REF.x3_kp1[1] = REF.z3_kp1[1] + OP20_kp1;
                REF.x3_kp1[3] = REF.z3_kp1[0] - OP19_kp1;
                REF.x3_kp1[4] = REF.z3_kp1[1] - OP20_kp1;
                //------------------------------
                switch(consys){
                    case SMC_CSa:{
                        REF.x1_kp1[2] = REF.z1_kp1[4];
                        REF.x1_kp1[5] = REF.z1_kp1[5];
                        REF.x2_kp1[2] = REF.z2_kp1[4];
                        REF.x2_kp1[5] = REF.z2_kp1[5];
                        REF.x3_kp1[2] = REF.z3_kp1[4];
                        REF.x3_kp1[5] = REF.z3_kp1[5];
                        break;
                    }
                    default:{
                        REF.x1_kp1[2] = REF.z1_kp1[2] + REF.z1_kp1[4];
                        REF.x1_kp1[5] = REF.z1_kp1[2] + REF.z1_kp1[5];
                        REF.x2_kp1[2] = REF.z2_kp1[2] + REF.z2_kp1[4];
                        REF.x2_kp1[5] = REF.z2_kp1[2] + REF.z2_kp1[5];
                        REF.x3_kp1[2] = REF.z3_kp1[2] + REF.z3_kp1[4];
                        REF.x3_kp1[5] = REF.z3_kp1[2] + REF.z3_kp1[5];
                        break;
                    }
                }
                break;
            }
        }
        switch(consys){
            case ADRC_RS:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the robot space:
                REF.y_k[i] = roundToThreeDecimals(REF.x1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.x2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.x3_k[i]);
            }
            break;
            case SMC_CS:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the cluster space:
                REF.y_k[i] = roundToThreeDecimals(REF.z1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.z2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.z3_k[i]);
            }
            break;
            case SMC_CSa:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the cluster space:
                REF.y_k[i] = roundToThreeDecimals(REF.z1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.z2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.z3_k[i]);
            }
            break;
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Compute the reference trajectory of independent circumferences (n: 02), for OMRs control system:
void computeIndepCircumferences02(Reference REF, Control_System consys, unsigned long iterations){
    int i;                                                                                  // Declaration of i as integer variable.
    // Executing builder algorithm for static trajectory:
    if(REF.flag[0]){
        // Updating algorithm:
        for(i = 0; i < 3*Robots_Qty; i++){
            REF.x1_k[i] = REF.x1_kp1[i];                                                    // Updating data for x1(k) within REF structure.
            REF.x2_k[i] = REF.x2_kp1[i];                                                    // Updating data for x2(k) within REF structure.
            REF.x3_k[i] = REF.x3_kp1[i];                                                    // Updating data for x3(k) within REF structure.
            REF.z1_k[i] = REF.z1_kp1[i];                                                    // Updating data for c1(k) within REF structure.
            REF.z2_k[i] = REF.z2_kp1[i];                                                    // Updating data for c2(k) within REF structure.
            REF.z3_k[i] = REF.z3_kp1[i];                                                    // Updating data for c3(k) within REF structure.
        }
        // Computing equations for generation of static reference profiles in the cluster space:
        switch(Robots_Qty){
            case 2:{
                float d_ph1_k = 0.0f;                                                       // [rad/s], Desired angular velocity of robot 1.
                float d_ph2_k = 0.0f;                                                       // [rad/s], Desired angular velocity of robot 2.
                float dc_0 = 180.0f;                                                        // [mm], initial distance between both OMRs.
                float RXc = 400.0f;                                                         // [mm], Dimension of larger radius of traced ellipsoid along X axis.
                float RYc = 800.0f;                                                         // [mm], Dimension of larger radius of traced ellipsoid along Y axis.
                float Wc = M_PI/10.0f;                                                      // [rad/s], Angular velocity for tracing the independent ellipsoids.
                float WTc = (float)(iterations)*REF.Ts*Wc;                                  // Rate variation of sinusoidal functions.
                float Wc_Wc = Wc*Wc;                                                        // Pre-computing Wc^2.
                //------------------------------Cluster Space--------------------------------
                float OP1_kp1 = sinf(WTc);                                                  // Pre-compute operation OP1(k).
                float OP2_kp1 = cosf(WTc);                                                  // Pre-compute operation OP2(k).
                float OP3_kp1 = RYc*OP1_kp1;                                                // Pre-compute operation OP3(k).
                float OP4_kp1 = RXc*OP2_kp1;                                                // Pre-compute operation OP4(k).
                float OP5_kp1 = RXc*OP1_kp1;                                                // Pre-compute operation OP5(k).
                float OP6_kp1 = RYc*OP2_kp1;                                                // Pre-compute operation OP6(k).
                float OP7_kp1 = RXc - OP4_kp1;                                              // Pre-compute operation OP7(k).
                float OP8_kp1 = dc_0 + OP7_kp1;                                             // Pre-compute operation OP8(k).
                float OP9_kp1 = OP3_kp1*OP3_kp1;                                            // Pre-compute operation OP9(k).
                float OP10_kp1 = OP5_kp1*OP5_kp1;                                           // Pre-compute operation OP10(k).
                float OP11_kp1 = OP6_kp1*OP6_kp1;                                           // Pre-compute operation OP11(k).
                float OP12_kp1 = OP8_kp1*OP8_kp1;                                           // Pre-compute operation OP12(k).
                float OP13_kp1 = Wc*RXc;                                                    // Pre-compute operation OP13(k).
                float OP14_kp1 = Wc*RYc;                                                    // Pre-compute operation OP14(k).
                float OP15_kp1 = OP9_kp1 + OP12_kp1;                                        // Pre-compute operation OP15(k).
                float OP16_kp1 = OP9_kp1 - OP12_kp1;                                        // Pre-compute operation OP16(k).
                float OP17_kp1 = 1.0f/OP15_kp1;                                             // Pre-compute operation OP17(k).
                float OP18_kp1 = OP17_kp1*OP17_kp1;                                         // Pre-compute operation OP18(k).
                float OP19_kp1 = Wc_Wc*OP3_kp1;                                             // Pre-compute operation OP19(k).
                float OP20_kp1 = 2.0f*OP19_kp1;                                             // Pre-compute operation OP20(k).
                float OP21_kp1 = OP20_kp1*OP18_kp1;                                         // Pre-compute operation OP21(k).
                float OP22_kp1 = 1.0f/sqrtf(OP15_kp1);                                      // Pre-compute operation OP22(k).
                float OP23_kp1 = OP1_kp1*OP8_kp1*OP13_kp1;                                  // Pre-compute operation OP23(k).
                float OP24_kp1 = OP2_kp1*OP3_kp1*OP14_kp1;                                  // Pre-compute operation OP24(k).
                float OP25_kp1 = OP23_kp1 + OP24_kp1;                                       // Pre-compute operation OP25(k).
                //------------------------------
                REF.z2_kp1[0] = 0.0f;                                                       // Computing d(xc)/dt.
                REF.z2_kp1[1] = 0.0f;                                                       // Computing d(yc)/dt.
                REF.z2_kp1[2] = OP14_kp1*(OP7_kp1 - dc_0*OP2_kp1)*OP17_kp1;                 // Computing d(thc)/dt.
                REF.z2_kp1[3] = OP25_kp1*OP22_kp1;                                          // Computing d(dc)/dt.
                REF.z2_kp1[4] = d_ph1_k - REF.z2_kp1[2];                                    // Computing d(psi_1)/dt.
                REF.z2_kp1[5] = d_ph2_k - REF.z2_kp1[2];                                    // Computing d(psi_2)/dt.
                Integration(REF.INT_1,REF.z2_kp1);                                          // Compute only first integration to c2(k + 1).
                for(i = 0; i < 3*Robots_Qty; i++){
                    REF.z1_kp1[i] = REF.INT_1.x2_kp1[i];                                    // Updating data for c1(k + 1) within REF structure.
                }
                //------------------------------
                REF.z3_kp1[0] = 0.0f;                                                       // Computing d^2(xc)/dt^2.
                REF.z3_kp1[1] = 0.0f;                                                       // Computing d^2(yc)/dt^2.
                // Computing d^2(thc)/dt^2:
                REF.z3_kp1[2] = OP19_kp1*(OP4_kp1 + OP8_kp1)*OP17_kp1 + OP4_kp1*OP16_kp1*OP21_kp1 + OP8_kp1*(OP11_kp1 - OP10_kp1)*OP21_kp1;
                // Computing d^2(dc)/dt^2:
                REF.z3_kp1[3] = Wc_Wc*(OP10_kp1 + OP11_kp1)*OP22_kp1 + Wc_Wc*(OP8_kp1*OP4_kp1 - OP9_kp1)*OP22_kp1 + OP25_kp1*OP25_kp1*OP22_kp1*OP17_kp1;
                REF.z3_kp1[4] = -REF.z3_kp1[2];                                             // Computing d^2(psi_1)/dt^2.
                REF.z3_kp1[5] = -REF.z3_kp1[2];                                             // Computing d^2(psi_2)/dt^2.
                //-------------------------------Robot Space---------------------------------
                float SC2_kp1 = sinf(REF.z1_kp1[2]);                                        // Pre-compute sin(thc).
                float CC2_kp1 = cosf(REF.z1_kp1[2]);                                        // Pre-compute cos(thc).
                OP1_kp1 = REF.z1_kp1[3]*SC2_kp1;                                            // Pre-compute operation OP1(k).
                OP2_kp1 = REF.z1_kp1[3]*CC2_kp1;                                            // Pre-compute operation OP2(k).
                OP3_kp1 = REF.z2_kp1[3]*SC2_kp1;                                            // Pre-compute operation OP3(k).
                OP4_kp1 = REF.z2_kp1[3]*CC2_kp1;                                            // Pre-compute operation OP4(k).
                OP5_kp1 = REF.z3_kp1[2]*SC2_kp1;                                            // Pre-compute operation OP5(k).
                OP6_kp1 = REF.z3_kp1[2]*CC2_kp1;                                            // Pre-compute operation OP6(k).
                OP7_kp1 = REF.z3_kp1[3]*SC2_kp1;                                            // Pre-compute operation OP7(k).
                OP8_kp1 = REF.z3_kp1[3]*CC2_kp1;                                            // Pre-compute operation OP8(k).
                OP9_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*SC2_kp1;                              // Pre-compute operation OP9(k).
                OP10_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*CC2_kp1;                             // Pre-compute operation OP10(k).
                OP11_kp1 = OP1_kp1*REF.z2_kp1[2];                                           // Pre-compute operation OP11(k).
                OP12_kp1 = OP2_kp1*REF.z2_kp1[2];                                           // Pre-compute operation OP12(k).
                OP13_kp1 = OP3_kp1*REF.z2_kp1[2];                                           // Pre-compute operation OP13(k).
                OP14_kp1 = OP4_kp1*REF.z2_kp1[2];                                           // Pre-compute operation OP14(k).
                OP15_kp1 = REF.z1_kp1[3]*(OP9_kp1 - OP6_kp1);                               // Pre-compute operation OP15(k).
                OP16_kp1 = REF.z1_kp1[3]*(OP10_kp1 + OP5_kp1);                              // Pre-compute operation OP16(k).
                OP17_kp1 = OP3_kp1 + OP12_kp1;                                              // Pre-compute operation OP17(k).
                OP18_kp1 = OP4_kp1 - OP11_kp1;                                              // Pre-compute operation OP18(k).
                OP19_kp1 = OP7_kp1 + 2.0f*OP14_kp1 - OP15_kp1;                              // Pre-compute operation OP19(k).
                OP20_kp1 = OP8_kp1 - 2.0f*OP13_kp1 - OP16_kp1;                              // Pre-compute operation OP20(k).
                //------------------------------
                REF.x1_kp1[0] = REF.z1_kp1[0] + OP1_kp1;
                REF.x1_kp1[1] = REF.z1_kp1[1] + OP2_kp1;
                REF.x1_kp1[3] = REF.z1_kp1[0] - OP1_kp1;
                REF.x1_kp1[4] = REF.z1_kp1[1] - OP2_kp1;
                //------------------------------
                REF.x2_kp1[0] = REF.z2_kp1[0] + OP17_kp1;
                REF.x2_kp1[1] = REF.z2_kp1[1] + OP18_kp1;
                REF.x2_kp1[3] = REF.z2_kp1[0] - OP17_kp1;
                REF.x2_kp1[4] = REF.z2_kp1[1] - OP18_kp1;
                //------------------------------
                REF.x3_kp1[0] = REF.z3_kp1[0] + OP19_kp1;
                REF.x3_kp1[1] = REF.z3_kp1[1] + OP20_kp1;
                REF.x3_kp1[3] = REF.z3_kp1[0] - OP19_kp1;
                REF.x3_kp1[4] = REF.z3_kp1[1] - OP20_kp1;
                //------------------------------
                switch(consys){
                    case SMC_CSa:{
                        REF.x1_kp1[2] = REF.z1_kp1[4];
                        REF.x1_kp1[5] = REF.z1_kp1[5];
                        REF.x2_kp1[2] = REF.z2_kp1[4];
                        REF.x2_kp1[5] = REF.z2_kp1[5];
                        REF.x3_kp1[2] = REF.z3_kp1[4];
                        REF.x3_kp1[5] = REF.z3_kp1[5];
                        break;
                    }
                    default:{
                        REF.x1_kp1[2] = REF.z1_kp1[2] + REF.z1_kp1[4];
                        REF.x1_kp1[5] = REF.z1_kp1[2] + REF.z1_kp1[5];
                        REF.x2_kp1[2] = REF.z2_kp1[2] + REF.z2_kp1[4];
                        REF.x2_kp1[5] = REF.z2_kp1[2] + REF.z2_kp1[5];
                        REF.x3_kp1[2] = REF.z3_kp1[2] + REF.z3_kp1[4];
                        REF.x3_kp1[5] = REF.z3_kp1[2] + REF.z3_kp1[5];
                        break;
                    }
                }
                break;
            }
        }
        switch(consys){
            case ADRC_RS:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the robot space:
                REF.y_k[i] = roundToThreeDecimals(REF.x1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.x2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.x3_k[i]);
            }
            break;
            case SMC_CS:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the cluster space:
                REF.y_k[i] = roundToThreeDecimals(REF.z1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.z2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.z3_k[i]);
            }
            break;
            case SMC_CSa:
            for(i = 0; i < 3*Robots_Qty; i++){
                // Arranging output of REF structure in the cluster space:
                REF.y_k[i] = roundToThreeDecimals(REF.z1_k[i]);
                REF.y_k[i+3*Robots_Qty] = roundToThreeDecimals(REF.z2_k[i]);
                REF.y_k[i+6*Robots_Qty] = roundToThreeDecimals(REF.z3_k[i]);
            }
            break;
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
