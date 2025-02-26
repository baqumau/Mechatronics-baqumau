/* This Library includes all the parameters and functions for control the 3WD-OMRs formation. Several functions
will be implemented in this library to run ADRC-RS and SMC-CS control systems in the OMRs formation.*/
//---------------------------------------------------------------------------------------------------------------
#ifndef _3WD_OMRs_Controllers_H_
#define _3WD_OMRs_Controllers_H_
//---------------------------------------------------------------------------------------------------------------
// Including libraries that allows functionality of this script:
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <float.h>
//---------------------------------------------------------------------------------------------------------------
/* Define _USE_MATH_DEFINES before including 3WD-OMRs_Controllers.h to expose their macro definitions for common
math constants. */
#define M_PI    3.14159265358979323846                                          // PI definition.
#define M_PI_2  1.57079632679489661923                                          // Math definition of PI/2.
#define M_PI_4  0.78539816339744830962                                          // Math definition of PI/6.
#define M_PI_6  0.52359877559829887308                                          // Math definition of PI/6.
#define M_SQRT2 1.41421356237309504880                                          // Math definition of SQRT(2).
//---------------------------------------------------------------------------------------------------------------
// Definition of kinematic and dynamical parameters of OMRs, that will be exported by the library:
#define Robots_Qty 2                                                            // [Un], Qty of robots in the formation;
// Constant parameters of OMR No. 1 (gray robot in our case):
#define delta_1 (float)(M_PI_6)                                                 // [rad], Wheels 1 and 2 are placed at this angle, with respect to y_m axis.
#define l_1 116.0f                                                              // [mm], Distance between the vehicle's center and the center of mass of each wheel.
#define r_1 24.0f                                                               // [mm], Radius of each omnidirectional wheel.
#define mt_1 1.33f                                                              // [kg], Total mass of the robot.
#define mw_1 .044f                                                              // [kg], Mass of each onmidirectional wheel.
#define n_1 80.0f                                                               // [m/m], built-in gear ratio by each omni wheel.
#define jr_1 1.0f*mt_1*l_1*l_1*0.5f                                             // [kg*mm^2], Mass moment of inertia of robot along the rotational center of the robot.
#define jw_1 3.0f*mw_1*r_1*r_1*0.125f                                           // [kg*mm^2], Mass moment of inertia of each omnidirectional wheel.
#define d_th11_max 15.0344f                                                     // [rad/s], Maximum angular velocity of wheel 1.
#define d_th12_max 13.0382f                                                     // [rad/s], Maximum angular velocity of wheel 2.
#define d_th13_max 15.2282f                                                     // [rad/s], Maximum angular velocity of wheel 3.
#define V1_x_max (r_1/3.0f)*(d_th11_max + d_th12_max + 2.0f*d_th13_max)         // [mm/s], Maximum linear velocity along X axis (considering x in a parallel direction to wheel 3).
#define V1_y_max (r_1/sqrtf(3.0f))*(d_th11_max + d_th12_max)                    // [mm/s], Maximum linear velocity along Y axis (wheels 1 and 2 are symmetrically oriented by the angle delta with respect to Y axis).
#define d_phi1_max (r_1/(3.0f*l_1))*(d_th11_max + d_th12_max + d_th13_max)      // [rad/s], Maximum angular velocity of the robot.
#define ke_1 0.68f                                                              // Approximated electrical constant for translating input torque control to voltage percentage (PWM signal from -100 to 100) on OMR 1.
// Constant parameters of OMR No. 2 (black robot in our case):
#define delta_2 (float)(M_PI_6)                                                 // [rad], Wheels 1 and 2 are placed at this angle, with respect to y_m axis.
#define l_2 110.0f                                                              // [mm], Distance between the vehicle's center and the center of mass of each wheel.
#define r_2 28.0f                                                               // [mm], Radius of each omnidirectional wheel.
#define mt_2 1.55f                                                              // [kg], Total mass of the robot.
#define mw_2 .062f                                                              // [kg], Mass of each onmidirectional wheel.
#define n_2 40.0f                                                               // [m/m], built-in gear ratio by each omni wheel.
#define jr_2 1.0f*mt_2*l_2*l_2*0.5f                                             // [kg*mm^2], Mass moment of inertia of robot along the rotational center of the robot.
#define jw_2 3.0f*mw_2*r_2*r_2*0.125f                                           // [kg*mm^2], Mass moment of inertia of each omnidirectional wheel.
#define d_th21_max 16.2931f                                                     // [rad/s], Maximum angular velocity of wheel 1.
#define d_th22_max 14.0691f                                                     // [rad/s], Maximum angular velocity of wheel 2.
#define d_th23_max 14.9449f                                                     // [rad/s], Maximum angular velocity of wheel 3.
#define V2_x_max (r_2/3.0f)*(d_th21_max + d_th22_max + 2.0f*d_th23_max)         // [mm/s], Maximum linear velocity along X axis (considering X in a parallel direction to wheel 3).
#define V2_y_max (r_2/sqrtf(3.0f))*(d_th21_max + d_th22_max)                    // [mm/s], Maximum linear velocity along Y axis (wheels 1 and 2 are symmetrically oriented by the angle delta with respect to Y axis).
#define d_phi2_max (r_2/(3.0f*l_2))*(d_th21_max + d_th22_max + d_th23_max)      // [rad/s], Maximum angular velocity of the robot.
#define ke_2 0.65f                                                              // Approximated electrical constant for translating input torque control to voltage percentage (PWM signal from -100 to 100) on OMR 2.
// Another constant parameters:
#define kappa 1000.0f                                                           // [mm/m], Known constant for the units conversion of input signals.
#define NOP __asm__(" NOP")                                                     // Nop instruction (asm).
//---------------------------------------------------------------------------------------------------------------
// Data structure to arrange floating-point number matrices:
typedef struct{
    int rows;                                                                   // Size of rows.
    int cols;                                                                   // Size of columns.
    float **data;                                                               // Matrix data.
} Matrix;
//---------------------------------------------------------------------------------------------------------------
// Data structure to arrange string-format matrices:
typedef struct{
    int bufferSize;                                                             // Buffer size.
    int elementSize;                                                            // Size of the elements group.
    char **data;                                                                // Matrix data.
} St_Matrix;
//---------------------------------------------------------------------------------------------------------------
// Angles correction structure to convert from {-M_PI,M_PI} format orientation to absolute orientation:
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float m_PI;                                                                 // Fixed point value for M_PI.
    float m_PI_2;                                                               // Fixed point value for M_PI_2.
    float *x1_k;                                                                // State variables to arrange the delayed orientation associated to OMRs.
    float *x1_kp1;                                                              // State variables to arrange the current orientation associated to OMRs.
    float *y_k;                                                                 // Output variables.
    int *eta_k;                                                                 // Quadrant multiplier.
    int *f1_k;                                                                  // Quadrant flag 1.
    int *f2_k;                                                                  // Quadrant flag 2.
    bool *flag;                                                                 // Execution flag.
} Correction_Struct;
//---------------------------------------------------------------------------------------------------------------
// Data structure for managing the input and output variables set of each OMR:
typedef struct{
    int qty;                                                                    // OMRs quantity in the formation.
    float *q_k;                                                                 // [mm;rad], pose of OMRs formation in the robot space is arranged in this vector.
    float *c_k;                                                                 // [mm;rad], pose of OMRs formation in the cluster space is arranged in this vector.
    float *w_k;                                                                 // [rad/s], angular velocity reached by each omni-wheel is arranged in this vector.
    float *u_k;                                                                 // [N.mm], control signal applied to each omni-wheel is arranged in this vector.
    float *v_k;                                                                 // [%(PWM)], control signal applied to each omni-wheel is arranged in this vector.
    float *params;                                                              // Several constant values needed in the formation control system.
    St_Matrix qs_k;                                                             // [mm;rad], pose of OMRs formation in the robot space is arranged in string-format within this vector.
    St_Matrix cs_k;                                                             // [mm;rad], pose of OMRs formation in the cluster space is arranged in string-format within this vector.
    St_Matrix ws_k;                                                             // [rad/s], angular velocity reached by each omni-wheel is arranged in string-format within this vector.
    St_Matrix us_k;                                                             // [N.mm], control signal applied to each omni-wheel is arranged in string-format within this vector.
    St_Matrix vs_k;                                                             // [%], PWMs control signal applied to each omni-wheel is arranged in string-format within this vector.
    Correction_Struct CORq;                                                     // Adding angle correction structure for measured angles in the robot space.
    Correction_Struct CORc;                                                     // Adding angle correction structure for obtained angles through atan2(.) function in the cluster space.
    bool *flag;                                                                 // Configuration and execution flags.
} Formation;
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement trapezoidal integrators:
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float Ts;                                                                   // Sample time.
    float gain;                                                                 // Gain value of integrator.
    float *X_0;                                                                 // Initial conditions.
    float *x1_k;                                                                // State variables to arrange the delayed input u(k).
    float *x1_kp1;                                                              // State variables to arrange input signals as u(k+1).
    float *x2_k;                                                                // State variables x2(k) where integrations results.
    float *x2_kp1;                                                              // State variables x2(k+1) where integration equations are stated.
    float *y_k;                                                                 // Output variables.
    bool *flag;                                                                 // Execution flag.
} Integrator;
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement simple differentiators (basical derivative approximation):
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float Ts;                                                                   // Sample time.
    float gain;                                                                 // Gain value of differentiator.
    float *X_0;                                                                 // Initial conditions.
    float *x1_k;                                                                // State variables to arrange the delayed input u(k).
    float *x1_kp1;                                                              // State variables to arrange input signals as u(k+1).
    float *x2_k;                                                                // State variables x2(k) where differentiation results.
    float *x2_kp1;                                                              // State variables x2(k+1) where differentiation equations are stated.
    float *y_k;                                                                 // Output variables.
    bool *flag;                                                                 // Execution flag.
} simpleDifferentiator;
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement differentiators:
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float Ts;                                                                   // Sample time.
    float gain;                                                                 // Gain value of differentiator.
    float fc;                                                                   // Filter coefficient.
    float *X_0;                                                                 // Initial conditions.
    float *x1_k;                                                                // State variables to arrange the delayed input u(k).
    float *x1_kp1;                                                              // State variables to arrange input signals as u(k+1).
    float *x2_k;                                                                // State variables x2(k) where differentiation results.
    float *x2_kp1;                                                              // State variables x2(k+1) where differentiation equations are stated.
    float *y_k;                                                                 // Output variables.
    bool *flag;                                                                 // Execution flag.
} Differentiator;
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement 2nd-order HOSM-based homogeneous discrete-time differentiators (HDDs):
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float Ts;                                                                   // Sample time.
    float *lambda;                                                              // Performance coefficients of differentiator.
    float *Lip;                                                                 // Lipschitz constants.
    float *X_0;                                                                 // Initial conditions.
    float *x1_k;                                                                // State variables to compute the tracking of the input signal u(k).
    float *x1_kp1;                                                              // State variables in which is intended to achieve the corresponding forwarded input signals u(k+1).
    float *x2_k;                                                                // State variables x2(k) where first differentiation results.
    float *x2_kp1;                                                              // State variables x2(k+1) where first differentiation equations are stated.
    float *x3_k;                                                                // State variables x3(k) where second differentiation results.
    float *x3_kp1;                                                              // State variables x3(k+1) where second differentiation equations are stated.
    float *y_k;                                                                 // Output variables.
    bool *flag;                                                                 // Execution flag.
} HOSM_Differentiator;
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement the m-robot high-gain observer:
typedef struct{
    int s_base;                                                                 // Size for basis of the computations.
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float Ts;                                                                   // Sample time.
    float gamma;                                                                // Including a sufficiently small positive constant (0 < gamma < 1).
    float gamma_gamma;                                                          // Saves gamma^2.
    float gamma_gamma_gamma;                                                    // Saves gamma^3.
    Matrix alpha_1;                                                             // First gains matrix of RS observer.
    Matrix alpha_2;                                                             // Second gains matrix of RS observer.
    Matrix alpha_3;                                                             // Third gains matrix of RS observer.
    float *F_k;                                                                 // Variable matrix F(k) of dynamical behavior for OMR formation in the robot space.
    float *G_k;                                                                 // Variable matrix G(k) of dynamical behavior for OMR formation in the robot space.
    float *X_0;                                                                 // Initial conditions x(0) = [x1(0) x2(0) x3(0)]'.
    float *x1_k;                                                                // State variables x1(k) that arrange the estimated RS pose of OMRs as q(k*Ts).
    float *x1_kp1;                                                              // State variables used in this case to compute the derivative of x1(k) according to the model.
    float *x2_k;                                                                // State variables x2(k) that arrange the derivative of estimated RS pose of OMRs as d(q(k*Ts))/dt.
    float *x2_kp1;                                                              // State variables used in this case to compute the derivative of x2(k) according to the model.
    float *x3_k;                                                                // State variables x3(k) that arrange the estimated disturbances of OMRs formation in the robot space.
    float *x3_kp1;                                                              // State variables used in this case to compute the derivative of x3(k) according to the model.
    float *X_kp1;                                                               // Support variable to concatenate x1_kp1, x2_kp1 and x3_kp1 in only a vector.
    float *y_k;                                                                 // Output variables.
    bool *flag;                                                                 // Execution flag.
    Integrator INT;                                                             // Creates a Integrator needed for this RS_Observer structure.
} RS_Observer;                                                                  // High-gain observer in the robot space.
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement the m-robot cluster high-gain observer:
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float Ts;                                                                   // Sample time.
    float gamma;                                                                // Including a sufficiently small positive constant (0 < gamma < 1).
    float gamma_gamma;                                                          // Saves gamma^2.
    float gamma_gamma_gamma;                                                    // Saves gamma^3.
    Matrix alpha_1;                                                             // First gains matrix of CS observer.
    Matrix alpha_2;                                                             // Second gains matrix of CS observer.
    Matrix alpha_3;                                                             // Third gains matrix of CS observer.
    float *F_k;                                                                 // Variable matrix F(k) of dynamical behavior for OMR formation in the cluster space.
    float *G_k;                                                                 // Variable matrix G(k) of dynamical behavior for OMR formation in the cluster space.
    float *Z_0;                                                                 // Initial conditions z(0) = [z1(0) z2(0) z3(0)]'.
    float *z1_k;                                                                // State variables z1(k) that arrange the estimated CS pose of OMRs as c(k*Ts).
    float *z1_kp1;                                                              // State variables used in this case to compute the derivative of z1(k) according to the model.
    float *z2_k;                                                                // State variables z2(k) that arrange the derivative of estimated CS pose of OMRs as d(c(k*Ts))/dt.
    float *z2_kp1;                                                              // State variables used in this case to compute the derivative of z2(k) according to the model.
    float *z3_k;                                                                // State variables z3(k) that arrange the estimated disturbances of OMRs formation in the cluster space.
    float *z3_kp1;                                                              // State variables used in this case to compute the derivative of z3(k) according to the model.
    float *Z_kp1;                                                               // Support variable to concatenate z1_kp1, z2_kp1 and z3_kp1 in only a vector.
    float *y_k;                                                                 // Output variables.
    bool *flag;                                                                 // Execution flag.
    Integrator INT;                                                             // Creates a Integrator needed for this CS_Observer structure.
    Differentiator DIF;                                                         // Creates a Differentiator needed for this CS_Observer structure.
} CS_Observer;                                                                  // High-gain observer in the cluster space.
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement the m-robot cluster high-gain observer (variant x):
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float Ts;                                                                   // Sample time.
    float gamma;                                                                // Including a sufficiently small positive constant (0 < gamma < 1).
    float gamma_gamma;                                                          // Saves gamma^2.
    float gamma_gamma_gamma;                                                    // Saves gamma^3.
    Matrix alpha_1;                                                             // First gains matrix of CS observer.
    Matrix alpha_2;                                                             // Second gains matrix of CS observer.
    Matrix alpha_3;                                                             // Third gains matrix of CS observer.
    float *F_k;                                                                 // Variable matrix F(k) of dynamical behavior for OMR formation in the cluster space.
    float *G_k;                                                                 // Variable matrix G(k) of dynamical behavior for OMR formation in the cluster space.
    float *Z_0;                                                                 // Initial conditions z(0) = [z1(0) z2(0) z3(0)]'.
    float *z1_k;                                                                // State variables z1(k) that arrange the estimated CS pose of OMRs as c(k*Ts).
    float *z1_kp1;                                                              // State variables used in this case to compute the derivative of z1(k) according to the model.
    float *z2_k;                                                                // State variables z2(k) that arrange the derivative of estimated CS pose of OMRs as d(c(k*Ts))/dt.
    float *z2_kp1;                                                              // State variables used in this case to compute the derivative of z2(k) according to the model.
    float *z3_k;                                                                // State variables z3(k) that arrange the estimated disturbances of OMRs formation in the cluster space.
    float *z3_kp1;                                                              // State variables used in this case to compute the derivative of z3(k) according to the model.
    float *Z_kp1;                                                               // Support variable to concatenate z1_kp1, z2_kp1 and z3_kp1 in only a vector.
    float *y_k;                                                                 // Output variables.
    bool *flag;                                                                 // Execution flag.
    Integrator INT;                                                             // Creates a Integrator needed for this CS_Observer structure.
    HOSM_Differentiator SMDIF;                                                  // Creates a HOSM-based Differentiator needed for this CS_Observer structure.
} CSx_Observer;                                                                 // High-gain observer in the cluster space.
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement GPI controller (discrete proper transfer function):
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float Ts;                                                                   // Sample time.
    Matrix lambda;                                                              // Gains matrix of GPI controller.
    float *X_0;                                                                 // Initial conditions.
    float *x1_k;                                                                // State variables to arrange the delayed input u(k).
    float *x1_kp1;                                                              // State variables to arrange input signals as u(k+1).
    float *x2_k;                                                                // State variables x2(k) where computing control results.
    float *x2_kp1;                                                              // State variables x2(k+1) where control equations are stated.
    float *y_k;                                                                 // Output variables.
    bool *flag;                                                                 // Execution flag.
} GPI_Controller;
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement sliding surfaces:
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float Ts;                                                                   // Sample time.
    float *Gamma;                                                               // Gains vector for sliding surfaces. It is also the desired control bandwidth for each CS variable.
    float *E_0;                                                                 // Initial tracking errors E(0) = [e1(0) e2(0)]'.
    float *v1_k;                                                                // State variables where sliding functions are computed.
    float *v2_k;                                                                // State variables to arrange the integral action of sliding function.
    float *v2_kp1;                                                              // State variables to arrange the derivative of v2_k.
    float *v1_max;                                                              // Saturation values for sliding surfaces functions.
    float *y_k;                                                                 // Output variables of sliding function.
    bool *flag;                                                                 // Execution flag.
    Integrator INT;                                                             // Creates a Integrator needed for this Sl_Surfaces structure.
} Sl_Surfaces;
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement robot space ADRC control law:
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    float *y_k;                                                                 // Output variables.
    bool *flag;                                                                 // Execution flag.
} ADRC_Controller;
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement robot space ADRC control law:
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    float epsilon;                                                              // Including a sufficiently small positive constant (0 < epsilon < 1).
    float *Gamma;                                                               // Gains vector for the desired control bandwidth of each CS variable or sliding surfaces gains.
    float *omega;                                                               // Fixed control gains that force the tracking error trajectories to move towards the sliding surfaces.
    float *rho;                                                                 // Bound values for disturbances that previously and arbitrarily were selected.
    float *Delta;                                                               // Bound values for uncertiainties that previously and arbitrarily were selected.
    float *hat_Fc_k;                                                            // Required nominal vector field ^{\hat}f_c(k).
    float *til_Fc_k;                                                            // Required vector field with uncertainty maximum values ^{\tilde}f_c(k).
    float *aux_u_k;                                                             // Auxiliary control law.
    float *kappa_k;                                                             // Variant control gains of SMC CS auxilliary control law, that depends on model uncertainties.
    float *ast_u_k;                                                             // Tracking error based control that is part of auxilliary control law.
    float *y_k;                                                                 // Output variables.
    bool *flag;                                                                 // Execution flag.
} SMC_Controller;
//---------------------------------------------------------------------------------------------------------------
// Defining an enumeration to choose the different control strategy:
enum Control_System{
    ADRC_RS,                                                                    // Active disturbance rejection control on robot space framework.
    SMC_CS                                                                      // Sliding mode control on cluster space framework.
};
//---------------------------------------------------------------------------------------------------------------
// Declaration of functions library:
//---------------------------------------------------------------------------------------------------------------
// Function to determine the sign of an integer number:
extern int sign(int num);
// Function to determine the sign of a floating-point number:
extern int signf(float num);
// Function to round a floating-point number to three decimal places:
extern float roundToThreeDecimals(float num);
// Function to round a floating-point number to four decimal places:
extern float roundToFourDecimals(float num);
// Function to saturate signal between minimum and maximum values:
extern float saturation(float signal, float minValue, float maxValue);
// Clutch function to attenuate high-peaking phenomena during the initial seconds of runtime:
extern float clutch(float signal_k, float t_cl, float sampleTime, unsigned long iterations);
// Function to allocate memory for the matrix in the structure (floating-point numbers array):
extern bool allocateMatrix(Matrix *MAT, int rows, int cols);
// Function to free memory for the matrix in the structure:
extern void freeMatrix(Matrix *MAT);
// Function to allocate memory for the matrix in the structure (string-format elements array):
extern bool allocateStMatrix(St_Matrix *SMAT, int elem_size, int buff_size);
// Function to initialize char-type data-matrix buffer:
extern void initStMatrix(St_Matrix *SMAT);
// Function to free memory for the string matrix in the structure:
extern void freeStMatrix(St_Matrix *SMAT);
// Creating integrator structure:
extern Integrator createIntegrator(int inputSize, float sampleTime, float gain);
// Adding initial conditions to INT Integrator structure:
extern void initIntegrator(Integrator INT, float x_0[]);
// Integration function:
extern void Integration(Integrator INT, float input[]);
// Creating a simple differentiator structure:
extern simpleDifferentiator createSimpleDifferentiator(int inputSize, float sampleTime, float gain);
// Initialization function for simple differentiator:
extern void initSimpleDifferentiator(simpleDifferentiator SDIF, float x_0[]);
// Simple differentiation function:
extern void simpleDifferentiation(simpleDifferentiator SDIF, float input[]);
// Creating differentiator structure:
extern Differentiator createDifferentiator(int inputSize, float sampleTime, float gain, float filter_coeff);
// Initialization function for differentiator:
extern void initDifferentiator(Differentiator DIF, float x_0[]);
// Differentiation function:
extern void Differentiation(Differentiator DIF, float input[]);
// Creating a HOSM-based differentiation structure:
extern HOSM_Differentiator createHOSMDifferentiator(int inputSize, float sampleTime, float per_gains[], float lip_const[]);
// Initialization function for HOSM-based differentiator:
extern void initHOSMDifferentiator(HOSM_Differentiator SMDIF, float x_0[]);
// HOSM-based differentiation function:
extern void HOSMDifferentiation(HOSM_Differentiator SMDIF, float input[]);
// Creating the robot space observer structure:
extern RS_Observer createRS_Observer(float sampleTime, float gains[9*Robots_Qty][3*Robots_Qty], float epsilon);
// Adding initial conditions to high-gain observer structured as RSO:
extern void init_RS_Observer(RS_Observer RSO, float x_0[]);
// Robot space estimation function:
extern void RS_Estimation(RS_Observer RSO, float fmr_u_k[], float fmr_q_k[], float fmr_params[]);
// Creating the GPI controller structured as GPI:
extern GPI_Controller createGPI_Controller(float sampleTime, float gains[3*Robots_Qty][3]);
// Initializing the GPI controller structured as GPI:
extern void initGPI_Controller(GPI_Controller GPI, float x_0[]);
// GPI control computing function:
extern void computeGPIControl(GPI_Controller GPI, float errors_k[]);
// Creating the ADRC controller structured as ADRC:
extern ADRC_Controller createADRC_Controller(void);
// Initializing the ADRC controller structured as ADRC:
extern void initADRC_Controller(ADRC_Controller ADRC, float ref_x_0[], float rso_x_0[], float gpi_x_0[], float fmr_params[]);
// ADRC technique computing function:
extern void computeADRC(ADRC_Controller ADRC, float ref_y_k[], float rso_y_k[], float gpi_y_k[], float fmr_params[]);
// Creating the cluster space high-gain observer structure (type 01):
extern CS_Observer createCS_Observer01(float sampleTime, float gains[3*(Robots_Qty-1)][Robots_Qty-1], float epsilon, float diff_fc);
// Creating the cluster space high-gain observer structure (type 01 - variant x):
extern CSx_Observer createCSx_Observer01(float sampleTime, float gains[3*(Robots_Qty-1)][Robots_Qty-1], float epsilon, float diff_pg[], float diff_lc[]);
// Adding initial conditions to high-gain observer 01 structured as CSO:
extern void init_CS_Observer01(CS_Observer CSO, float z_0[]);
// Adding initial conditions to high-gain observer 01 structured as CSO (variant x):
extern void init_CSx_Observer01(CSx_Observer CSO, float z_0[]);
// Cluster space estimation function for CS observer 01:
extern void CS_Estimation01(CS_Observer CSO, float fmr_u_k[], float fmr_c_k[], float fmr_params[]);
// Cluster space estimation function for CS observer 01 (variant x):
extern void CSx_Estimation01(CSx_Observer CSO, float fmr_u_k[], float fmr_c_k[], float fmr_params[]);
// Creating the sliding surfaces:
extern Sl_Surfaces createSlidingSurfaces(float sampleTime, float gains[], float satValues[]);
// Adding initial conditions to sliding surfaces structured within SLS:
extern void init_SlidingSurfaces(Sl_Surfaces SLS, float ref_z_0[], float fmr_z_0[]);
// Compute the sliding surfaces algorithm that updates structured variables within SLS:
extern void compute_SlidingSurfaces(Sl_Surfaces SLS, float ref_y_k[], float fmr_c_k[], float cso_y_k[]);
// Creating the SMC controller data structure in the cluster space as SMC:
extern SMC_Controller createSMC_Controller(float gains[], float unc_values[], float dis_values[], float sls_gains[], float epsilon);
// Initializing the sliding mode controller structured as SMC:
extern void initSMC_Controller(SMC_Controller SMC, float ref_z_0[], float cso_z_0[], float sls_e_0[], float fmr_params[]);
// SMC strategy computing function:
extern void computeSMC_Controller(SMC_Controller SMC, float ref_y_k[], float fmr_c_k[], float cso_y_k[], float sls_y_k[], float fmr_params[]);
// Creating formation structure:
extern Formation createFormation(int qty);
// Compute the corresponding cluster space variables to OMRs formation as FMR:
extern void computeCSVariables(Formation FMR);
// Create a correction structure for translating angles to an absolute format:
extern Correction_Struct createAngleConverter(int inputSize);
// Initialize the correction procedure for translating angles to an absolute format:
extern void initAngleConverter(Correction_Struct COR, float x1_0[]);
// Compute the angle correction algorithm for translating angles to an absolute format:
extern void angleConversion(Correction_Struct COR, float angles_k[]);
// Function for fast computing of the cube root using an iterative method:
extern float cbrtf_fast(float num);
// Function to round a floating-point number to the nearest integer, with ties rounded away from zero (using FastRTS):
extern float roundf_fast(float num);
// Function that rounds a floating-point number up to the nearest integer:
extern float ceil_fast(float num);
// Function that rounds a floating-point number down to the nearest integer:
extern float floor_fast(float num);
// Function to compute a custom hyperbolic tangent for a floating-point number "num":
extern float tanhf_custom(float num);
//---------------------------------------------------------------------------------------------------------------
#endif /* _3WD_OMRs_CONTROLLERS_H_ */
//---------------------------------------------------------------------------------------------------------------
