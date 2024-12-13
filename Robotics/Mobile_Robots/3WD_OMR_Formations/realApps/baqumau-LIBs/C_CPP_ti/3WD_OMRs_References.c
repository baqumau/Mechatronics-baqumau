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
// Configuring the corresponding reference trajectory for OMRs control system:
Reference createReference(float sampleTime, enum Reference_Type reftype){
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
    REF.INT_1 = createIntegrator(3*Robots_Qty,sampleTime,1.0f);                             // Create first integrator structure within reference builder REF structure.
    REF.INT_2 = createIntegrator(3*Robots_Qty,sampleTime,1.0f);                             // Create second integrator structure within reference builder REF structure.
    switch(reftype){
        case MINGYUE_01:{
            REF.COR = createAngleConverter(Robots_Qty);                                     // Create a conversion angle structure.
            REF.DIF_1 = createDifferentiator(Robots_Qty,sampleTime,1.0f,100.0f);            // Create first differentiator structure within reference builder REF structure.
            REF.DIF_2 = createDifferentiator(Robots_Qty,sampleTime,1.0f,100.0f);            // Create second differentiator structure within reference builder REF structure.
            break;
        }
    }
    REF.flag[0] = false;                                                                    // Setting REF flag to false.
    return REF;
}
//---------------------------------------------------------------------------------------------------------------
// Initialize the circumference-shape reference trajectory for OMRs control system:
void initReference(Reference REF, enum Control_System consys, enum Reference_Type reftype, float z_0[]){
    int i;                                                                                  // Declaration of i as integer variable.
    float Ci1_0[6*Robots_Qty], Ci2_0[6*Robots_Qty];                                         // Vectors to place the initial conditions of associated integrators INT_1 and INT_2 within REF structure.
    for(i = 0; i < 3*Robots_Qty; i++){
        // Initial conditions Z_0 of desired cluster reference trajectories:
        REF.Z_0[i] = z_0[i];                                                                // Saving cluster initial conditions data for c(0) within REF structure.
        REF.Z_0[i+3*Robots_Qty] = z_0[i+3*Robots_Qty];                                      // Saving cluster initial conditions data for c(0) within REF structure.
        REF.Z_0[i+6*Robots_Qty] = z_0[i+6*Robots_Qty];                                      // Saving cluster initial conditions data for c(0) within REF structure.
        // Initial conditions for cluster space variables:
        REF.z1_k[i] = z_0[i];                                                               // Saving initial cluster's pose c1(k = 0) for OMRs formation.
        REF.z1_kp1[i] = REF.Ts*z_0[i+3*Robots_Qty] + z_0[i];                                // Saving cluster's pose prediction c1(k + 1) within REF structure.
        REF.z2_k[i] = z_0[i+3*Robots_Qty];                                                  // Saving initial cluster's velocity c2(k = 0) for OMRs formation.
        REF.z2_kp1[i] = REF.Ts*z_0[i+6*Robots_Qty] + z_0[i+3*Robots_Qty];                   // Saving cluster's velocity prediction c2(k + 1) within REF structure.
        REF.z3_k[i] = z_0[i+6*Robots_Qty];                                                  // Saving initial cluster's acceleration c3(k = 0) for OMRs formation.
        REF.z3_kp1[i] = (1.0/REF.Ts)*(REF.z2_kp1[i] - REF.z2_k[i]);                         // Differentiation operator to obtain prediction c3(k + 1).
        // Adding initial conditions to associated INT_1 and INT_2 integration structures, within REF structure:
        Ci1_0[i] = REF.z2_k[i];
        Ci1_0[i+3*Robots_Qty] = REF.z1_k[i];
        Ci2_0[i] = REF.z3_k[i];
        Ci2_0[i+3*Robots_Qty] = REF.z2_k[i];
    }
    // Initial conditions X_0 of desired robot pose trajectories:
    switch(Robots_Qty){
        case 2:{
            float SC2_0 = sinf(REF.Z_0[2]);
            float CC2_0 = cosf(REF.Z_0[2]);
            float OP1_0 = REF.Z_0[3]*SC2_0;
            float OP2_0 = REF.Z_0[3]*CC2_0;
            float OP3_0 = REF.Z_0[9]*SC2_0;
            float OP4_0 = REF.Z_0[9]*CC2_0;
            float OP5_0 = REF.Z_0[15]*SC2_0;
            float OP6_0 = REF.Z_0[15]*CC2_0;
            float OP7_0 = OP2_0*REF.Z_0[8];
            float OP8_0 = OP1_0*REF.Z_0[8];
            float OP9_0 = 2.0f*OP4_0*REF.Z_0[8];
            float OP10_0 = 2.0f*OP3_0*REF.Z_0[8];
            float OP11_0 = REF.Z_0[8]*REF.Z_0[8];
            float OP12_0 = (SC2_0*OP11_0 - CC2_0*REF.Z_0[14]);
            float OP13_0 = (CC2_0*OP11_0 + SC2_0*REF.Z_0[14]);
            float OP14_0 = REF.Z_0[3]*OP12_0;
            float OP15_0 = REF.Z_0[3]*OP13_0;
            float OP16_0 = OP3_0 + OP7_0;
            float OP17_0 = OP4_0 - OP8_0;
            float OP18_0 = OP5_0 + OP9_0 - OP14_0;
            float OP19_0 = OP6_0 - OP10_0 - OP15_0;
            //------------------------------
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
    // Initial conditions for robot space variables:
    for(i = 0; i < 3*Robots_Qty; i++){
        REF.x1_k[i] = REF.X_0[i];                                                           // Saving initial robots' pose x1(k = 0) for OMRs formation.
        REF.x1_kp1[i] = REF.Ts*REF.X_0[i+3*Robots_Qty] + REF.X_0[i];                        // Saving robots' pose prediction x1(k + 1) within REF structure.
        REF.x2_k[i] = REF.X_0[i+3*Robots_Qty];                                              // Saving initial robots' velocity x2(k = 0) for OMRs formation.
        REF.x2_kp1[i] = REF.Ts*REF.X_0[i+6*Robots_Qty] + REF.X_0[i+3*Robots_Qty];           // Saving robots' velocity prediction x2(k + 1) within REF structure.
        REF.x3_k[i] = REF.X_0[i+6*Robots_Qty];                                              // Saving initial robots' acceleration x3(k = 0) for OMRs formation.
        REF.x3_kp1[i] = (1.0f/REF.Ts)*(REF.x2_kp1[i] - REF.x2_k[i]);                        // Differentiation operator to obtain prediction x3(k + 1).
    }
    // Initiating REF.INT_1 and REF.INT_2 integration structures:
    initIntegrator(REF.INT_1,Ci1_0);                                                        // Initialize first common integrator of REF references builder.
    initIntegrator(REF.INT_2,Ci2_0);                                                        // Initialize second common integrator of REF references builder.
    switch(reftype){
        case MINGYUE_01:{
            float Xco_0[Robots_Qty], Xd1_0[2*Robots_Qty], Xd2_0[2*Robots_Qty];              // Vectors to place the initial conditions of associated converter COR and differentiator DIF_1 and DIF_2 within REF reference structure.
            for(i = 0; i < Robots_Qty; i++){
                Xco_0[i] = REF.X_0[2+3*i];                                                  // Initial condition for angle conversion function.
                // Adding initial conditions to associated differentiators DIF_1 and DIF_2 within REF structure:
                Xd1_0[i] = REF.x1_k[2+3*i];
                Xd1_0[i+Robots_Qty] = REF.x2_k[2+3*i];
                Xd2_0[i] = REF.x2_k[2+3*i];
                Xd2_0[i+Robots_Qty] = REF.x3_k[2+3*i];
            }                                    
            initAngleConverter(REF.COR,Xco_0);                                              // Initialize angle conversion function to obtained angles after atan2(.) function.
            initDifferentiator(REF.DIF_1,Xd1_0);                                            // Initialize first differentiator struct within reference builder REF structure.
            initDifferentiator(REF.DIF_2,Xd2_0);                                            // Initialize second differentiator struct within reference builder REF structure.
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
    }
    REF.flag[0] = true;                                                                     // Flag settled to true, which enables the reference builder within REF structure.
}
//---------------------------------------------------------------------------------------------------------------
// Compute the instantaneous circumference-shape reference trajectory n: 01, for OMRs control system:
void computeCircumference01(Reference REF, enum Control_System consys, int iterations){
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
            REF.z1_kp1[i] = REF.INT_1.x2_kp1[i];                                            // Updating data for c1(k + 1) within REF structure.
            REF.z2_kp1[i] = REF.INT_2.x2_kp1[i];                                            // Updating data for c2(k + 1) within REF structure.
        }
        // Computing equations for circumference profiles generation in the cluster space:
        float Vc = 40.0f;                                                                   // [mm/s], linear velocity of cluster centroid.
        float Rc = 1200.0f;                                                                 // [mm], desired radius of planned trajectory.
        float Ac = Vc*Vc/Rc;                                                                // Precompute angular acceleration Vc^2/Rc.
        switch(Robots_Qty){
            case 2:{
                REF.z3_kp1[0] = Ac*sinf(Vc*(float)(iterations)*REF.Ts/Rc + REF.Z_0[2]);     // Computing d^2(xc)/dt^2.
                REF.z3_kp1[1] = Ac*cosf(Vc*(float)(iterations)*REF.Ts/Rc + REF.Z_0[2]);     // Computing d^2(yc)/dt^2.
                REF.z3_kp1[2] = 0.0f;                                                       // Computing d^2(thc)/dt^2.
                REF.z3_kp1[3] = 0.0f;                                                       // Computing d^2(dc)/dt^2.
                REF.z3_kp1[4] = 0.0f;                                                       // Computing d^2(psi_1)/dt^2.
                REF.z3_kp1[5] = 0.0f;                                                       // Computing d^2(psi_2)/dt^2.
                Integration(REF.INT_2,REF.z3_kp1);                                          // Compute second integration to c3(k + 1).
                Integration(REF.INT_1,REF.INT_2.y_k);                                       // Compute first integration to second integration output.
                // Computing equations for circumference profiles generation in the robot space:
                float SC2_kp1 = sinf(REF.z1_kp1[2]);
                float CC2_kp1 = cosf(REF.z1_kp1[2]);
                float OP1_kp1 = REF.z1_kp1[3]*SC2_kp1;
                float OP2_kp1 = REF.z1_kp1[3]*CC2_kp1;
                float OP3_kp1 = REF.z2_kp1[3]*SC2_kp1;
                float OP4_kp1 = REF.z2_kp1[3]*CC2_kp1;
                float OP5_kp1 = REF.z3_kp1[2]*SC2_kp1;
                float OP6_kp1 = REF.z3_kp1[2]*CC2_kp1;
                float OP7_kp1 = REF.z3_kp1[3]*SC2_kp1;
                float OP8_kp1 = REF.z3_kp1[3]*CC2_kp1;
                float OP9_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*SC2_kp1;
                float OP10_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*CC2_kp1;
                float OP11_kp1 = OP1_kp1*REF.z2_kp1[2];
                float OP12_kp1 = OP2_kp1*REF.z2_kp1[2];
                float OP13_kp1 = OP3_kp1*REF.z2_kp1[2];
                float OP14_kp1 = OP4_kp1*REF.z2_kp1[2];
                float OP15_kp1 = REF.z1_kp1[3]*(OP9_kp1 - OP6_kp1);
                float OP16_kp1 = REF.z1_kp1[3]*(OP10_kp1 + OP5_kp1);
                float OP17_kp1 = OP3_kp1 + OP12_kp1;
                float OP18_kp1 = OP4_kp1 - OP11_kp1;
                float OP19_kp1 = OP7_kp1 + 2.0f*OP14_kp1 - OP15_kp1;
                float OP20_kp1 = OP8_kp1 - 2.0f*OP13_kp1 - OP16_kp1;
                //------------------------------
                REF.x1_kp1[0] = REF.z1_kp1[0] + OP1_kp1;
                REF.x1_kp1[1] = REF.z1_kp1[1] + OP2_kp1;
                REF.x1_kp1[2] = REF.z1_kp1[2] + REF.z1_kp1[4];
                REF.x1_kp1[3] = REF.z1_kp1[0] - OP1_kp1;
                REF.x1_kp1[4] = REF.z1_kp1[1] - OP2_kp1;
                REF.x1_kp1[5] = REF.z1_kp1[2] + REF.z1_kp1[5];
                //------------------------------
                REF.x2_kp1[0] = REF.z2_kp1[0] + OP17_kp1;
                REF.x2_kp1[1] = REF.z2_kp1[1] + OP18_kp1;
                REF.x2_kp1[2] = REF.z2_kp1[2] + REF.z2_kp1[4];
                REF.x2_kp1[3] = REF.z2_kp1[0] - OP17_kp1;
                REF.x2_kp1[4] = REF.z2_kp1[1] - OP18_kp1;
                REF.x2_kp1[5] = REF.z2_kp1[2] + REF.z2_kp1[5];
                //------------------------------
                REF.x3_kp1[0] = REF.z3_kp1[0] + OP19_kp1;
                REF.x3_kp1[1] = REF.z3_kp1[1] + OP20_kp1;
                REF.x3_kp1[2] = REF.z3_kp1[2] + REF.z3_kp1[4];
                REF.x3_kp1[3] = REF.z3_kp1[0] - OP19_kp1;
                REF.x3_kp1[4] = REF.z3_kp1[1] - OP20_kp1;
                REF.x3_kp1[5] = REF.z3_kp1[2] + REF.z3_kp1[5];
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
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Compute the instantaneous mingyue's infinity-shape reference trajectory n: 01, for OMRs control system:
void computeInfinity01(Reference REF, enum Control_System consys, int iterations){
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
            REF.z1_kp1[i] = REF.INT_1.x2_kp1[i];                                            // Updating data for c1(k + 1) within REF structure.
            REF.z2_kp1[i] = REF.INT_2.x2_kp1[i];                                            // Updating data for c2(k + 1) within REF structure.
        }
        // Computing equations for infinity reference profiles generation in the cluster space:
        float Sc = 1200.0f;                                                                 // [mm], scope of infinity-shape trajectory on workspace.
        float Kc = 25.0f;                                                                   // Velocity desired gain of planned trajectory.
        float Wc1 = Sc/(Kc*Kc);                                                             // Precompute operation Sc/(Kc^2).
        float Wc2 = Wc1/Kc;                                                                 // Precompute operation Sc/(Kc^3).
        float ddd_xc_k = -Wc2*cosf((float)(iterations)*REF.Ts/Kc);                          // Computing d^3(xc)/dt^3.
        float ddd_yc_k = -8.0f*Wc2*cosf(2.0f*(float)(iterations)*REF.Ts/Kc);                // Computing d^3(yc)/dt^3.
        switch(Robots_Qty){
            case 2:{
                //------------------------------Cluster Space--------------------------------
                REF.z3_kp1[0] = -Wc1*sinf((float)(iterations)*REF.Ts/Kc);                   // Computing d^2(xc)/dt^2.
                REF.z3_kp1[1] = -4.0f*Wc1*sinf(2.0f*(float)(iterations)*REF.Ts/Kc);         // Computing d^2(yc)/dt^2.
                // Computing d^2(thc)/dt^2:
                float OP1_kp1 = REF.z2_kp1[0]*REF.z2_kp1[0];                                // Precompute operation OP1(k).
                float OP2_kp1 = REF.z2_kp1[0]*REF.z2_kp1[1];                                // Precompute operation OP2(k).
                float OP3_kp1 = REF.z2_kp1[1]*REF.z2_kp1[1];                                // Precompute operation OP3(k).
                float OP4_kp1 = OP1_kp1 + OP3_kp1;                                          // Precompute operation OP4(k).
                float OP5_kp1 = OP1_kp1 - OP3_kp1;                                          // Precompute operation OP5(k).
                float OP6_kp1 = OP4_kp1*OP4_kp1;                                            // Precompute operation OP6(k).
                REF.z3_kp1[2] = -REF.z3_kp1[0]*(2.0f*REF.z3_kp1[0]*OP2_kp1 - REF.z3_kp1[1]*OP5_kp1)/OP6_kp1 + REF.z3_kp1[1]*(2.0f*REF.z3_kp1[1]*OP2_kp1 + REF.z3_kp1[0]*OP5_kp1)/OP6_kp1 + (ddd_xc_k*REF.z2_kp1[1] - ddd_yc_k*REF.z2_kp1[0])/OP4_kp1;
                //------------------------------
                REF.z3_kp1[3] = 0.0f;                                                       // Computing d^2(dc)/dt^2.
                //-------------------------------Robot Space---------------------------------
                float SC2_kp1 = sinf(REF.z1_kp1[2]);                                        // Precompute sin(thc).
                float CC2_kp1 = cosf(REF.z1_kp1[2]);                                        // Precompute cos(thc).
                OP1_kp1 = REF.z1_kp1[3]*SC2_kp1;                                            // Precompute operation OP1(k).
                OP2_kp1 = REF.z1_kp1[3]*CC2_kp1;                                            // Precompute operation OP2(k).
                OP3_kp1 = REF.z2_kp1[3]*SC2_kp1;                                            // Precompute operation OP3(k).
                OP4_kp1 = REF.z2_kp1[3]*CC2_kp1;                                            // Precompute operation OP4(k).
                OP5_kp1 = REF.z3_kp1[2]*SC2_kp1;                                            // Precompute operation OP5(k).
                OP6_kp1 = REF.z3_kp1[2]*CC2_kp1;                                            // Precompute operation OP6(k).
                float OP7_kp1 = REF.z3_kp1[3]*SC2_kp1;                                      // Precompute operation OP7(k).
                float OP8_kp1 = REF.z3_kp1[3]*CC2_kp1;                                      // Precompute operation OP8(k).
                float OP9_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*SC2_kp1;                        // Precompute operation OP9(k).
                float OP10_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*CC2_kp1;                       // Precompute operation OP10(k).
                float OP11_kp1 = OP1_kp1*REF.z2_kp1[2];                                     // Precompute operation OP11(k).
                float OP12_kp1 = OP2_kp1*REF.z2_kp1[2];                                     // Precompute operation OP12(k).
                float OP13_kp1 = OP3_kp1*REF.z2_kp1[2];                                     // Precompute operation OP13(k).
                float OP14_kp1 = OP4_kp1*REF.z2_kp1[2];                                     // Precompute operation OP14(k).
                float OP15_kp1 = REF.z1_kp1[3]*(OP9_kp1 - OP6_kp1);                         // Precompute operation OP15(k).
                float OP16_kp1 = REF.z1_kp1[3]*(OP10_kp1 + OP5_kp1);                        // Precompute operation OP16(k).
                float OP17_kp1 = OP3_kp1 + OP12_kp1;                                        // Precompute operation OP17(k).
                float OP18_kp1 = OP4_kp1 - OP11_kp1;                                        // Precompute operation OP18(k).
                float OP19_kp1 = OP7_kp1 + 2.0f*OP14_kp1 - OP15_kp1;                        // Precompute operation OP19(k).
                float OP20_kp1 = OP8_kp1 - 2.0f*OP13_kp1 - OP16_kp1;                        // Precompute operation OP20(k).
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
                REF.z3_kp1[4] = REF.x3_kp1[2] - REF.z3_kp1[2];                              // Computing d^2(psi_1)/dt^2.
                REF.z3_kp1[5] = REF.x3_kp1[5] - REF.z3_kp1[2];                              // Computing d^2(psi_2)/dt^2.
                Integration(REF.INT_2,REF.z3_kp1);                                          // Compute second integration to c3(k + 1).
                Integration(REF.INT_1,REF.INT_2.y_k);                                       // Compute first integration to second integration output.
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
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Compute the instantaneous mingyue's infinity-shape reference trajectory n: 02, for OMRs control system:
void computeInfinity02(Reference REF, enum Control_System consys, int iterations){
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
            REF.z1_kp1[i] = REF.INT_1.x2_kp1[i];                                            // Updating data for c1(k + 1) within REF structure.
            REF.z2_kp1[i] = REF.INT_2.x2_kp1[i];                                            // Updating data for c2(k + 1) within REF structure.
        }
        // Computing equations for infinity reference profiles generation in the cluster space:
        float Sc = 1200.0f;                                                                 // [mm], scope of infinity-shape trajectory on workspace.
        float Kc = 25.0f;                                                                   // Velocity desired gain of planned trajectory.
        float Wc1 = Sc/(Kc*Kc);                                                             // Precompute operation Sc/(Kc^2).
        float Wc2 = Wc1/Kc;                                                                 // Precompute operation Sc/(Kc^3).
        float ddd_xc_k = -Wc2*cosf((float)(iterations)*REF.Ts/Kc);                          // Computing d^3(xc)/dt^3.
        float ddd_yc_k = -8.0f*Wc2*cosf(2.0f*(float)(iterations)*REF.Ts/Kc);                // Computing d^3(yc)/dt^3.
        switch(Robots_Qty){
            case 2:{
                //------------------------------Cluster Space--------------------------------
                REF.z3_kp1[0] = -Wc1*sinf((float)(iterations)*REF.Ts/Kc);                   // Computing d^2(xc)/dt^2.
                REF.z3_kp1[1] = -4.0f*Wc1*sinf(2.0f*(float)(iterations)*REF.Ts/Kc);         // Computing d^2(yc)/dt^2.
                // Computing d^2(thc)/dt^2:
                float OP1_kp1 = REF.z2_kp1[0]*REF.z2_kp1[0];                                // Precompute operation OP1(k).
                float OP2_kp1 = REF.z2_kp1[0]*REF.z2_kp1[1];                                // Precompute operation OP2(k).
                float OP3_kp1 = REF.z2_kp1[1]*REF.z2_kp1[1];                                // Precompute operation OP3(k).
                float OP4_kp1 = OP1_kp1 + OP3_kp1;                                          // Precompute operation OP4(k).
                float OP5_kp1 = OP1_kp1 - OP3_kp1;                                          // Precompute operation OP5(k).
                float OP6_kp1 = OP4_kp1*OP4_kp1;                                            // Precompute operation OP6(k).
                REF.z3_kp1[2] = -REF.z3_kp1[0]*(2.0f*REF.z3_kp1[0]*OP2_kp1 - REF.z3_kp1[1]*OP5_kp1)/OP6_kp1 + REF.z3_kp1[1]*(2.0f*REF.z3_kp1[1]*OP2_kp1 + REF.z3_kp1[0]*OP5_kp1)/OP6_kp1 + (ddd_xc_k*REF.z2_kp1[1] - ddd_yc_k*REF.z2_kp1[0])/OP4_kp1;
                //------------------------------
                REF.z3_kp1[3] = 0.0f;                                                       // Computing d^2(dc)/dt^2.
                REF.z3_kp1[4] = -REF.z3_kp1[2];                                             // Computing d^2(psi_1)/dt^2.
                REF.z3_kp1[5] = -REF.z3_kp1[2];                                             // Computing d^2(psi_2)/dt^2.
                //-------------------------------Robot Space---------------------------------
                float SC2_kp1 = sinf(REF.z1_kp1[2]);                                        // Precompute sin(thc).
                float CC2_kp1 = cosf(REF.z1_kp1[2]);                                        // Precompute cos(thc).
                OP1_kp1 = REF.z1_kp1[3]*SC2_kp1;                                            // Precompute operation OP1(k).
                OP2_kp1 = REF.z1_kp1[3]*CC2_kp1;                                            // Precompute operation OP2(k).
                OP3_kp1 = REF.z2_kp1[3]*SC2_kp1;                                            // Precompute operation OP3(k).
                OP4_kp1 = REF.z2_kp1[3]*CC2_kp1;                                            // Precompute operation OP4(k).
                OP5_kp1 = REF.z3_kp1[2]*SC2_kp1;                                            // Precompute operation OP5(k).
                OP6_kp1 = REF.z3_kp1[2]*CC2_kp1;                                            // Precompute operation OP6(k).
                float OP7_kp1 = REF.z3_kp1[3]*SC2_kp1;                                      // Precompute operation OP7(k).
                float OP8_kp1 = REF.z3_kp1[3]*CC2_kp1;                                      // Precompute operation OP8(k).
                float OP9_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*SC2_kp1;                        // Precompute operation OP9(k).
                float OP10_kp1 = REF.z2_kp1[2]*REF.z2_kp1[2]*CC2_kp1;                       // Precompute operation OP10(k).
                float OP11_kp1 = OP1_kp1*REF.z2_kp1[2];                                     // Precompute operation OP11(k).
                float OP12_kp1 = OP2_kp1*REF.z2_kp1[2];                                     // Precompute operation OP12(k).
                float OP13_kp1 = OP3_kp1*REF.z2_kp1[2];                                     // Precompute operation OP13(k).
                float OP14_kp1 = OP4_kp1*REF.z2_kp1[2];                                     // Precompute operation OP14(k).
                float OP15_kp1 = REF.z1_kp1[3]*(OP9_kp1 - OP6_kp1);                         // Precompute operation OP15(k).
                float OP16_kp1 = REF.z1_kp1[3]*(OP10_kp1 + OP5_kp1);                        // Precompute operation OP16(k).
                float OP17_kp1 = OP3_kp1 + OP12_kp1;                                        // Precompute operation OP17(k).
                float OP18_kp1 = OP4_kp1 - OP11_kp1;                                        // Precompute operation OP18(k).
                float OP19_kp1 = OP7_kp1 + 2.0f*OP14_kp1 - OP15_kp1;                        // Precompute operation OP19(k).
                float OP20_kp1 = OP8_kp1 - 2.0f*OP13_kp1 - OP16_kp1;                        // Precompute operation OP20(k).
                //------------------------------
                REF.x1_kp1[0] = REF.z1_kp1[0] + OP1_kp1;
                REF.x1_kp1[1] = REF.z1_kp1[1] + OP2_kp1;
                REF.x1_kp1[2] = REF.z1_kp1[2] + REF.z1_kp1[4];
                REF.x1_kp1[3] = REF.z1_kp1[0] - OP1_kp1;
                REF.x1_kp1[4] = REF.z1_kp1[1] - OP2_kp1;
                REF.x1_kp1[5] = REF.z1_kp1[2] + REF.z1_kp1[5];
                //------------------------------
                REF.x2_kp1[0] = REF.z2_kp1[0] + OP17_kp1;
                REF.x2_kp1[1] = REF.z2_kp1[1] + OP18_kp1;
                REF.x2_kp1[2] = REF.z2_kp1[2] + REF.z2_kp1[4];
                REF.x2_kp1[3] = REF.z2_kp1[0] - OP17_kp1;
                REF.x2_kp1[4] = REF.z2_kp1[1] - OP18_kp1;
                REF.x2_kp1[5] = REF.z2_kp1[2] + REF.z2_kp1[5];
                //------------------------------
                REF.x3_kp1[0] = REF.z3_kp1[0] + OP19_kp1;
                REF.x3_kp1[1] = REF.z3_kp1[1] + OP20_kp1;
                REF.x3_kp1[2] = REF.z3_kp1[2] + REF.z3_kp1[4];
                REF.x3_kp1[3] = REF.z3_kp1[0] - OP19_kp1;
                REF.x3_kp1[4] = REF.z3_kp1[1] - OP20_kp1;
                REF.x3_kp1[5] = REF.z3_kp1[2] + REF.z3_kp1[5];
                //------------------------------
                Integration(REF.INT_2,REF.z3_kp1);                                          // Compute second integration to c3(k + 1).
                Integration(REF.INT_1,REF.INT_2.y_k);                                       // Compute first integration to second integration output.
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
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Compute the static reference trajectory n: 01, for OMRs control system:
void computeStatical01(Reference REF, enum Control_System consys){
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
            REF.z1_kp1[i] = REF.INT_1.x2_kp1[i];                                            // Updating data for c1(k + 1) within REF structure.
        }
        // Computing equations for generation of static reference profiles in the cluster space:
        switch(Robots_Qty){
            case 2:{
                float d_ph1_k = 1.0f;                                                       // Desired angular velocity of robot 1 (rad/s).
                float d_ph2_k = -1.0f;                                                      // Desired angular velocity of robot 2 (rad/s).
                //------------------------------Cluster Space--------------------------------
                REF.z2_kp1[0] = 0.0f;                                                       // Computing d(xc)/dt.
                REF.z2_kp1[1] = 0.0f;                                                       // Computing d(yc)/dt.
                REF.z2_kp1[2] = 0.0f;                                                       // Computing d(thc)/dt.
                REF.z2_kp1[3] = 0.0f;                                                       // Computing d(dc)/dt.
                REF.z2_kp1[4] = d_ph1_k;                                                    // Computing d(psi_1)/dt.
                REF.z2_kp1[5] = d_ph2_k;                                                    // Computing d(psi_2)/dt.
                //------------------------------
                REF.z3_kp1[0] = 0.0f;                                                       // Computing d^2(xc)/dt^2.
                REF.z3_kp1[1] = 0.0f;                                                       // Computing d^2(yc)/dt^2.
                REF.z3_kp1[2] = 0.0f;                                                       // Computing d^2(thc)/dt^2.
                REF.z3_kp1[3] = 0.0f;                                                       // Computing d^2(dc)/dt^2.
                REF.z3_kp1[4] = 0.0f;                                                       // Computing d^2(psi_1)/dt^2.
                REF.z3_kp1[5] = 0.0f;                                                       // Computing d^2(psi_2)/dt^2.
                //-------------------------------Robot Space---------------------------------
                float SC2_kp1 = sinf(REF.z1_kp1[2]);                                        // Precompute sin(thc).
                float CC2_kp1 = cosf(REF.z1_kp1[2]);                                        // Precompute cos(thc).
                float OP1_kp1 = REF.z1_kp1[3]*SC2_kp1;                                      // Precompute operation OP1(k).
                float OP2_kp1 = REF.z1_kp1[3]*CC2_kp1;                                      // Precompute operation OP2(k).
                //------------------------------
                REF.x1_kp1[0] = REF.z1_kp1[0] + OP1_kp1;
                REF.x1_kp1[1] = REF.z1_kp1[1] + OP2_kp1;
                REF.x1_kp1[2] = REF.z1_kp1[2] + REF.z1_kp1[4];
                REF.x1_kp1[3] = REF.z1_kp1[0] - OP1_kp1;
                REF.x1_kp1[4] = REF.z1_kp1[1] - OP2_kp1;
                REF.x1_kp1[5] = REF.z1_kp1[2] + REF.z1_kp1[5];
                //------------------------------
                REF.x2_kp1[0] = 0.0f;
                REF.x2_kp1[1] = 0.0f;
                REF.x2_kp1[2] = REF.z2_kp1[2] + REF.z2_kp1[4];
                REF.x2_kp1[3] = 0.0f;
                REF.x2_kp1[4] = 0.0f;
                REF.x2_kp1[5] = REF.z2_kp1[2] + REF.z2_kp1[5];
                //------------------------------
                REF.x3_kp1[0] = 0.0f;
                REF.x3_kp1[1] = 0.0f;
                REF.x3_kp1[2] = 0.0f;
                REF.x3_kp1[3] = 0.0f;
                REF.x3_kp1[4] = 0.0f;
                REF.x3_kp1[5] = 0.0f;
                //------------------------------
                Integration(REF.INT_1,REF.z2_kp1);                                          // Compute only first integration to c2(k + 1).
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
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
