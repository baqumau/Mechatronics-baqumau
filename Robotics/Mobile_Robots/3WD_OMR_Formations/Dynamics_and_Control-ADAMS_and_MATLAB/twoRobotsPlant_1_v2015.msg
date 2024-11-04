
-------------------------------------------------------------------------------
|        ..          ..                                                       |
|       ####*.      ####.                                                     |
|         `###*.       `#.                 MSC Software                       |
|            `###.       #.                ------------                       |
|               `##.     ##                                                   |
|                 `##.   ##                                                   |
|                   `## ##'                A d a m s   C++   S o l v e r      |
|                     ####                 [Build:         2015.0.0-CL346890] |
|                     ###.                 Version:        2015               |
|                    ###`#.                Patch Version:  None               |
|                  .###  `#                                                   |
|                 ####    `#                                                  |
|                ####      #.                                                 |
|              #####       `#              http://www.mscsoftware.com         |
|            .#####                                                           |
|           #####'                                                            |
|           ####                                                              |
|                                                                             |
|    *********************************************************************    |
|    *                                                                   *    |
|    *                      MSC Software Corporation                     *    |
|    *                                                                   *    |
|    *                             A d a m s                             *    |
|    *                                                                   *    |
|    *          Automatic Dynamic Analysis of Mechanical Systems         *    |
|    *                                                                   *    |
|    *********************************************************************    |
|    *                                                                   *    |
|    *                         LEGAL INFORMATION                         *    |
|    *                                                                   *    |
|    *  Warning:  This computer  program is protected  by copyright law  *    |
|    *  and  international  treaties.    Unauthorized  reproduction  or  *    |
|    *  distribution  of this  computer program, or any  portion of it,  *    |
|    *  may result in severe civil and criminal penalties.               *    |
|    *                                                                   *    |
|    *  Copyright (C) 2015 MSC Software Corporation and  its licensors.  *    |
|    *                        All rights reserved.                       *    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
|-----------------------------------------------------------------------------|
|                                                                             |
|    *********************************************************************    |
|    *                                                                   *    |
|    *   Local Time: 2024-11-04 13:24:59                                 *    |
|    *    Host Name: baqumau-PC                                          *    |
|    *        Uname: MS Windows NT                                       *    |
|    *      OS Info: 6.2                                                 *    |
|    *         User: mauro                                               *    |
|    *  Customer ID: 82B2ED04-FCB9D2A5                                   *    |
|    *  Current dir: C:\Users\mauro\Mechatronics-baqumau\Robotics\Mobile_Robots\3WD_OMR_Formations\Dynamics_and_Control-ADAMS_and_MATLAB*    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
-------------------------------------------------------------------------------

  OS-environment variable
  MDI_ADAMS_SCONTROLS_APPLICATION=1
  Adams/Controls. Announces Adams/Solver C++ is being run with Adams/Controls in either function evaluation mode or cosimulation mode.



-------------------------------------------------------------------------------
|                                 Model Title                                 |
|=============================================================================|
|                                                                             |
|                  ADAMS/View model name: Robot_Formation_1                   |
|                                                                             |
-------------------------------------------------------------------------------

 command: simulate/initial_conditions


  Begin Displacement Initial Conditions


  End Displacement Initial Conditions


  Begin Velocity Initial Conditions


  End Velocity Initial Conditions


  Begin Acceleration Initial Conditions


  End Acceleration Initial Conditions
 command: var/13, fun=0.00000000000000000e+000
 command: var/14, fun=0.00000000000000000e+000
 command: var/15, fun=0.00000000000000000e+000
 command: var/16, fun=0.00000000000000000e+000
 command: var/17, fun=0.00000000000000000e+000
 command: var/18, fun=0.00000000000000000e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   0.00000E+00  0.00000E+00            5            0       0            0.00 
   0.00000E+00  0.00000E+00            5            0       0            3.81 

---- START: WARNING ----
Integrator HMAX could not be determined. Setting to HINIT.

---- END: WARNING ----
   0.00000E+00  5.00000E-06            0            0       1            3.94 

  End Simulation
 command: var/13, fun=6.73327170741533370e-005
 command: var/14, fun=6.73327170741533370e-005
 command: var/15, fun=-6.73327170741533370e-005
 command: var/16, fun=-6.73327170741533370e-005
 command: var/17, fun=-6.73327170741533370e-005
 command: var/18, fun=6.73327170741533370e-005
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   0.00000E+00  5.00000E-06            0            0       1            3.94 
   5.00000E-03  1.00000E-04          159           59       3            4.88 

  End Simulation
 command: var/13, fun=2.69330686958335620e-004
 command: var/14, fun=2.69330686958335620e-004
 command: var/15, fun=-2.69330686958335620e-004
 command: var/16, fun=-2.69330686958335620e-004
 command: var/17, fun=-2.69330686958335620e-004
 command: var/18, fun=2.69330686958335620e-004
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.00000E-03  1.00000E-04          159           59       3            4.88 
   1.00000E-02  1.00000E-04          307          109       3            5.70 

  End Simulation
 command: var/13, fun=6.05993365593304740e-004
 command: var/14, fun=6.05993365593304740e-004
 command: var/15, fun=-6.05993365593304740e-004
 command: var/16, fun=-6.05993365593304740e-004
 command: var/17, fun=-6.05993365593304740e-004
 command: var/18, fun=6.05993365593304740e-004
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.00000E-02  1.00000E-04          307          109       3            5.70 
   1.50000E-02  1.00000E-04          451          159       4            6.50 

  End Simulation
 command: var/13, fun=1.07731984623771200e-003
 command: var/14, fun=1.07731984623771200e-003
 command: var/15, fun=-1.07731984623771200e-003
 command: var/16, fun=-1.07731984623771200e-003
 command: var/17, fun=-1.07731984623771200e-003
 command: var/18, fun=1.07731984623771200e-003
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.50000E-02  1.00000E-04          451          159       4            6.50 
   2.00000E-02  1.00000E-04          598          209       6            7.31 

  End Simulation
 command: var/13, fun=1.68330885947365340e-003
 command: var/14, fun=1.68330885947365340e-003
 command: var/15, fun=-1.68330885947365340e-003
 command: var/16, fun=-1.68330885947365340e-003
 command: var/17, fun=-1.68330885947365340e-003
 command: var/18, fun=1.68330885947365340e-003
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.00000E-02  1.00000E-04          598          209       6            7.31 
   2.50000E-02  1.00000E-04          739          259       4            8.09 

  End Simulation
 command: var/13, fun=2.42395877320666920e-003
 command: var/14, fun=2.42395877320666920e-003
 command: var/15, fun=-2.42395877320666920e-003
 command: var/16, fun=-2.42395877320666920e-003
 command: var/17, fun=-2.42395877320666920e-003
 command: var/18, fun=2.42395877320666920e-003
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.50000E-02  1.00000E-04          739          259       4            8.09 
   3.00000E-02  1.00000E-04          877          309       3            8.89 

  End Simulation
 command: var/13, fun=3.29926759259913100e-003
 command: var/14, fun=3.29926759259913100e-003
 command: var/15, fun=-3.29926759259913100e-003
 command: var/16, fun=-3.29926759259913100e-003
 command: var/17, fun=-3.29926759259913100e-003
 command: var/18, fun=3.29926759259913100e-003
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.00000E-02  1.00000E-04          877          309       3            8.89 
   3.50000E-02  1.00000E-04         1019          359       2            9.69 

  End Simulation
 command: var/13, fun=4.30923296019791740e-003
 command: var/14, fun=4.30923296019791740e-003
 command: var/15, fun=-4.30923296019791740e-003
 command: var/16, fun=-4.30923296019791740e-003
 command: var/17, fun=-4.30923296019791740e-003
 command: var/18, fun=4.30923296019791740e-003
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.50000E-02  1.00000E-04         1019          359       2            9.69 
   4.00000E-02  1.00000E-04         1141          409       2           10.45 

  End Simulation
 command: var/13, fun=5.45385215585114660e-003
 command: var/14, fun=5.45385215585114660e-003
 command: var/15, fun=-5.45385215585114660e-003
 command: var/16, fun=-5.45385215585114660e-003
 command: var/17, fun=-5.45385215585114660e-003
 command: var/18, fun=5.45385215585114660e-003
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.00000E-02  1.00000E-04         1141          409       2           10.45 
   4.50000E-02  1.00000E-04         1259          459       2           11.20 

  End Simulation
 command: var/13, fun=6.73312209675258620e-003
 command: var/14, fun=6.73312209675258620e-003
 command: var/15, fun=-6.73312209675258620e-003
 command: var/16, fun=-6.73312209675258620e-003
 command: var/17, fun=-6.73312209675258620e-003
 command: var/18, fun=6.73312209675258620e-003
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.50000E-02  1.00000E-04         1259          459       2           11.20 
   5.00000E-02  1.00000E-04         1385          509       2           11.97 

  End Simulation
 command: var/13, fun=8.14703933741389720e-003
 command: var/14, fun=8.14703933741389720e-003
 command: var/15, fun=-8.14703933741389720e-003
 command: var/16, fun=-8.14703933741389720e-003
 command: var/17, fun=-8.14703933741389720e-003
 command: var/18, fun=8.14703933741389720e-003
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.00000E-02  1.00000E-04         1385          509       2           11.97 
   5.50000E-02  1.00000E-04         1506          559       3           12.72 

  End Simulation
 command: var/13, fun=9.69560006973679830e-003
 command: var/14, fun=9.69560006973679830e-003
 command: var/15, fun=-9.69560006973679830e-003
 command: var/16, fun=-9.69560006973679830e-003
 command: var/17, fun=-9.69560006973679830e-003
 command: var/18, fun=9.69560006973679830e-003
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.50000E-02  1.00000E-04         1506          559       3           12.72 
   6.00000E-02  1.00000E-04         1631          609       2           13.47 

  End Simulation
 command: var/13, fun=1.13788001229686580e-002
 command: var/14, fun=1.13788001229686580e-002
 command: var/15, fun=-1.13788001229686580e-002
 command: var/16, fun=-1.13788001229686580e-002
 command: var/17, fun=-1.13788001229686580e-002
 command: var/18, fun=1.13788001229686580e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.00000E-02  1.00000E-04         1631          609       2           13.47 
   6.50000E-02  1.00000E-04         1760          659       2           14.23 

  End Simulation
 command: var/13, fun=1.31966349637135940e-002
 command: var/14, fun=1.31966349637135940e-002
 command: var/15, fun=-1.31966349637135940e-002
 command: var/16, fun=-1.31966349637135940e-002
 command: var/17, fun=-1.31966349637135940e-002
 command: var/18, fun=1.31966349637135940e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.50000E-02  1.00000E-04         1760          659       2           14.23 
   7.00000E-02  1.00000E-04         1890          709       3           14.98 

  End Simulation
 command: var/13, fun=1.51490996959935400e-002
 command: var/14, fun=1.51490996959935400e-002
 command: var/15, fun=-1.51490996959935400e-002
 command: var/16, fun=-1.51490996959935400e-002
 command: var/17, fun=-1.51490996959935400e-002
 command: var/18, fun=1.51490996959935400e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.00000E-02  1.00000E-04         1890          709       3           14.98 
   7.50000E-02  1.00000E-04         2017          759       2           15.75 

  End Simulation
 command: var/13, fun=1.72361890612315880e-002
 command: var/14, fun=1.72361890612315880e-002
 command: var/15, fun=-1.72361890612315880e-002
 command: var/16, fun=-1.72361890612315880e-002
 command: var/17, fun=-1.72361890612315880e-002
 command: var/18, fun=1.72361890612315880e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.50000E-02  1.00000E-04         2017          759       2           15.75 
   8.00000E-02  1.00000E-04         2139          809       2           16.52 

  End Simulation
 command: var/13, fun=1.94578974382353390e-002
 command: var/14, fun=1.94578974382353390e-002
 command: var/15, fun=-1.94578974382353390e-002
 command: var/16, fun=-1.94578974382353390e-002
 command: var/17, fun=-1.94578974382353390e-002
 command: var/18, fun=1.94578974382353390e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.00000E-02  1.00000E-04         2139          809       2           16.52 
   8.50000E-02  1.00000E-04         2265          859       2           17.27 

  End Simulation
 command: var/13, fun=2.18142188432690620e-002
 command: var/14, fun=2.18142188432690620e-002
 command: var/15, fun=-2.18142188432690620e-002
 command: var/16, fun=-2.18142188432690620e-002
 command: var/17, fun=-2.18142188432690620e-002
 command: var/18, fun=2.18142188432690620e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.50000E-02  1.00000E-04         2265          859       2           17.27 
   9.00000E-02  1.00000E-04         2394          909       2           18.03 

  End Simulation
 command: var/13, fun=2.43051469300203940e-002
 command: var/14, fun=2.43051469300203940e-002
 command: var/15, fun=-2.43051469300203940e-002
 command: var/16, fun=-2.43051469300203940e-002
 command: var/17, fun=-2.43051469300203940e-002
 command: var/18, fun=2.43051469300203940e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.00000E-02  1.00000E-04         2394          909       2           18.03 
   9.50000E-02  1.00000E-04         2527          959       3           18.80 

  End Simulation
 command: var/13, fun=2.69306749896502940e-002
 command: var/14, fun=2.69306749896502940e-002
 command: var/15, fun=-2.69306749896502940e-002
 command: var/16, fun=-2.69306749896502940e-002
 command: var/17, fun=-2.69306749896502940e-002
 command: var/18, fun=2.69306749896502940e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.50000E-02  1.00000E-04         2527          959       3           18.80 
   1.00000E-01  1.00000E-04         2654         1009       2           19.56 

  End Simulation
 command: var/13, fun=2.96907959508097010e-002
 command: var/14, fun=2.96907959508097010e-002
 command: var/15, fun=-2.96907959508097010e-002
 command: var/16, fun=-2.96907959508097010e-002
 command: var/17, fun=-2.96907959508097010e-002
 command: var/18, fun=2.96907959508097010e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.00000E-01  1.00000E-04         2654         1009       2           19.56 
   1.05000E-01  1.00000E-04         2778         1059       2           20.33 

  End Simulation
 command: var/13, fun=3.25855023796395300e-002
 command: var/14, fun=3.25855023796395300e-002
 command: var/15, fun=-3.25855023796395300e-002
 command: var/16, fun=-3.25855023796395300e-002
 command: var/17, fun=-3.25855023796395300e-002
 command: var/18, fun=3.25855023796395300e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.05000E-01  1.00000E-04         2778         1059       2           20.33 
   1.10000E-01  1.00000E-04         2907         1109       2           21.09 

  End Simulation
 command: var/13, fun=3.56147864797984330e-002
 command: var/14, fun=3.56147864797984330e-002
 command: var/15, fun=-3.56147864797984330e-002
 command: var/16, fun=-3.56147864797984330e-002
 command: var/17, fun=-3.56147864797984330e-002
 command: var/18, fun=3.56147864797984330e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.10000E-01  1.00000E-04         2907         1109       2           21.09 
   1.15000E-01  1.00000E-04         3037         1159       3           21.88 

  End Simulation
 command: var/13, fun=3.87786400924905460e-002
 command: var/14, fun=3.87786400924905460e-002
 command: var/15, fun=-3.87786400924905460e-002
 command: var/16, fun=-3.87786400924905460e-002
 command: var/17, fun=-3.87786400924905460e-002
 command: var/18, fun=3.87786400924905460e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.15000E-01  1.00000E-04         3037         1159       3           21.88 
   1.20000E-01  1.00000E-04         3161         1209       2           22.63 

  End Simulation
 command: var/13, fun=4.20770546964932550e-002
 command: var/14, fun=4.20770546964932550e-002
 command: var/15, fun=-4.20770546964932550e-002
 command: var/16, fun=-4.20770546964932550e-002
 command: var/17, fun=-4.20770546964932550e-002
 command: var/18, fun=4.20770546964932550e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.20000E-01  1.00000E-04         3161         1209       2           22.63 
   1.25000E-01  1.00000E-04         3296         1259       2           23.41 

  End Simulation
 command: var/13, fun=4.55100214081349820e-002
 command: var/14, fun=4.55100214081349820e-002
 command: var/15, fun=-4.55100214081349820e-002
 command: var/16, fun=-4.55100214081349820e-002
 command: var/17, fun=-4.55100214081349820e-002
 command: var/18, fun=4.55100214081349820e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.25000E-01  1.00000E-04         3296         1259       2           23.41 
   1.30000E-01  1.00000E-04         3419         1309       2           24.16 

  End Simulation
 command: var/13, fun=4.90775309813895610e-002
 command: var/14, fun=4.90775309813895610e-002
 command: var/15, fun=-4.90775309813895610e-002
 command: var/16, fun=-4.90775309813895610e-002
 command: var/17, fun=-4.90775309813895610e-002
 command: var/18, fun=4.90775309813895610e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.30000E-01  1.00000E-04         3419         1309       2           24.16 
   1.35000E-01  1.00000E-04         3549         1359       2           24.94 

  End Simulation
 command: var/13, fun=5.27795738078484790e-002
 command: var/14, fun=5.27795738078484790e-002
 command: var/15, fun=-5.27795738078484790e-002
 command: var/16, fun=-5.27795738078484790e-002
 command: var/17, fun=-5.27795738078484790e-002
 command: var/18, fun=5.27795738078484790e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.35000E-01  1.00000E-04         3549         1359       2           24.94 
   1.40000E-01  1.00000E-04         3675         1409       2           25.69 

  End Simulation
 command: var/13, fun=5.66161399167819380e-002
 command: var/14, fun=5.66161399167819380e-002
 command: var/15, fun=-5.66161399167819380e-002
 command: var/16, fun=-5.66161399167819380e-002
 command: var/17, fun=-5.66161399167819380e-002
 command: var/18, fun=5.66161399167819380e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.40000E-01  1.00000E-04         3675         1409       2           25.69 
   1.45000E-01  1.00000E-04         3809         1459       2           26.45 

  End Simulation
 command: var/13, fun=6.05872189751166520e-002
 command: var/14, fun=6.05872189751166520e-002
 command: var/15, fun=-6.05872189751166520e-002
 command: var/16, fun=-6.05872189751166520e-002
 command: var/17, fun=-6.05872189751166520e-002
 command: var/18, fun=6.05872189751166520e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.45000E-01  1.00000E-04         3809         1459       2           26.45 
   1.50000E-01  1.00000E-04         3936         1509       2           27.20 

  End Simulation
 command: var/13, fun=6.46928002875080120e-002
 command: var/14, fun=6.46928002875080120e-002
 command: var/15, fun=-6.46928002875080120e-002
 command: var/16, fun=-6.46928002875080120e-002
 command: var/17, fun=-6.46928002875080120e-002
 command: var/18, fun=6.46928002875080120e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.50000E-01  1.00000E-04         3936         1509       2           27.20 
   1.55000E-01  1.00000E-04         4064         1559       2           28.00 

  End Simulation
 command: var/13, fun=6.89328727963789410e-002
 command: var/14, fun=6.89328727963789410e-002
 command: var/15, fun=-6.89328727963789410e-002
 command: var/16, fun=-6.89328727963789410e-002
 command: var/17, fun=-6.89328727963789410e-002
 command: var/18, fun=6.89328727963789410e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.55000E-01  1.00000E-04         4064         1559       2           28.00 
   1.60000E-01  1.00000E-04         4194         1609       2           28.78 

  End Simulation
 command: var/13, fun=7.33074250818865900e-002
 command: var/14, fun=7.33074250818865900e-002
 command: var/15, fun=-7.33074250818865900e-002
 command: var/16, fun=-7.33074250818865900e-002
 command: var/17, fun=-7.33074250818865900e-002
 command: var/18, fun=7.33074250818865900e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.60000E-01  1.00000E-04         4194         1609       2           28.78 
   1.65000E-01  1.00000E-04         4321         1659       2           29.55 

  End Simulation
 command: var/13, fun=7.78164453620167060e-002
 command: var/14, fun=7.78164453620167060e-002
 command: var/15, fun=-7.78164453620167060e-002
 command: var/16, fun=-7.78164453620167060e-002
 command: var/17, fun=-7.78164453620167060e-002
 command: var/18, fun=7.78164453620167060e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.65000E-01  1.00000E-04         4321         1659       2           29.55 
   1.70000E-01  1.00000E-04         4449         1709       2           30.33 

  End Simulation
 command: var/13, fun=8.24599214925891830e-002
 command: var/14, fun=8.24599214925891830e-002
 command: var/15, fun=-8.24599214925891830e-002
 command: var/16, fun=-8.24599214925891830e-002
 command: var/17, fun=-8.24599214925891830e-002
 command: var/18, fun=8.24599214925891830e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.70000E-01  1.00000E-04         4449         1709       2           30.33 
   1.75000E-01  1.00000E-04         4589         1759       2           31.13 

  End Simulation
 command: var/13, fun=8.72378409672747160e-002
 command: var/14, fun=8.72378409672747160e-002
 command: var/15, fun=-8.72378409672747160e-002
 command: var/16, fun=-8.72378409672747160e-002
 command: var/17, fun=-8.72378409672747160e-002
 command: var/18, fun=8.72378409672747160e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.75000E-01  1.00000E-04         4589         1759       2           31.13 
   1.80000E-01  1.00000E-04         4731         1809       2           31.92 

  End Simulation
 command: var/13, fun=9.21501909176836160e-002
 command: var/14, fun=9.21501909176836160e-002
 command: var/15, fun=-9.21501909176836160e-002
 command: var/16, fun=-9.21501909176836160e-002
 command: var/17, fun=-9.21501909176836160e-002
 command: var/18, fun=9.21501909176836160e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.80000E-01  1.00000E-04         4731         1809       2           31.92 
   1.85000E-01  1.00000E-04         4868         1859       2           32.70 

  End Simulation
 command: var/13, fun=9.71322909692761830e-002
 command: var/14, fun=9.54983557521239120e-002
 command: var/15, fun=-9.71969581133269590e-002
 command: var/16, fun=-9.71969581133269590e-002
 command: var/17, fun=-9.71969581133269590e-002
 command: var/18, fun=9.71969581133269590e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.85000E-01  1.00000E-04         4868         1859       2           32.70 
   1.90000E-01  1.00000E-04         5011         1909       2           33.48 

  End Simulation
 command: var/13, fun=1.02378128961716500e-001
 command: var/14, fun=1.01340904269766180e-001
 command: var/15, fun=-1.02378128961716500e-001
 command: var/16, fun=-1.02378128961716500e-001
 command: var/17, fun=-1.02378128961716500e-001
 command: var/18, fun=1.02378128961716500e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.90000E-01  1.00000E-04         5011         1909       2           33.48 
   1.95000E-01  1.00000E-04         5151         1959       2           34.30 

  End Simulation
 command: var/13, fun=1.07693689508336910e-001
 command: var/14, fun=1.07693689508336910e-001
 command: var/15, fun=-1.07693689508336910e-001
 command: var/16, fun=-1.07693689508336910e-001
 command: var/17, fun=-1.07693689508336910e-001
 command: var/18, fun=1.07693689508336910e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.95000E-01  1.00000E-04         5151         1959       2           34.30 
   2.00000E-01  1.00000E-04         5289         2009       2           35.09 

  End Simulation
 command: var/13, fun=1.13143625436767930e-001
 command: var/14, fun=1.13143625436767930e-001
 command: var/15, fun=-1.13143625436767930e-001
 command: var/16, fun=-1.13143625436767930e-001
 command: var/17, fun=-1.13143625436767930e-001
 command: var/18, fun=1.13143625436767930e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.00000E-01  1.00000E-04         5289         2009       2           35.09 
   2.05000E-01  1.00000E-04         5425         2059       2           35.89 

  End Simulation
 command: var/13, fun=1.18727922068623260e-001
 command: var/14, fun=1.17514257776737390e-001
 command: var/15, fun=-1.18727922068623260e-001
 command: var/16, fun=-1.18727922068623260e-001
 command: var/17, fun=-1.18727922068623260e-001
 command: var/18, fun=1.18727922068623260e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.05000E-01  1.00000E-04         5425         2059       2           35.89 
   2.10000E-01  1.00000E-04         5565         2109       2           36.70 

  End Simulation
 command: var/13, fun=1.24446564363689390e-001
 command: var/14, fun=1.22418069044689670e-001
 command: var/15, fun=-1.24446564363689390e-001
 command: var/16, fun=-1.24446564363689390e-001
 command: var/17, fun=-1.24446564363689390e-001
 command: var/18, fun=1.24446564363689390e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.10000E-01  1.00000E-04         5565         2109       2           36.70 
   2.15000E-01  1.00000E-04         5700         2159       2           37.45 

  End Simulation
 command: var/13, fun=1.30299536919892270e-001
 command: var/14, fun=1.29663558064766840e-001
 command: var/15, fun=-1.30299536919892270e-001
 command: var/16, fun=-1.30299536919892270e-001
 command: var/17, fun=-1.30299536919892270e-001
 command: var/18, fun=1.30299536919892270e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.15000E-01  1.00000E-04         5700         2159       2           37.45 
   2.20000E-01  1.00000E-04         5837         2209       2           38.23 

  End Simulation
 command: var/13, fun=1.36286823973358340e-001
 command: var/14, fun=1.36286823973358340e-001
 command: var/15, fun=-1.36286823973358340e-001
 command: var/16, fun=-1.36286823973358340e-001
 command: var/17, fun=-1.36286823973358340e-001
 command: var/18, fun=1.36286823973358340e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.20000E-01  1.00000E-04         5837         2209       2           38.23 
   2.25000E-01  1.00000E-04         5971         2259       2           39.00 

  End Simulation
 command: var/13, fun=1.42408409398497860e-001
 command: var/14, fun=1.41354226931662610e-001
 command: var/15, fun=-1.42408409398497860e-001
 command: var/16, fun=-1.42408409398497860e-001
 command: var/17, fun=-1.42408409398497860e-001
 command: var/18, fun=1.42408409398497860e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.25000E-01  1.00000E-04         5971         2259       2           39.00 
   2.30000E-01  1.00000E-04         6101         2309       1           39.73 

  End Simulation
 command: var/13, fun=1.48664276707977110e-001
 command: var/14, fun=1.44197577555996490e-001
 command: var/15, fun=-1.48664276707977110e-001
 command: var/16, fun=-1.48664276707977110e-001
 command: var/17, fun=-1.48664276707977110e-001
 command: var/18, fun=1.48664276707977110e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.30000E-01  1.00000E-04         6101         2309       1           39.73 
   2.35000E-01  1.00000E-04         6224         2359       2           40.48 

  End Simulation
 command: var/13, fun=1.53912140821506140e-001
 command: var/14, fun=1.48490166925658420e-001
 command: var/15, fun=-1.55054409052807210e-001
 command: var/16, fun=-1.55054409052807210e-001
 command: var/17, fun=-1.55054409052807210e-001
 command: var/18, fun=1.55054409052807210e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.35000E-01  1.00000E-04         6224         2359       2           40.48 
   2.40000E-01  1.00000E-04         6341         2409       2           41.22 

  End Simulation
 command: var/13, fun=1.59727673059644190e-001
 command: var/14, fun=1.53607757317148460e-001
 command: var/15, fun=-1.61578789222410760e-001
 command: var/16, fun=-1.61578789222410760e-001
 command: var/17, fun=-1.61578789222410760e-001
 command: var/18, fun=1.61578789222410760e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.40000E-01  1.00000E-04         6341         2409       2           41.22 
   2.45000E-01  1.00000E-04         6469         2459       2           41.97 

  End Simulation
 command: var/13, fun=1.66446601249086530e-001
 command: var/14, fun=1.59914261731655210e-001
 command: var/15, fun=-1.68237399644599610e-001
 command: var/16, fun=-1.68237399644599610e-001
 command: var/17, fun=-1.68237399644599610e-001
 command: var/18, fun=1.68237399644599610e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.45000E-01  1.00000E-04         6469         2459       2           41.97 
   2.50000E-01  1.00000E-04         6575         2509       1           42.67 

  End Simulation
 command: var/13, fun=1.74171999079703710e-001
 command: var/14, fun=1.66981003421861400e-001
 command: var/15, fun=-1.75030222385691440e-001
 command: var/16, fun=-1.75030222385691440e-001
 command: var/17, fun=-1.75030222385691440e-001
 command: var/18, fun=1.75030222385691440e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.50000E-01  1.00000E-04         6575         2509       1           42.67 
   2.55000E-01  1.00000E-04         6678         2559       1           43.41 

  End Simulation
 command: var/13, fun=1.80328049676935780e-001
 command: var/14, fun=1.73116496841087290e-001
 command: var/15, fun=-1.81957239150509760e-001
 command: var/16, fun=-1.81957239150509760e-001
 command: var/17, fun=-1.81957239150509760e-001
 command: var/18, fun=1.81957239150509760e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.55000E-01  1.00000E-04         6678         2559       1           43.41 
   2.60000E-01  1.00000E-04         6784         2609       1           44.13 

  End Simulation
 command: var/13, fun=1.88482235097190920e-001
 command: var/14, fun=1.82244678443214350e-001
 command: var/15, fun=-1.89018431282467200e-001
 command: var/16, fun=-1.89018431282467200e-001
 command: var/17, fun=-1.89018431282467200e-001
 command: var/18, fun=1.89018431282467200e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.60000E-01  1.00000E-04         6784         2609       1           44.13 
   2.65000E-01  1.00000E-04         6888         2659       1           44.81 

  End Simulation
 command: var/13, fun=1.96213779763593220e-001
 command: var/14, fun=1.93299027263711980e-001
 command: var/15, fun=-1.96213779763593220e-001
 command: var/16, fun=-1.96213779763593220e-001
 command: var/17, fun=-1.96213779763593220e-001
 command: var/18, fun=1.96213779763593220e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.65000E-01  1.00000E-04         6888         2659       1           44.81 
   2.70000E-01  1.00000E-04         6992         2709       1           45.52 

  End Simulation
 command: var/13, fun=2.03543265214578550e-001
 command: var/14, fun=1.98770977301445300e-001
 command: var/15, fun=-2.03543265214578550e-001
 command: var/16, fun=-2.03543265214578550e-001
 command: var/17, fun=-2.03543265214578550e-001
 command: var/18, fun=2.03543265214578550e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.70000E-01  1.00000E-04         6992         2709       1           45.52 
   2.75000E-01  1.00000E-04         7099         2759       1           46.23 

  End Simulation
 command: var/13, fun=2.09605531379993220e-001
 command: var/14, fun=2.01814163825809080e-001
 command: var/15, fun=-2.11006867894869550e-001
 command: var/16, fun=-2.11006867894869550e-001
 command: var/17, fun=-2.11006867894869550e-001
 command: var/18, fun=2.11006867894869550e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.75000E-01  1.00000E-04         7099         2759       1           46.23 
   2.80000E-01  1.00000E-04         7207         2809       1           46.97 

  End Simulation
 command: var/13, fun=2.14016234947305430e-001
 command: var/14, fun=2.05159279440151220e-001
 command: var/15, fun=-2.18604567702690430e-001
 command: var/16, fun=-2.18604567702690430e-001
 command: var/17, fun=-2.18604567702690430e-001
 command: var/18, fun=2.18604567702690430e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.80000E-01  1.00000E-04         7207         2809       1           46.97 
   2.85000E-01  1.00000E-04         7315         2859       1           47.69 

  End Simulation
 command: var/13, fun=2.19744682224698760e-001
 command: var/14, fun=2.10529565603998960e-001
 command: var/15, fun=-2.26336344175065430e-001
 command: var/16, fun=-2.26336344175065430e-001
 command: var/17, fun=-2.26336344175065430e-001
 command: var/18, fun=2.26336344175065430e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.85000E-01  1.00000E-04         7315         2859       1           47.69 
   2.90000E-01  1.00000E-04         7419         2909       1           48.39 

  End Simulation
 command: var/13, fun=2.28459703641399110e-001
 command: var/14, fun=2.19130640503813280e-001
 command: var/15, fun=-2.34202176487957600e-001
 command: var/16, fun=-2.34202176487957600e-001
 command: var/17, fun=-2.34202176487957600e-001
 command: var/18, fun=2.34202176487957600e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.90000E-01  1.00000E-04         7419         2909       1           48.39 
   2.95000E-01  1.00000E-04         7525         2959       1           49.08 

  End Simulation
 command: var/13, fun=2.37517129474724090e-001
 command: var/14, fun=2.27525947597915830e-001
 command: var/15, fun=-2.42202043456241080e-001
 command: var/16, fun=-2.42202043456241080e-001
 command: var/17, fun=-2.42202043456241080e-001
 command: var/18, fun=2.42202043456241080e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.95000E-01  1.00000E-04         7525         2959       1           49.08 
   3.00000E-01  1.00000E-04         7630         3009       1           49.77 

  End Simulation
 command: var/13, fun=2.44290092641634290e-001
 command: var/14, fun=2.33113681522561120e-001
 command: var/15, fun=-2.50335923533784310e-001
 command: var/16, fun=-2.50335923533784310e-001
 command: var/17, fun=-2.50335923533784310e-001
 command: var/18, fun=2.50335923533784310e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.00000E-01  1.00000E-04         7630         3009       1           49.77 
   3.05000E-01  1.00000E-04         7740         3059       1           50.50 

  End Simulation
 command: var/13, fun=2.50159622958743670e-001
 command: var/14, fun=2.37640182674176050e-001
 command: var/15, fun=-2.58603794813588860e-001
 command: var/16, fun=-2.58603794813588860e-001
 command: var/17, fun=-2.58603794813588860e-001
 command: var/18, fun=2.58603794813588860e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.05000E-01  1.00000E-04         7740         3059       1           50.50 
   3.10000E-01  1.00000E-04         7848         3109       1           51.20 

  End Simulation
 command: var/13, fun=2.57142939361769680e-001
 command: var/14, fun=2.42369458580573150e-001
 command: var/15, fun=-2.67005635027672830e-001
 command: var/16, fun=-2.67005635027672830e-001
 command: var/17, fun=-2.67005635027672830e-001
 command: var/18, fun=2.67005635027672830e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.10000E-01  1.00000E-04         7848         3109       1           51.20 
   3.15000E-01  1.00000E-04         7958         3159       1           51.94 

  End Simulation
 command: var/13, fun=2.62175317091532630e-001
 command: var/14, fun=2.45287683005552590e-001
 command: var/15, fun=-2.75541421547326190e-001
 command: var/16, fun=-2.75541421547326190e-001
 command: var/17, fun=-2.75541421547326190e-001
 command: var/18, fun=2.75541421547326190e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.15000E-01  1.00000E-04         7958         3159       1           51.94 
   3.20000E-01  1.00000E-04         8064         3209       1           52.67 

  End Simulation
 command: var/13, fun=2.68739647728353960e-001
 command: var/14, fun=2.51972916392117220e-001
 command: var/15, fun=-2.84211131383010910e-001
 command: var/16, fun=-2.84211131383010910e-001
 command: var/17, fun=-2.84211131383010910e-001
 command: var/18, fun=2.84211131383010910e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.20000E-01  1.00000E-04         8064         3209       1           52.67 
   3.25000E-01  1.00000E-04         8168         3259       1           53.39 

  End Simulation
 command: var/13, fun=2.82874685179058170e-001
 command: var/14, fun=2.66415194015786340e-001
 command: var/15, fun=-2.93014741184538520e-001
 command: var/16, fun=-2.93014741184538520e-001
 command: var/17, fun=-2.93014741184538520e-001
 command: var/18, fun=2.93014741184538520e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.25000E-01  1.00000E-04         8168         3259       1           53.39 
   3.30000E-01  1.00000E-04         8272         3309       1           54.08 

  End Simulation
 command: var/13, fun=2.95274626447905310e-001
 command: var/14, fun=2.77069176555203020e-001
 command: var/15, fun=-3.01952227241075730e-001
 command: var/16, fun=-3.01952227241075730e-001
 command: var/17, fun=-3.01952227241075730e-001
 command: var/18, fun=3.01952227241075730e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.30000E-01  1.00000E-04         8272         3309       1           54.08 
   3.35000E-01  1.00000E-04         8383         3359       2           54.80 

  End Simulation
 command: var/13, fun=2.99300705480305180e-001
 command: var/14, fun=2.80237588947478020e-001
 command: var/15, fun=-3.11023565481188810e-001
 command: var/16, fun=-3.11023565481188810e-001
 command: var/17, fun=-3.11023565481188810e-001
 command: var/18, fun=3.11023565481188810e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.35000E-01  1.00000E-04         8383         3359       2           54.80 
   3.40000E-01  1.00000E-04         8489         3409       1           55.50 

  End Simulation
 command: var/13, fun=3.08192997673358670e-001
 command: var/14, fun=2.89190547651436040e-001
 command: var/15, fun=-3.20228731472987920e-001
 command: var/16, fun=-3.20228731472987920e-001
 command: var/17, fun=-3.20228731472987920e-001
 command: var/18, fun=3.20228731472987920e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.40000E-01  1.00000E-04         8489         3409       1           55.50 
   3.45000E-01  1.00000E-04         8595         3459       1           56.20 

  End Simulation
 command: var/13, fun=3.19217533004975850e-001
 command: var/14, fun=3.00782907065350660e-001
 command: var/15, fun=-3.29567700424110430e-001
 command: var/16, fun=-3.29567700424110430e-001
 command: var/17, fun=-3.29567700424110430e-001
 command: var/18, fun=3.29567700424110430e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.45000E-01  1.00000E-04         8595         3459       1           56.20 
   3.50000E-01  1.00000E-04         8702         3509       1           56.89 

  End Simulation
 command: var/13, fun=3.30737865605859770e-001
 command: var/14, fun=3.12491246990641070e-001
 command: var/15, fun=-3.39040447181832020e-001
 command: var/16, fun=-3.39040447181832020e-001
 command: var/17, fun=-3.39040447181832020e-001
 command: var/18, fun=3.39040447181832020e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.50000E-01  1.00000E-04         8702         3509       1           56.89 
   3.55000E-01  1.00000E-04         8819         3559       2           57.63 

  End Simulation
 command: var/13, fun=3.39668120852853810e-001
 command: var/14, fun=3.21007338606946910e-001
 command: var/15, fun=-3.48646946233116540e-001
 command: var/16, fun=-3.48646946233116540e-001
 command: var/17, fun=-3.48646946233116540e-001
 command: var/18, fun=3.48646946233116540e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.55000E-01  1.00000E-04         8819         3559       2           57.63 
   3.60000E-01  1.00000E-04         8923         3609       1           58.33 

  End Simulation
 command: var/13, fun=3.46241450087235720e-001
 command: var/14, fun=3.28725819878279260e-001
 command: var/15, fun=-3.58387171704704910e-001
 command: var/16, fun=-3.58387171704704910e-001
 command: var/17, fun=-3.58387171704704910e-001
 command: var/18, fun=3.58387171704704910e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.60000E-01  1.00000E-04         8923         3609       1           58.33 
   3.65000E-01  1.00000E-04         9036         3659       2           59.06 

  End Simulation
 command: var/13, fun=3.58781425923908210e-001
 command: var/14, fun=3.41492956757087570e-001
 command: var/15, fun=-3.68261097363159480e-001
 command: var/16, fun=-3.68261097363159480e-001
 command: var/17, fun=-3.68261097363159480e-001
 command: var/18, fun=3.68261097363159480e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.65000E-01  1.00000E-04         9036         3659       2           59.06 
   3.70000E-01  1.00000E-04         9167         3709       2           59.83 

  End Simulation
 command: var/13, fun=3.67919469485094190e-001
 command: var/14, fun=3.47837441434772240e-001
 command: var/15, fun=-3.78268696614958430e-001
 command: var/16, fun=-3.78268696614958430e-001
 command: var/17, fun=-3.78268696614958430e-001
 command: var/18, fun=3.78268696614958430e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.70000E-01  1.00000E-04         9167         3709       2           59.83 
   3.75000E-01  1.00000E-04         9272         3759       1            1:00 

  End Simulation
 command: var/13, fun=3.68919742100691780e-001
 command: var/14, fun=3.46050247136543420e-001
 command: var/15, fun=-3.88409942506534600e-001
 command: var/16, fun=-3.88409942506534600e-001
 command: var/17, fun=-3.88409942506534600e-001
 command: var/18, fun=3.88409942506534600e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.75000E-01  1.00000E-04         9272         3759       1            1:00 
   3.80000E-01  1.00000E-04         9381         3809       2            1:01 

  End Simulation
 command: var/13, fun=3.74237926675434260e-001
 command: var/14, fun=3.50486973954330710e-001
 command: var/15, fun=-3.98684807724386530e-001
 command: var/16, fun=-3.98684807724386530e-001
 command: var/17, fun=-3.98684807724386530e-001
 command: var/18, fun=3.98684807724386530e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.80000E-01  1.00000E-04         9381         3809       2            1:01 
   3.85000E-01  1.00000E-04         9486         3859       2            1:01 

  End Simulation
 command: var/13, fun=3.88590903160785760e-001
 command: var/14, fun=3.61391978611538320e-001
 command: var/15, fun=-4.09093264595133950e-001
 command: var/16, fun=-4.09093264595133950e-001
 command: var/17, fun=-4.09093264595133950e-001
 command: var/18, fun=4.09093264595133950e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.85000E-01  1.00000E-04         9486         3859       2            1:01 
   3.90000E-01  1.00000E-04         9592         3909       1            1:02 

  End Simulation
 command: var/13, fun=3.93515465390124050e-001
 command: var/14, fun=3.63705797761175450e-001
 command: var/15, fun=-4.19635285085578900e-001
 command: var/16, fun=-4.19635285085578900e-001
 command: var/17, fun=-4.19635285085578900e-001
 command: var/18, fun=4.19635285085578900e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.90000E-01  1.00000E-04         9592         3909       1            1:02 
   3.95000E-01  1.00000E-04         9693         3959       1            1:03 

  End Simulation
 command: var/13, fun=4.03974249230698860e-001
 command: var/14, fun=3.72949472553096180e-001
 command: var/15, fun=-4.30310840802811120e-001
 command: var/16, fun=-4.30310840802811120e-001
 command: var/17, fun=-4.30310840802811120e-001
 command: var/18, fun=4.30310840802811120e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.95000E-01  1.00000E-04         9693         3959       1            1:03 
   4.00000E-01  1.00000E-04         9799         4009       1            1:04 

  End Simulation
 command: var/13, fun=4.18706652111187240e-001
 command: var/14, fun=3.85139009178491480e-001
 command: var/15, fun=-4.41119902994280280e-001
 command: var/16, fun=-4.41119902994280280e-001
 command: var/17, fun=-4.41119902994280280e-001
 command: var/18, fun=4.41119902994280280e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.00000E-01  1.00000E-04         9799         4009       1            1:04 
   4.05000E-01  1.00000E-04         9910         4059       1            1:04 

  End Simulation
 command: var/13, fun=4.28241517203728330e-001
 command: var/14, fun=3.92369855996437810e-001
 command: var/15, fun=-4.52062442547834790e-001
 command: var/16, fun=-4.52062442547834790e-001
 command: var/17, fun=-4.52062442547834790e-001
 command: var/18, fun=4.52062442547834790e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.05000E-01  1.00000E-04         9910         4059       1            1:04 
   4.10000E-01  1.00000E-04        10017         4109       1            1:05 

  End Simulation
 command: var/13, fun=4.39136129837218780e-001
 command: var/14, fun=4.01651408341147760e-001
 command: var/15, fun=-4.63138429991821750e-001
 command: var/16, fun=-4.63138429991821750e-001
 command: var/17, fun=-4.63138429991821750e-001
 command: var/18, fun=4.63138429991821750e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.10000E-01  1.00000E-04        10017         4109       1            1:05 
   4.15000E-01  1.00000E-04        10122         4159       1            1:06 

  End Simulation
 command: var/13, fun=4.51248666545128850e-001
 command: var/14, fun=4.14433932784752380e-001
 command: var/15, fun=-4.74347835495203540e-001
 command: var/16, fun=-4.74347835495203540e-001
 command: var/17, fun=-4.74347835495203540e-001
 command: var/18, fun=4.74347835495203540e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.15000E-01  1.00000E-04        10122         4159       1            1:06 
   4.20000E-01  1.00000E-04        10228         4209       1            1:06 

  End Simulation
 command: var/13, fun=4.69466107135812220e-001
 command: var/14, fun=4.32356652219236250e-001
 command: var/15, fun=-4.85690628867591070e-001
 command: var/16, fun=-4.85690628867591070e-001
 command: var/17, fun=-4.85690628867591070e-001
 command: var/18, fun=4.85690628867591070e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.20000E-01  1.00000E-04        10228         4209       1            1:06 
   4.25000E-01  1.00000E-04        10337         4259       1            1:07 

  End Simulation
 command: var/13, fun=4.81761670196398870e-001
 command: var/14, fun=4.42784337595461710e-001
 command: var/15, fun=-4.97166779559349290e-001
 command: var/16, fun=-4.97166779559349290e-001
 command: var/17, fun=-4.97166779559349290e-001
 command: var/18, fun=4.97166779559349290e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.25000E-01  1.00000E-04        10337         4259       1            1:07 
   4.30000E-01  1.00000E-04        10443         4309       1            1:08 

  End Simulation
 command: var/13, fun=4.88543561234521690e-001
 command: var/14, fun=4.50191408459967630e-001
 command: var/15, fun=-5.08776256661636060e-001
 command: var/16, fun=-5.08776256661636060e-001
 command: var/17, fun=-5.08776256661636060e-001
 command: var/18, fun=5.08776256661636060e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.30000E-01  1.00000E-04        10443         4309       1            1:08 
   4.35000E-01  1.00000E-04        10549         4359       1            1:08 

  End Simulation
 command: var/13, fun=5.05991239506466180e-001
 command: var/14, fun=4.64666567586533130e-001
 command: var/15, fun=-5.20519028906563100e-001
 command: var/16, fun=-5.20519028906563100e-001
 command: var/17, fun=-5.20519028906563100e-001
 command: var/18, fun=5.20519028906563100e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.35000E-01  1.00000E-04        10549         4359       1            1:08 
   4.40000E-01  1.00000E-04        10657         4409       1            1:09 

  End Simulation
 command: var/13, fun=5.11771379276970690e-001
 command: var/14, fun=4.64279023542883700e-001
 command: var/15, fun=-5.32395064667229300e-001
 command: var/16, fun=-5.32395064667229300e-001
 command: var/17, fun=-5.32395064667229300e-001
 command: var/18, fun=5.32395064667229300e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.40000E-01  1.00000E-04        10657         4409       1            1:09 
   4.45000E-01  1.00000E-04        10762         4459       1            1:10 

  End Simulation
 command: var/13, fun=5.12133222277940230e-001
 command: var/14, fun=4.61773816299685110e-001
 command: var/15, fun=-5.44404331957776270e-001
 command: var/16, fun=-5.44404331957776270e-001
 command: var/17, fun=-5.44404331957776270e-001
 command: var/18, fun=5.44404331957776270e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.45000E-01  1.00000E-04        10762         4459       1            1:10 
   4.50000E-01  1.00000E-04        10871         4509       1            1:11 

  End Simulation
 command: var/13, fun=5.26309584969028350e-001
 command: var/14, fun=4.76375142674875680e-001
 command: var/15, fun=-5.56546798433565910e-001
 command: var/16, fun=-5.56546798433565910e-001
 command: var/17, fun=-5.56546798433565910e-001
 command: var/18, fun=5.56546798433565910e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.50000E-01  1.00000E-04        10871         4509       1            1:11 
   4.55000E-01  1.00000E-04        10977         4559       1            1:11 

  End Simulation
 command: var/13, fun=5.47992459578488740e-001
 command: var/14, fun=4.99074158125040020e-001
 command: var/15, fun=-5.68822431391174940e-001
 command: var/16, fun=-5.68822431391174940e-001
 command: var/17, fun=-5.68822431391174940e-001
 command: var/18, fun=5.68822431391174940e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.55000E-01  1.00000E-04        10977         4559       1            1:11 
   4.60000E-01  1.00000E-04        11101         4609       2            1:12 

  End Simulation
 command: var/13, fun=5.66606107726483450e-001
 command: var/14, fun=5.17587988148204280e-001
 command: var/15, fun=-5.81231197768539150e-001
 command: var/16, fun=-5.81231197768539150e-001
 command: var/17, fun=-5.81231197768539150e-001
 command: var/18, fun=5.81231197768539150e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.60000E-01  1.00000E-04        11101         4609       2            1:12 
   4.65000E-01  1.00000E-04        11205         4659       1            1:13 

  End Simulation
 command: var/13, fun=5.79332945950917220e-001
 command: var/14, fun=5.29359870402412390e-001
 command: var/15, fun=-5.93773064145008970e-001
 command: var/16, fun=-5.93773064145008970e-001
 command: var/17, fun=-5.93773064145008970e-001
 command: var/18, fun=5.93773064145008970e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.65000E-01  1.00000E-04        11205         4659       1            1:13 
   4.70000E-01  1.00000E-04        11314         4709       1            1:13 

  End Simulation
 command: var/13, fun=5.89154150675401560e-001
 command: var/14, fun=5.39126129178251420e-001
 command: var/15, fun=-6.06447996741499300e-001
 command: var/16, fun=-6.06447996741499300e-001
 command: var/17, fun=-6.06447996741499300e-001
 command: var/18, fun=6.06447996741499300e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.70000E-01  1.00000E-04        11314         4709       1            1:13 
   4.75000E-01  1.00000E-04        11432         4759       1            1:14 

  End Simulation
 command: var/13, fun=6.02166079177713360e-001
 command: var/14, fun=5.53225005049161610e-001
 command: var/15, fun=-6.19255961420472900e-001
 command: var/16, fun=-6.19255961420472900e-001
 command: var/17, fun=-6.19255961420472900e-001
 command: var/18, fun=6.19255961420472900e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.75000E-01  1.00000E-04        11432         4759       1            1:14 
   4.80000E-01  1.00000E-04        11544         4809       2            1:15 

  End Simulation
 command: var/13, fun=6.17741840357495580e-001
 command: var/14, fun=5.69331391698587150e-001
 command: var/15, fun=-6.32196923686118020e-001
 command: var/16, fun=-6.32196923686118020e-001
 command: var/17, fun=-6.32196923686118020e-001
 command: var/18, fun=6.32196923686118020e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.80000E-01  1.00000E-04        11544         4809       2            1:15 
   4.85000E-01  1.00000E-04        11673         4859       2            1:16 

  End Simulation
 command: var/13, fun=6.29919624829716530e-001
 command: var/14, fun=5.82192774151051080e-001
 command: var/15, fun=-6.45270848684464940e-001
 command: var/16, fun=-6.45270848684464940e-001
 command: var/17, fun=-6.45270848684464940e-001
 command: var/18, fun=6.45270848684464940e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.85000E-01  1.00000E-04        11673         4859       2            1:16 
   4.90000E-01  1.00000E-04        11795         4909       2            1:16 

  End Simulation
 command: var/13, fun=6.43859891653604910e-001
 command: var/14, fun=5.93921223732129300e-001
 command: var/15, fun=-6.58477701203374900e-001
 command: var/16, fun=-6.58477701203374900e-001
 command: var/17, fun=-6.58477701203374900e-001
 command: var/18, fun=6.58477701203374900e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.90000E-01  1.00000E-04        11795         4909       2            1:16 
   4.95000E-01  1.00000E-04        11925         4959       2            1:17 

  End Simulation
 command: var/13, fun=6.49092207543729760e-001
 command: var/14, fun=5.97547551072265430e-001
 command: var/15, fun=-6.71817445672723280e-001
 command: var/16, fun=-6.71817445672723280e-001
 command: var/17, fun=-6.71817445672723280e-001
 command: var/18, fun=6.71817445672723280e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   4.95000E-01  1.00000E-04        11925         4959       2            1:17 
   5.00000E-01  1.00000E-04        12044         5009       1            1:18 

  End Simulation
 command: var/13, fun=6.60483353210477020e-001
 command: var/14, fun=6.07617043878574740e-001
 command: var/15, fun=-6.85290046164455100e-001
 command: var/16, fun=-6.85290046164455100e-001
 command: var/17, fun=-6.85290046164455100e-001
 command: var/18, fun=6.85290046164455100e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.00000E-01  1.00000E-04        12044         5009       1            1:18 
   5.05000E-01  1.00000E-04        12151         5059       1            1:19 

  End Simulation
 command: var/13, fun=6.75345763468790270e-001
 command: var/14, fun=6.16058383974434800e-001
 command: var/15, fun=-6.98895466392707170e-001
 command: var/16, fun=-6.98895466392707170e-001
 command: var/17, fun=-6.98895466392707170e-001
 command: var/18, fun=6.98895466392707170e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.05000E-01  1.00000E-04        12151         5059       1            1:19 
   5.10000E-01  1.00000E-04        12267         5109       2            1:19 

  End Simulation
 command: var/13, fun=6.75782870467164450e-001
 command: var/14, fun=6.13347890300702250e-001
 command: var/15, fun=-7.12633669713880200e-001
 command: var/16, fun=-7.12633669713880200e-001
 command: var/17, fun=-7.12633669713880200e-001
 command: var/18, fun=7.12633669713880200e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.10000E-01  1.00000E-04        12267         5109       2            1:19 
   5.15000E-01  1.00000E-04        12390         5159       2            1:20 

  End Simulation
 command: var/13, fun=6.91740626422059470e-001
 command: var/14, fun=6.28104022608913630e-001
 command: var/15, fun=-7.26504619126749910e-001
 command: var/16, fun=-7.26504619126749910e-001
 command: var/17, fun=-7.26504619126749910e-001
 command: var/18, fun=7.26504619126749910e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.15000E-01  1.00000E-04        12390         5159       2            1:20 
   5.20000E-01  1.00000E-04        12510         5209       2            1:21 

  End Simulation
 command: var/13, fun=7.11029132863690960e-001
 command: var/14, fun=6.45974677180666480e-001
 command: var/15, fun=-7.40508277272566850e-001
 command: var/16, fun=-7.40508277272566850e-001
 command: var/17, fun=-7.40508277272566850e-001
 command: var/18, fun=7.40508277272566850e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.20000E-01  1.00000E-04        12510         5209       2            1:21 
   5.25000E-01  1.00000E-04        12638         5259       2            1:22 

  End Simulation
 command: var/13, fun=7.27241424855606500e-001
 command: var/14, fun=6.61779079721869890e-001
 command: var/15, fun=-7.54644606435150860e-001
 command: var/16, fun=-7.54644606435150860e-001
 command: var/17, fun=-7.54644606435150860e-001
 command: var/18, fun=7.54644606435150860e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.25000E-01  1.00000E-04        12638         5259       2            1:22 
   5.30000E-01  1.00000E-04        12758         5309       2            1:22 

  End Simulation
 command: var/13, fun=7.43776233222825600e-001
 command: var/14, fun=6.79521939458390570e-001
 command: var/15, fun=-7.68913568541024220e-001
 command: var/16, fun=-7.68913568541024220e-001
 command: var/17, fun=-7.68913568541024220e-001
 command: var/18, fun=7.68913568541024220e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.30000E-01  1.00000E-04        12758         5309       2            1:22 
   5.35000E-01  1.00000E-04        12882         5359       2            1:23 

  End Simulation
 command: var/13, fun=7.65179402645509880e-001
 command: var/14, fun=6.97676176889334920e-001
 command: var/15, fun=-7.83315125159450560e-001
 command: var/16, fun=-7.83315125159450560e-001
 command: var/17, fun=-7.83315125159450560e-001
 command: var/18, fun=7.83315125159450560e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.35000E-01  1.00000E-04        12882         5359       2            1:23 
   5.40000E-01  1.00000E-04        13010         5409       2            1:24 

  End Simulation
 command: var/13, fun=7.71833865256496670e-001
 command: var/14, fun=6.99143771354874930e-001
 command: var/15, fun=-7.97849237502595840e-001
 command: var/16, fun=-7.97849237502595840e-001
 command: var/17, fun=-7.97849237502595840e-001
 command: var/18, fun=7.97849237502595840e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.40000E-01  1.00000E-04        13010         5409       2            1:24 
   5.45000E-01  1.00000E-04        13132         5459       2            1:25 

  End Simulation
 command: var/13, fun=7.77656362731740440e-001
 command: var/14, fun=7.03033503218166490e-001
 command: var/15, fun=-8.12515866425600470e-001
 command: var/16, fun=-8.12515866425600470e-001
 command: var/17, fun=-8.12515866425600470e-001
 command: var/18, fun=8.12515866425600470e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.45000E-01  1.00000E-04        13132         5459       2            1:25 
   5.50000E-01  1.00000E-04        13263         5509       2            1:25 

  End Simulation
 command: var/13, fun=7.96025335886842660e-001
 command: var/14, fun=7.19484406655682250e-001
 command: var/15, fun=-8.27314972426729240e-001
 command: var/16, fun=-8.27314972426729240e-001
 command: var/17, fun=-8.27314972426729240e-001
 command: var/18, fun=8.27314972426729240e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.50000E-01  1.00000E-04        13263         5509       2            1:25 
   5.55000E-01  1.00000E-04        13390         5559       2            1:26 

  End Simulation
 command: var/13, fun=8.12692465778381280e-001
 command: var/14, fun=7.34292382815277530e-001
 command: var/15, fun=-8.42246515647399050e-001
 command: var/16, fun=-8.42246515647399050e-001
 command: var/17, fun=-8.42246515647399050e-001
 command: var/18, fun=8.42246515647399050e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.55000E-01  1.00000E-04        13390         5559       2            1:26 
   5.60000E-01  1.00000E-04        13522         5609       2            1:27 

  End Simulation
 command: var/13, fun=8.27665287203807050e-001
 command: var/14, fun=7.49702623130106380e-001
 command: var/15, fun=-8.57310455872362100e-001
 command: var/16, fun=-8.57310455872362100e-001
 command: var/17, fun=-8.57310455872362100e-001
 command: var/18, fun=8.57310455872362100e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.60000E-01  1.00000E-04        13522         5609       2            1:27 
   5.65000E-01  1.00000E-04        13655         5659       2            1:28 

  End Simulation
 command: var/13, fun=8.48413236842996630e-001
 command: var/14, fun=7.70468498274221480e-001
 command: var/15, fun=-8.72506752529783600e-001
 command: var/16, fun=-8.72506752529783600e-001
 command: var/17, fun=-8.72506752529783600e-001
 command: var/18, fun=8.72506752529783600e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.65000E-01  1.00000E-04        13655         5659       2            1:28 
   5.70000E-01  1.00000E-04        13787         5709       2            1:29 

  End Simulation
 command: var/13, fun=8.66484672306603980e-001
 command: var/14, fun=7.84087874490343340e-001
 command: var/15, fun=-8.87835364691341720e-001
 command: var/16, fun=-8.87835364691341720e-001
 command: var/17, fun=-8.87835364691341720e-001
 command: var/18, fun=8.87835364691341720e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.70000E-01  1.00000E-04        13787         5709       2            1:29 
   5.75000E-01  1.00000E-04        13915         5759       2            1:29 

  End Simulation
 command: var/13, fun=8.74443074898049070e-001
 command: var/14, fun=7.82692705113758210e-001
 command: var/15, fun=-9.03296251072349680e-001
 command: var/16, fun=-9.03296251072349680e-001
 command: var/17, fun=-9.03296251072349680e-001
 command: var/18, fun=9.03296251072349680e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.75000E-01  1.00000E-04        13915         5759       2            1:29 
   5.80000E-01  1.00000E-04        14049         5809       2            1:30 

  End Simulation
 command: var/13, fun=8.73923458005567140e-001
 command: var/14, fun=7.75577838158132970e-001
 command: var/15, fun=-9.18889370031850120e-001
 command: var/16, fun=-9.18889370031850120e-001
 command: var/17, fun=-9.18889370031850120e-001
 command: var/18, fun=9.18889370031850120e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.80000E-01  1.00000E-04        14049         5809       2            1:30 
   5.85000E-01  1.00000E-04        14180         5859       2            1:31 

  End Simulation
 command: var/13, fun=8.85533580218702990e-001
 command: var/14, fun=7.90798423868375400e-001
 command: var/15, fun=-9.34614679572798310e-001
 command: var/16, fun=-9.34614679572798310e-001
 command: var/17, fun=-9.34614679572798310e-001
 command: var/18, fun=9.34614679572798310e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.85000E-01  1.00000E-04        14180         5859       2            1:31 
   5.90000E-01  1.00000E-04        14317         5909       2            1:32 

  End Simulation
 command: var/13, fun=9.26382812872373900e-001
 command: var/14, fun=8.30564312564301300e-001
 command: var/15, fun=-9.50472137342056600e-001
 command: var/16, fun=-9.50472137342056600e-001
 command: var/17, fun=-9.50472137342056600e-001
 command: var/18, fun=9.50472137342056600e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.90000E-01  1.00000E-04        14317         5909       2            1:32 
   5.95000E-01  1.00000E-04        14454         5959       2            1:32 

  End Simulation
 command: var/13, fun=9.42935280311573360e-001
 command: var/14, fun=8.42052689767448850e-001
 command: var/15, fun=-9.66461700630610880e-001
 command: var/16, fun=-9.66461700630610880e-001
 command: var/17, fun=-9.66461700630610880e-001
 command: var/18, fun=9.66461700630610880e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.95000E-01  1.00000E-04        14454         5959       2            1:32 
   6.00000E-01  1.00000E-04        14576         6009       2            1:33 

  End Simulation
 command: var/13, fun=9.51582395640655050e-001
 command: var/14, fun=8.45011717194477980e-001
 command: var/15, fun=-9.82583326373609460e-001
 command: var/16, fun=-9.82583326373609460e-001
 command: var/17, fun=-9.82583326373609460e-001
 command: var/18, fun=9.82583326373609460e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.00000E-01  1.00000E-04        14576         6009       2            1:33 
   6.05000E-01  1.00000E-04        14704         6059       2            1:34 

  End Simulation
 command: var/13, fun=9.63231547667375290e-001
 command: var/14, fun=8.48713303030194650e-001
 command: var/15, fun=-9.98836971150551810e-001
 command: var/16, fun=-9.98836971150551810e-001
 command: var/17, fun=-9.98836971150551810e-001
 command: var/18, fun=9.98836971150551810e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.05000E-01  1.00000E-04        14704         6059       2            1:34 
   6.10000E-01  1.00000E-04        14832         6109       1            1:35 

  End Simulation
 command: var/13, fun=9.71710721871811960e-001
 command: var/14, fun=8.52890523869057500e-001
 command: var/15, fun=-1.01522259118536070e+000
 command: var/16, fun=-1.01522259118536070e+000
 command: var/17, fun=-1.01522259118536070e+000
 command: var/18, fun=1.01522259118536070e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.10000E-01  1.00000E-04        14832         6109       1            1:35 
   6.15000E-01  1.00000E-04        14937         6159       1            1:35 

  End Simulation
 command: var/13, fun=9.92307107739789250e-001
 command: var/14, fun=8.73259154591374040e-001
 command: var/15, fun=-1.03174014234649340e+000
 command: var/16, fun=-1.03174014234649340e+000
 command: var/17, fun=-1.03174014234649340e+000
 command: var/18, fun=1.03174014234649340e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.15000E-01  1.00000E-04        14937         6159       1            1:35 
   6.20000E-01  1.00000E-04        15062         6209       2            1:36 

  End Simulation
 command: var/13, fun=1.02329843234569770e+000
 command: var/14, fun=8.99269727237680510e-001
 command: var/15, fun=-1.04838958014709100e+000
 command: var/16, fun=-1.04838958014709100e+000
 command: var/17, fun=-1.04838958014709100e+000
 command: var/18, fun=1.04838958014709100e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.20000E-01  1.00000E-04        15062         6209       2            1:36 
   6.25000E-01  1.00000E-04        15192         6259       2            1:37 

  End Simulation
 command: var/13, fun=1.03431388006236060e+000
 command: var/14, fun=9.06675567973543430e-001
 command: var/15, fun=-1.06517085974508490e+000
 command: var/16, fun=-1.06517085974508490e+000
 command: var/17, fun=-1.06517085974508490e+000
 command: var/18, fun=1.06517085974508490e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.25000E-01  1.00000E-04        15192         6259       2            1:37 
   6.30000E-01  1.00000E-04        15320         6309       2            1:38 

  End Simulation
 command: var/13, fun=1.05069252426494140e+000
 command: var/14, fun=9.24234508006776640e-001
 command: var/15, fun=-1.08208393594328990e+000
 command: var/16, fun=-1.08208393594328990e+000
 command: var/17, fun=-1.08208393594328990e+000
 command: var/18, fun=1.08208393594328990e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.30000E-01  1.00000E-04        15320         6309       2            1:38 
   6.35000E-01  1.00000E-04        15449         6359       2            1:39 

  End Simulation
 command: var/13, fun=1.07968156116663620e+000
 command: var/14, fun=9.49264544466771780e-001
 command: var/15, fun=-1.09912876318958300e+000
 command: var/16, fun=-1.09912876318958300e+000
 command: var/17, fun=-1.09912876318958300e+000
 command: var/18, fun=1.09912876318958300e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.35000E-01  1.00000E-04        15449         6359       2            1:39 
   6.40000E-01  1.00000E-04        15576         6409       1            1:39 

  End Simulation
 command: var/13, fun=1.09031774731396780e+000
 command: var/14, fun=9.53924314774924120e-001
 command: var/15, fun=-1.11630529557698590e+000
 command: var/16, fun=-1.11630529557698590e+000
 command: var/17, fun=-1.11630529557698590e+000
 command: var/18, fun=1.11630529557698590e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.40000E-01  1.00000E-04        15576         6409       1            1:39 
   6.45000E-01  1.00000E-04        15698         6459       2            1:40 

  End Simulation
 command: var/13, fun=1.09687979286974140e+000
 command: var/14, fun=9.62105713100793850e-001
 command: var/15, fun=-1.13361348684378750e+000
 command: var/16, fun=-1.13361348684378750e+000
 command: var/17, fun=-1.13361348684378750e+000
 command: var/18, fun=1.13361348684378750e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.45000E-01  1.00000E-04        15698         6459       2            1:40 
   6.50000E-01  1.00000E-04        15822         6509       2            1:41 

  End Simulation
 command: var/13, fun=1.12692671455439400e+000
 command: var/14, fun=9.94346124918955470e-001
 command: var/15, fun=-1.15105329037369920e+000
 command: var/16, fun=-1.15105329037369920e+000
 command: var/17, fun=-1.15105329037369920e+000
 command: var/18, fun=1.15105329037369920e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.50000E-01  1.00000E-04        15822         6509       2            1:41 
   6.55000E-01  1.00000E-04        15935         6559       1            1:41 

  End Simulation
 command: var/13, fun=1.15164080928643480e+000
 command: var/14, fun=1.01763324509375490e+000
 command: var/15, fun=-1.16862465919593260e+000
 command: var/16, fun=-1.16862465919593260e+000
 command: var/17, fun=-1.16862465919593260e+000
 command: var/18, fun=1.16862465919593260e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.55000E-01  1.00000E-04        15935         6559       1            1:41 
   6.60000E-01  1.00000E-04        16062         6609       2            1:42 

  End Simulation
 command: var/13, fun=1.16406967221527060e+000
 command: var/14, fun=1.02868742232733720e+000
 command: var/15, fun=-1.18632754598536060e+000
 command: var/16, fun=-1.18632754598536060e+000
 command: var/17, fun=-1.18632754598536060e+000
 command: var/18, fun=1.18632754598536060e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.60000E-01  1.00000E-04        16062         6609       2            1:42 
   6.65000E-01  1.00000E-04        16193         6659       2            1:43 

  End Simulation
 command: var/13, fun=1.17943607735293070e+000
 command: var/14, fun=1.04104709791505750e+000
 command: var/15, fun=-1.20416190306265600e+000
 command: var/16, fun=-1.20416190306265600e+000
 command: var/17, fun=-1.20416190306265600e+000
 command: var/18, fun=1.20416190306265600e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.65000E-01  1.00000E-04        16193         6659       2            1:43 
   6.70000E-01  1.00000E-04        16325         6709       2            1:44 

  End Simulation
 command: var/13, fun=1.18979138546237430e+000
 command: var/14, fun=1.05276542869783380e+000
 command: var/15, fun=-1.22212768239440270e+000
 command: var/16, fun=-1.22212768239440270e+000
 command: var/17, fun=-1.22212768239440270e+000
 command: var/18, fun=1.22212768239440270e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.70000E-01  1.00000E-04        16325         6709       2            1:44 
   6.75000E-01  1.00000E-04        16459         6759       2            1:45 

  End Simulation
 command: var/13, fun=1.21455985217933700e+000
 command: var/14, fun=1.08031510201945900e+000
 command: var/15, fun=-1.24022483559320110e+000
 command: var/16, fun=-1.24022483559320110e+000
 command: var/17, fun=-1.24022483559320110e+000
 command: var/18, fun=1.24022483559320110e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.75000E-01  1.00000E-04        16459         6759       2            1:45 
   6.80000E-01  1.00000E-04        16599         6809       2            1:45 

  End Simulation
 command: var/13, fun=1.23723879773119560e+000
 command: var/14, fun=1.10633489260425040e+000
 command: var/15, fun=-1.25845331391782330e+000
 command: var/16, fun=-1.25845331391782330e+000
 command: var/17, fun=-1.25845331391782330e+000
 command: var/18, fun=1.25845331391782330e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.80000E-01  1.00000E-04        16599         6809       2            1:45 
   6.85000E-01  1.00000E-04        16731         6859       2            1:46 

  End Simulation
 command: var/13, fun=1.26121466008945380e+000
 command: var/14, fun=1.12889841886236920e+000
 command: var/15, fun=-1.27681306827334700e+000
 command: var/16, fun=-1.27681306827334700e+000
 command: var/17, fun=-1.27681306827334700e+000
 command: var/18, fun=1.27681306827334700e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.85000E-01  1.00000E-04        16731         6859       2            1:46 
   6.90000E-01  1.00000E-04        16868         6909       2            1:47 

  End Simulation
 command: var/13, fun=1.27256793437892180e+000
 command: var/14, fun=1.13114609544599310e+000
 command: var/15, fun=-1.29530404921129880e+000
 command: var/16, fun=-1.29530404921129880e+000
 command: var/17, fun=-1.29530404921129880e+000
 command: var/18, fun=1.29530404921129880e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.90000E-01  1.00000E-04        16868         6909       2            1:47 
   6.95000E-01  1.00000E-04        17006         6959       2            1:48 

  End Simulation
 command: var/13, fun=1.26900760340114130e+000
 command: var/14, fun=1.12220745871824760e+000
 command: var/15, fun=-1.31392620692975530e+000
 command: var/16, fun=-1.31392620692975530e+000
 command: var/17, fun=-1.31392620692975530e+000
 command: var/18, fun=1.31392620692975530e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.95000E-01  1.00000E-04        17006         6959       2            1:48 
   7.00000E-01  1.00000E-04        17144         7009       2            1:49 

  End Simulation
 command: var/13, fun=1.28624984002072670e+000
 command: var/14, fun=1.13598423930448190e+000
 command: var/15, fun=-1.33267949127350850e+000
 command: var/16, fun=-1.33267949127350850e+000
 command: var/17, fun=-1.33267949127350850e+000
 command: var/18, fun=1.33267949127350850e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.00000E-01  1.00000E-04        17144         7009       2            1:49 
   7.05000E-01  1.00000E-04        17287         7059       2            1:49 

  End Simulation
 command: var/13, fun=1.30982056588556590e+000
 command: var/14, fun=1.15305698664996960e+000
 command: var/15, fun=-1.35156385173414990e+000
 command: var/16, fun=-1.35156385173414990e+000
 command: var/17, fun=-1.35156385173414990e+000
 command: var/18, fun=1.35156385173414990e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.05000E-01  1.00000E-04        17287         7059       2            1:49 
   7.10000E-01  1.00000E-04        17433         7109       2            1:50 

  End Simulation
 command: var/13, fun=1.32510758545078540e+000
 command: var/14, fun=1.16156487555996970e+000
 command: var/15, fun=-1.37057923745029230e+000
 command: var/16, fun=-1.37057923745029230e+000
 command: var/17, fun=-1.37057923745029230e+000
 command: var/18, fun=1.37057923745029230e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.10000E-01  1.00000E-04        17433         7109       2            1:50 
   7.15000E-01  1.00000E-04        17566         7159       2            1:51 

  End Simulation
 command: var/13, fun=1.34293929539841070e+000
 command: var/14, fun=1.17273739862371200e+000
 command: var/15, fun=-1.38972559720761950e+000
 command: var/16, fun=-1.38972559720761950e+000
 command: var/17, fun=-1.38972559720761950e+000
 command: var/18, fun=1.38972559720761950e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.15000E-01  1.00000E-04        17566         7159       2            1:51 
   7.20000E-01  1.00000E-04        17706         7209       2            1:52 

  End Simulation
 command: var/13, fun=1.36150896399035860e+000
 command: var/14, fun=1.18723929247428410e+000
 command: var/15, fun=-1.40900287943906410e+000
 command: var/16, fun=-1.40900287943906410e+000
 command: var/17, fun=-1.40900287943906410e+000
 command: var/18, fun=1.40900287943906410e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.20000E-01  1.00000E-04        17706         7209       2            1:52 
   7.25000E-01  1.00000E-04        17847         7259       2            1:53 

  End Simulation
 command: var/13, fun=1.38801820561823930e+000
 command: var/14, fun=1.20961402361641280e+000
 command: var/15, fun=-1.42841103222497990e+000
 command: var/16, fun=-1.42841103222497990e+000
 command: var/17, fun=-1.42841103222497990e+000
 command: var/18, fun=1.42841103222497990e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.25000E-01  1.00000E-04        17847         7259       2            1:53 
   7.30000E-01  1.00000E-04        17985         7309       2            1:53 

  End Simulation
 command: var/13, fun=1.40859003953949590e+000
 command: var/14, fun=1.23063994838899400e+000
 command: var/15, fun=-1.44795000329321360e+000
 command: var/16, fun=-1.44795000329321360e+000
 command: var/17, fun=-1.44795000329321360e+000
 command: var/18, fun=1.44795000329321360e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.30000E-01  1.00000E-04        17985         7309       2            1:53 
   7.35000E-01  1.00000E-04        18121         7359       2            1:54 

  End Simulation
 command: var/13, fun=1.44175410172980430e+000
 command: var/14, fun=1.26260057228843170e+000
 command: var/15, fun=-1.46761974001926590e+000
 command: var/16, fun=-1.46761974001926590e+000
 command: var/17, fun=-1.46761974001926590e+000
 command: var/18, fun=1.46761974001926590e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.35000E-01  1.00000E-04        18121         7359       2            1:54 
   7.40000E-01  1.00000E-04        18254         7409       2            1:55 

  End Simulation
 command: var/13, fun=1.46623287425484670e+000
 command: var/14, fun=1.27691853818503900e+000
 command: var/15, fun=-1.48742018942646940e+000
 command: var/16, fun=-1.48742018942646940e+000
 command: var/17, fun=-1.48742018942646940e+000
 command: var/18, fun=1.48742018942646940e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.40000E-01  1.00000E-04        18254         7409       2            1:55 
   7.45000E-01  1.00000E-04        18378         7459       1            1:56 

  End Simulation
 command: var/13, fun=1.46749491610954810e+000
 command: var/14, fun=1.27141741604202260e+000
 command: var/15, fun=-1.50735129818611590e+000
 command: var/16, fun=-1.50735129818611590e+000
 command: var/17, fun=-1.50735129818611590e+000
 command: var/18, fun=1.50735129818611590e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.45000E-01  1.00000E-04        18378         7459       1            1:56 
   7.50000E-01  1.00000E-04        18489         7509       1            1:56 

  End Simulation
 command: var/13, fun=1.48669690811095730e+000
 command: var/14, fun=1.28778458633311320e+000
 command: var/15, fun=-1.52741301261757890e+000
 command: var/16, fun=-1.52741301261757890e+000
 command: var/17, fun=-1.52741301261757890e+000
 command: var/18, fun=1.52741301261757890e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.50000E-01  1.00000E-04        18489         7509       1            1:56 
   7.55000E-01  1.00000E-04        18603         7559       2            1:57 

  End Simulation
 command: var/13, fun=1.51942929901319830e+000
 command: var/14, fun=1.30852992357358480e+000
 command: var/15, fun=-1.54760527868845750e+000
 command: var/16, fun=-1.54760527868845750e+000
 command: var/17, fun=-1.54760527868845750e+000
 command: var/18, fun=1.54760527868845750e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.55000E-01  1.00000E-04        18603         7559       2            1:57 
   7.60000E-01  1.00000E-04        18711         7609       1            1:58 

  End Simulation
 command: var/13, fun=1.52391501061918280e+000
 command: var/14, fun=1.30341824035299720e+000
 command: var/15, fun=-1.56792804201473790e+000
 command: var/16, fun=-1.56792804201473790e+000
 command: var/17, fun=-1.56792804201473790e+000
 command: var/18, fun=1.56792804201473790e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.60000E-01  1.00000E-04        18711         7609       1            1:58 
   7.65000E-01  1.00000E-04        18815         7659       1            1:59 

  End Simulation
 command: var/13, fun=1.54381775219194450e+000
 command: var/14, fun=1.31962420446421640e+000
 command: var/15, fun=-1.58838124786097050e+000
 command: var/16, fun=-1.58838124786097050e+000
 command: var/17, fun=-1.58838124786097050e+000
 command: var/18, fun=1.58838124786097050e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.65000E-01  1.00000E-04        18815         7659       1            1:59 
   7.70000E-01  1.00000E-04        18926         7709       1            1:59 

  End Simulation
 command: var/13, fun=1.57895311677914310e+000
 command: var/14, fun=1.34686131462089630e+000
 command: var/15, fun=-1.60896484114033680e+000
 command: var/16, fun=-1.60896484114033680e+000
 command: var/17, fun=-1.60896484114033680e+000
 command: var/18, fun=1.60896484114033680e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.70000E-01  1.00000E-04        18926         7709       1            1:59 
   7.75000E-01  1.00000E-04        19033         7759       1            2:00 

  End Simulation
 command: var/13, fun=1.59588679193322580e+000
 command: var/14, fun=1.36104262259697300e+000
 command: var/15, fun=-1.62967876641487710e+000
 command: var/16, fun=-1.62967876641487710e+000
 command: var/17, fun=-1.62967876641487710e+000
 command: var/18, fun=1.62967876641487710e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.75000E-01  1.00000E-04        19033         7759       1            2:00 
   7.80000E-01  1.00000E-04        19142         7809       1            2:01 

  End Simulation
 command: var/13, fun=1.62874604775795380e+000
 command: var/14, fun=1.39182258323315300e+000
 command: var/15, fun=-1.65052296789559020e+000
 command: var/16, fun=-1.65052296789559020e+000
 command: var/17, fun=-1.65052296789559020e+000
 command: var/18, fun=1.65052296789559020e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.80000E-01  1.00000E-04        19142         7809       1            2:01 
   7.85000E-01  1.00000E-04        19244         7859       1            2:01 

  End Simulation
 command: var/13, fun=1.65937389753509730e+000
 command: var/14, fun=1.41181801690000540e+000
 command: var/15, fun=-1.67149738944261110e+000
 command: var/16, fun=-1.67149738944261110e+000
 command: var/17, fun=-1.67149738944261110e+000
 command: var/18, fun=1.67149738944261110e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.85000E-01  1.00000E-04        19244         7859       1            2:01 
   7.90000E-01  1.00000E-04        19351         7909       1            2:02 

  End Simulation
 command: var/13, fun=1.66684662004756250e+000
 command: var/14, fun=1.40873669884971280e+000
 command: var/15, fun=-1.69260197456533870e+000
 command: var/16, fun=-1.69260197456533870e+000
 command: var/17, fun=-1.69260197456533870e+000
 command: var/18, fun=1.69260197456533870e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.90000E-01  1.00000E-04        19351         7909       1            2:02 
   7.95000E-01  1.00000E-04        19461         7959       1            2:03 

  End Simulation
 command: var/13, fun=1.68245545341312820e+000
 command: var/14, fun=1.41757026898601750e+000
 command: var/15, fun=-1.71383666642262460e+000
 command: var/16, fun=-1.71383666642262460e+000
 command: var/17, fun=-1.71383666642262460e+000
 command: var/18, fun=1.71383666642262460e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.95000E-01  1.00000E-04        19461         7959       1            2:03 
   8.00000E-01  1.00000E-04        19569         8009       1            2:03 

  End Simulation
 command: var/13, fun=1.70616142076490780e+000
 command: var/14, fun=1.44402404007861950e+000
 command: var/15, fun=-1.73520140782287840e+000
 command: var/16, fun=-1.73520140782287840e+000
 command: var/17, fun=-1.73520140782287840e+000
 command: var/18, fun=1.73520140782287840e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.00000E-01  1.00000E-04        19569         8009       1            2:03 
   8.05000E-01  1.00000E-04        19678         8059       1            2:04 

  End Simulation
 command: var/13, fun=1.75002440715059590e+000
 command: var/14, fun=1.49538787762669310e+000
 command: var/15, fun=-1.75669614122427320e+000
 command: var/16, fun=-1.75669614122427320e+000
 command: var/17, fun=-1.75669614122427320e+000
 command: var/18, fun=1.75669614122427320e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.05000E-01  1.00000E-04        19678         8059       1            2:04 
   8.10000E-01  1.00000E-04        19785         8109       1            2:05 

  End Simulation
 command: var/13, fun=1.77832080873484010e+000
 command: var/14, fun=1.54485993520427760e+000
 command: var/15, fun=-1.77832080873484010e+000
 command: var/16, fun=-1.77832080873484010e+000
 command: var/17, fun=-1.77832080873484010e+000
 command: var/18, fun=1.77832080873484010e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.10000E-01  1.00000E-04        19785         8109       1            2:05 
   8.15000E-01  1.00000E-04        19897         8159       1            2:06 

  End Simulation
 command: var/13, fun=1.80007535211267890e+000
 command: var/14, fun=1.58986897216608840e+000
 command: var/15, fun=-1.80007535211267890e+000
 command: var/16, fun=-1.80007535211267890e+000
 command: var/17, fun=-1.80007535211267890e+000
 command: var/18, fun=1.80007535211267890e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.15000E-01  1.00000E-04        19897         8159       1            2:06 
   8.20000E-01  1.00000E-04        20006         8209       1            2:06 

  End Simulation
 command: var/13, fun=1.82195971276609140e+000
 command: var/14, fun=1.61409536043624870e+000
 command: var/15, fun=-1.82195971276609140e+000
 command: var/16, fun=-1.82195971276609140e+000
 command: var/17, fun=-1.82195971276609140e+000
 command: var/18, fun=1.82195971276609140e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.20000E-01  1.00000E-04        20006         8209       1            2:06 
   8.25000E-01  1.00000E-04        20114         8259       1            2:07 

  End Simulation
 command: var/13, fun=1.84397383175372580e+000
 command: var/14, fun=1.60705855397787570e+000
 command: var/15, fun=-1.84397383175372580e+000
 command: var/16, fun=-1.84397383175372580e+000
 command: var/17, fun=-1.84397383175372580e+000
 command: var/18, fun=1.84397383175372580e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.25000E-01  1.00000E-04        20114         8259       1            2:07 
   8.30000E-01  1.00000E-04        20224         8309       1            2:08 

  End Simulation
 command: var/13, fun=1.85207302973216410e+000
 command: var/14, fun=1.60899499722617190e+000
 command: var/15, fun=-1.86611764978478200e+000
 command: var/16, fun=-1.86611764978478200e+000
 command: var/17, fun=-1.86611764978478200e+000
 command: var/18, fun=1.86611764978478200e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.30000E-01  1.00000E-04        20224         8309       1            2:08 
   8.35000E-01  1.00000E-04        20331         8359       1            2:08 

  End Simulation
 command: var/13, fun=1.88564337303748200e+000
 command: var/14, fun=1.62909199541574630e+000
 command: var/15, fun=-1.88839110721912280e+000
 command: var/16, fun=-1.88839110721912280e+000
 command: var/17, fun=-1.88839110721912280e+000
 command: var/18, fun=1.88839110721912280e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.35000E-01  1.00000E-04        20331         8359       1            2:08 
   8.40000E-01  1.00000E-04        20441         8409       1            2:09 

  End Simulation
 command: var/13, fun=1.87679258836050660e+000
 command: var/14, fun=1.60842944188302670e+000
 command: var/15, fun=-1.91079414406743480e+000
 command: var/16, fun=-1.91079414406743480e+000
 command: var/17, fun=-1.91079414406743480e+000
 command: var/18, fun=1.91079414406743480e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.40000E-01  1.00000E-04        20441         8409       1            2:09 
   8.45000E-01  1.00000E-04        20551         8459       1            2:10 

  End Simulation
 command: var/13, fun=1.89065941920831900e+000
 command: var/14, fun=1.62036081386106150e+000
 command: var/15, fun=-1.93332669999144450e+000
 command: var/16, fun=-1.93332669999144450e+000
 command: var/17, fun=-1.93332669999144450e+000
 command: var/18, fun=1.93332669999144450e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.45000E-01  1.00000E-04        20551         8459       1            2:10 
   8.50000E-01  1.00000E-04        20657         8509       1            2:11 

  End Simulation
 command: var/13, fun=1.92965474681781600e+000
 command: var/14, fun=1.65458610558258280e+000
 command: var/15, fun=-1.95598871430401330e+000
 command: var/16, fun=-1.95598871430401330e+000
 command: var/17, fun=-1.95598871430401330e+000
 command: var/18, fun=1.95598871430401330e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.50000E-01  1.00000E-04        20657         8509       1            2:11 
   8.55000E-01  1.00000E-04        20771         8559       1            2:11 

  End Simulation
 command: var/13, fun=1.95586567843186270e+000
 command: var/14, fun=1.67534942714584020e+000
 command: var/15, fun=-1.97878012596933720e+000
 command: var/16, fun=-1.97878012596933720e+000
 command: var/17, fun=-1.97878012596933720e+000
 command: var/18, fun=1.97878012596933720e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.55000E-01  1.00000E-04        20771         8559       1            2:11 
   8.60000E-01  1.00000E-04        20881         8609       1            2:12 

  End Simulation
 command: var/13, fun=1.98143077090304760e+000
 command: var/14, fun=1.69068371031849240e+000
 command: var/15, fun=-2.00170087360311830e+000
 command: var/16, fun=-2.00170087360311830e+000
 command: var/17, fun=-2.00170087360311830e+000
 command: var/18, fun=2.00170087360311830e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.60000E-01  1.00000E-04        20881         8609       1            2:12 
   8.65000E-01  1.00000E-04        20988         8659       1            2:13 

  End Simulation
 command: var/13, fun=1.98834816287416640e+000
 command: var/14, fun=1.70240733713763030e+000
 command: var/15, fun=-2.02475089547269340e+000
 command: var/16, fun=-2.02475089547269340e+000
 command: var/17, fun=-2.02475089547269340e+000
 command: var/18, fun=2.02475089547269340e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.65000E-01  1.00000E-04        20988         8659       1            2:13 
   8.70000E-01  1.00000E-04        21102         8709       1            2:13 

  End Simulation
 command: var/13, fun=2.03651004441039470e+000
 command: var/14, fun=1.76593943207380490e+000
 command: var/15, fun=-2.04793012949724410e+000
 command: var/16, fun=-2.04793012949724410e+000
 command: var/17, fun=-2.04793012949724410e+000
 command: var/18, fun=2.04793012949724410e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.70000E-01  1.00000E-04        21102         8709       1            2:13 
   8.75000E-01  1.00000E-04        21212         8759       1            2:14 

  End Simulation
 command: var/13, fun=2.07123851324795800e+000
 command: var/14, fun=1.83313498841394340e+000
 command: var/15, fun=-2.07123851324795800e+000
 command: var/16, fun=-2.07123851324795800e+000
 command: var/17, fun=-2.07123851324795800e+000
 command: var/18, fun=2.07123851324795800e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.75000E-01  1.00000E-04        21212         8759       1            2:14 
   8.80000E-01  1.00000E-04        21322         8809       1            2:15 

  End Simulation
 command: var/13, fun=2.09467598394814130e+000
 command: var/14, fun=1.87036975338148510e+000
 command: var/15, fun=-2.09467598394814130e+000
 command: var/16, fun=-2.09467598394814130e+000
 command: var/17, fun=-2.09467598394814130e+000
 command: var/18, fun=2.09467598394814130e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.80000E-01  1.00000E-04        21322         8809       1            2:15 
   8.85000E-01  1.00000E-04        21429         8859       1            2:16 

  End Simulation
 command: var/13, fun=2.11824247847346440e+000
 command: var/14, fun=1.86562399203277640e+000
 command: var/15, fun=-2.11824247847346440e+000
 command: var/16, fun=-2.11824247847346440e+000
 command: var/17, fun=-2.11824247847346440e+000
 command: var/18, fun=2.11824247847346440e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.85000E-01  1.00000E-04        21429         8859       1            2:16 
   8.90000E-01  1.00000E-04        21540         8909       1            2:16 

  End Simulation
 command: var/13, fun=2.12598171807172730e+000
 command: var/14, fun=1.85827474554900380e+000
 command: var/15, fun=-2.14193793335206180e+000
 command: var/16, fun=-2.14193793335206180e+000
 command: var/17, fun=-2.14193793335206180e+000
 command: var/18, fun=2.14193793335206180e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.90000E-01  1.00000E-04        21540         8909       1            2:16 
   8.95000E-01  1.00000E-04        21651         8959       1            2:17 

  End Simulation
 command: var/13, fun=2.14105878769849320e+000
 command: var/14, fun=1.86872515919400350e+000
 command: var/15, fun=-2.16576228476478280e+000
 command: var/16, fun=-2.16576228476478280e+000
 command: var/17, fun=-2.16576228476478280e+000
 command: var/18, fun=2.16576228476478280e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.95000E-01  1.00000E-04        21651         8959       1            2:17 
   9.00000E-01  1.00000E-04        21763         9009       1            2:18 

  End Simulation
 command: var/13, fun=2.16295518253039760e+000
 command: var/14, fun=1.87886054830220740e+000
 command: var/15, fun=-2.18971546854528350e+000
 command: var/16, fun=-2.18971546854528350e+000
 command: var/17, fun=-2.18971546854528350e+000
 command: var/18, fun=2.18971546854528350e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.00000E-01  1.00000E-04        21763         9009       1            2:18 
   9.05000E-01  1.00000E-04        21872         9059       1            2:18 

  End Simulation
 command: var/13, fun=2.16747423280960790e+000
 command: var/14, fun=1.87606675871643860e+000
 command: var/15, fun=-2.21379742018024660e+000
 command: var/16, fun=-2.21379742018024660e+000
 command: var/17, fun=-2.21379742018024660e+000
 command: var/18, fun=2.21379742018024660e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.05000E-01  1.00000E-04        21872         9059       1            2:18 
   9.10000E-01  1.00000E-04        21984         9109       1            2:19 

  End Simulation
 command: var/13, fun=2.18825191887634810e+000
 command: var/14, fun=1.90571339540501430e+000
 command: var/15, fun=-2.23800807480954410e+000
 command: var/16, fun=-2.23800807480954410e+000
 command: var/17, fun=-2.23800807480954410e+000
 command: var/18, fun=2.23800807480954410e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.10000E-01  1.00000E-04        21984         9109       1            2:19 
   9.15000E-01  1.00000E-04        22096         9159       1            2:20 

  End Simulation
 command: var/13, fun=2.24485277660977190e+000
 command: var/14, fun=1.97378505545148290e+000
 command: var/15, fun=-2.26234736722639700e+000
 command: var/16, fun=-2.26234736722639700e+000
 command: var/17, fun=-2.26234736722639700e+000
 command: var/18, fun=2.26234736722639700e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.15000E-01  1.00000E-04        22096         9159       1            2:20 
   9.20000E-01  1.00000E-04        22207         9209       1            2:21 

  End Simulation
 command: var/13, fun=2.28681523187760360e+000
 command: var/14, fun=2.02588017018908050e+000
 command: var/15, fun=-2.28681523187760360e+000
 command: var/16, fun=-2.28681523187760360e+000
 command: var/17, fun=-2.28681523187760360e+000
 command: var/18, fun=2.28681523187760360e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.20000E-01  1.00000E-04        22207         9209       1            2:21 
   9.25000E-01  1.00000E-04        22315         9259       1            2:21 

  End Simulation
 command: var/13, fun=2.31141160286363330e+000
 command: var/14, fun=2.06243261488198340e+000
 command: var/15, fun=-2.31141160286363330e+000
 command: var/16, fun=-2.31141160286363330e+000
 command: var/17, fun=-2.31141160286363330e+000
 command: var/18, fun=2.31141160286363330e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.25000E-01  1.00000E-04        22315         9259       1            2:21 
   9.30000E-01  1.00000E-04        22422         9309       1            2:22 

  End Simulation
 command: var/13, fun=2.33613641393887180e+000
 command: var/14, fun=2.09566480089121090e+000
 command: var/15, fun=-2.33613641393887180e+000
 command: var/16, fun=-2.33613641393887180e+000
 command: var/17, fun=-2.33613641393887180e+000
 command: var/18, fun=2.33613641393887180e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.30000E-01  1.00000E-04        22422         9309       1            2:22 
   9.35000E-01  1.00000E-04        22537         9359       1            2:23 

  End Simulation
 command: var/13, fun=2.34598160228859690e+000
 command: var/14, fun=2.10399961977882510e+000
 command: var/15, fun=-2.36098959851176990e+000
 command: var/16, fun=-2.36098959851176990e+000
 command: var/17, fun=-2.36098959851176990e+000
 command: var/18, fun=2.36098959851176990e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.35000E-01  1.00000E-04        22537         9359       1            2:23 
   9.40000E-01  1.00000E-04        22649         9409       1            2:23 

  End Simulation
 command: var/13, fun=2.36986260951524930e+000
 command: var/14, fun=2.13466308222241170e+000
 command: var/15, fun=-2.38597108964502790e+000
 command: var/16, fun=-2.38597108964502790e+000
 command: var/17, fun=-2.38597108964502790e+000
 command: var/18, fun=2.38597108964502790e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.40000E-01  1.00000E-04        22649         9409       1            2:23 
   9.45000E-01  1.00000E-04        22759         9459       1            2:24 

  End Simulation
 command: var/13, fun=2.39724103270348230e+000
 command: var/14, fun=2.14986828430358610e+000
 command: var/15, fun=-2.41108082005577180e+000
 command: var/16, fun=-2.41108082005577180e+000
 command: var/17, fun=-2.41108082005577180e+000
 command: var/18, fun=2.41108082005577180e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.45000E-01  1.00000E-04        22759         9459       1            2:24 
   9.50000E-01  1.00000E-04        22868         9509       1            2:25 

  End Simulation
 command: var/13, fun=2.37535840544399290e+000
 command: var/14, fun=2.12588186066625530e+000
 command: var/15, fun=-2.43631872211576010e+000
 command: var/16, fun=-2.43631872211576010e+000
 command: var/17, fun=-2.43631872211576010e+000
 command: var/18, fun=2.43631872211576010e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.50000E-01  1.00000E-04        22868         9509       1            2:25 
   9.55000E-01  1.00000E-04        22975         9559       1            2:26 

  End Simulation
 command: var/13, fun=2.40100940833671880e+000
 command: var/14, fun=2.15838459234612220e+000
 command: var/15, fun=-2.46168472785152660e+000
 command: var/16, fun=-2.46168472785152660e+000
 command: var/17, fun=-2.46168472785152660e+000
 command: var/18, fun=2.46168472785152660e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.55000E-01  1.00000E-04        22975         9559       1            2:26 
   9.60000E-01  1.00000E-04        23084         9609       1            2:26 

  End Simulation
 command: var/13, fun=2.44040280180821250e+000
 command: var/14, fun=2.20389335774626670e+000
 command: var/15, fun=-2.48717876894459790e+000
 command: var/16, fun=-2.48717876894459790e+000
 command: var/17, fun=-2.48717876894459790e+000
 command: var/18, fun=2.48717876894459790e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.60000E-01  1.00000E-04        23084         9609       1            2:26 
   9.65000E-01  1.00000E-04        23196         9659       1            2:27 

  End Simulation
 command: var/13, fun=2.46945885585098250e+000
 command: var/14, fun=2.24399364468737560e+000
 command: var/15, fun=-2.51280077673163850e+000
 command: var/16, fun=-2.51280077673163850e+000
 command: var/17, fun=-2.51280077673163850e+000
 command: var/18, fun=2.51280077673163850e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.65000E-01  1.00000E-04        23196         9659       1            2:27 
   9.70000E-01  1.00000E-04        23314         9709       1            2:28 

  End Simulation
 command: var/13, fun=2.51309708673131070e+000
 command: var/14, fun=2.28015692568800830e+000
 command: var/15, fun=-2.53855068220466550e+000
 command: var/16, fun=-2.53855068220466550e+000
 command: var/17, fun=-2.53855068220466550e+000
 command: var/18, fun=2.53855068220466550e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.70000E-01  1.00000E-04        23314         9709       1            2:28 
   9.75000E-01  1.00000E-04        23423         9759       1            2:28 

  End Simulation
 command: var/13, fun=2.50063957959914120e+000
 command: var/14, fun=2.26106216208116080e+000
 command: var/15, fun=-2.56442841601126050e+000
 command: var/16, fun=-2.56442841601126050e+000
 command: var/17, fun=-2.56442841601126050e+000
 command: var/18, fun=2.56442841601126050e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.75000E-01  1.00000E-04        23423         9759       1            2:28 
   9.80000E-01  1.00000E-04        23531         9809       1            2:29 

  End Simulation
 command: var/13, fun=2.50788145723561580e+000
 command: var/14, fun=2.27924983295663310e+000
 command: var/15, fun=-2.59043390845467010e+000
 command: var/16, fun=-2.59043390845467010e+000
 command: var/17, fun=-2.59043390845467010e+000
 command: var/18, fun=2.59043390845467010e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.80000E-01  1.00000E-04        23531         9809       1            2:29 
   9.85000E-01  1.00000E-04        23642         9859       1            2:30 

  End Simulation
 command: var/13, fun=2.55819944047449740e+000
 command: var/14, fun=2.34321137512734980e+000
 command: var/15, fun=-2.61656708949409290e+000
 command: var/16, fun=-2.61656708949409290e+000
 command: var/17, fun=-2.61656708949409290e+000
 command: var/18, fun=2.61656708949409290e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.85000E-01  1.00000E-04        23642         9859       1            2:30 
   9.90000E-01  1.00000E-04        23754         9909       1            2:31 

  End Simulation
 command: var/13, fun=2.60052962374644640e+000
 command: var/14, fun=2.39559445070623900e+000
 command: var/15, fun=-2.64282788874480890e+000
 command: var/16, fun=-2.64282788874480890e+000
 command: var/17, fun=-2.64282788874480890e+000
 command: var/18, fun=2.64282788874480890e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.90000E-01  1.00000E-04        23754         9909       1            2:31 
   9.95000E-01  1.00000E-04        23861         9959       1            2:31 

  End Simulation
 command: var/13, fun=2.62790806733482670e+000
 command: var/14, fun=2.42303618917910680e+000
 command: var/15, fun=-2.66921623547837240e+000
 command: var/16, fun=-2.66921623547837240e+000
 command: var/17, fun=-2.66921623547837240e+000
 command: var/18, fun=2.66921623547837240e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   9.95000E-01  1.00000E-04        23861         9959       1            2:31 
   1.00000E+00  1.00000E-04        23967        10009       1            2:32 

  End Simulation
 command: var/13, fun=2.62793540610681610e+000
 command: var/14, fun=2.42593698771283520e+000
 command: var/15, fun=-2.69573205862280750e+000
 command: var/16, fun=-2.69573205862280750e+000
 command: var/17, fun=-2.69573205862280750e+000
 command: var/18, fun=2.69573205862280750e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.00000E+00  1.00000E-04        23967        10009       1            2:32 
   1.00500E+00  1.00000E-04        24072        10059       1            2:33 

  End Simulation
 command: var/13, fun=2.65320602015333230e+000
 command: var/14, fun=2.44492799671037630e+000
 command: var/15, fun=-2.72237528676284060e+000
 command: var/16, fun=-2.72237528676284060e+000
 command: var/17, fun=-2.72237528676284060e+000
 command: var/18, fun=2.72237528676284060e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.00500E+00  1.00000E-04        24072        10059       1            2:33 
   1.01000E+00  1.00000E-04        24182        10109       1            2:33 

  End Simulation
 command: var/13, fun=2.65339046987318340e+000
 command: var/14, fun=2.43737404562022600e+000
 command: var/15, fun=-2.74914584814002220e+000
 command: var/16, fun=-2.74914584814002220e+000
 command: var/17, fun=-2.74914584814002220e+000
 command: var/18, fun=2.74914584814002220e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.01000E+00  1.00000E-04        24182        10109       1            2:33 
   1.01500E+00  1.00000E-04        24291        10159       1            2:34 

  End Simulation
 command: var/13, fun=2.66741951347956000e+000
 command: var/14, fun=2.44845584904995260e+000
 command: var/15, fun=-2.77604367065296650e+000
 command: var/16, fun=-2.77604367065296650e+000
 command: var/17, fun=-2.77604367065296650e+000
 command: var/18, fun=2.77604367065296650e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.01500E+00  1.00000E-04        24291        10159       1            2:34 
   1.02000E+00  1.00000E-04        24400        10209       1            2:35 

  End Simulation
 command: var/13, fun=2.69059461948589580e+000
 command: var/14, fun=2.47774155760657690e+000
 command: var/15, fun=-2.80306868185752920e+000
 command: var/16, fun=-2.80306868185752920e+000
 command: var/17, fun=-2.80306868185752920e+000
 command: var/18, fun=2.80306868185752920e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.02000E+00  1.00000E-04        24400        10209       1            2:35 
   1.02500E+00  1.00000E-04        24516        10259       1            2:36 

  End Simulation
 command: var/13, fun=2.73672460653870740e+000
 command: var/14, fun=2.53419067103831570e+000
 command: var/15, fun=-2.83022080896702110e+000
 command: var/16, fun=-2.83022080896702110e+000
 command: var/17, fun=-2.83022080896702110e+000
 command: var/18, fun=2.83022080896702110e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.02500E+00  1.00000E-04        24516        10259       1            2:36 
   1.03000E+00  1.00000E-04        24626        10309       1            2:36 

  End Simulation
 command: var/13, fun=2.78224646762655810e+000
 command: var/14, fun=2.57776689188085010e+000
 command: var/15, fun=-2.85749997885239000e+000
 command: var/16, fun=-2.85749997885239000e+000
 command: var/17, fun=-2.85749997885239000e+000
 command: var/18, fun=2.85749997885239000e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.03000E+00  1.00000E-04        24626        10309       1            2:36 
   1.03500E+00  1.00000E-04        24733        10359       1            2:37 

  End Simulation
 command: var/13, fun=2.78781308547969120e+000
 command: var/14, fun=2.58598471093088070e+000
 command: var/15, fun=-2.88490611804240160e+000
 command: var/16, fun=-2.88490611804240160e+000
 command: var/17, fun=-2.88490611804240160e+000
 command: var/18, fun=2.88490611804240160e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.03500E+00  1.00000E-04        24733        10359       1            2:37 
   1.04000E+00  1.00000E-04        24845        10409       1            2:38 

  End Simulation
 command: var/13, fun=2.81291750099404640e+000
 command: var/14, fun=2.62162230151681990e+000
 command: var/15, fun=-2.91243915272385050e+000
 command: var/16, fun=-2.91243915272385050e+000
 command: var/17, fun=-2.91243915272385050e+000
 command: var/18, fun=2.91243915272385050e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.04000E+00  1.00000E-04        24845        10409       1            2:38 
   1.04500E+00  1.00000E-04        24955        10459       1            2:38 

  End Simulation
 command: var/13, fun=2.85503781024457530e+000
 command: var/14, fun=2.66769192971322380e+000
 command: var/15, fun=-2.94009900874180330e+000
 command: var/16, fun=-2.94009900874180330e+000
 command: var/17, fun=-2.94009900874180330e+000
 command: var/18, fun=2.94009900874180330e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.04500E+00  1.00000E-04        24955        10459       1            2:38 
   1.05000E+00  1.00000E-04        25065        10509       1            2:39 

  End Simulation
 command: var/13, fun=2.87468360842921420e+000
 command: var/14, fun=2.68604616005785870e+000
 command: var/15, fun=-2.96788561159970770e+000
 command: var/16, fun=-2.96788561159970770e+000
 command: var/17, fun=-2.96788561159970770e+000
 command: var/18, fun=2.96788561159970770e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.05000E+00  1.00000E-04        25065        10509       1            2:39 
   1.05500E+00  1.00000E-04        25171        10559       1            2:40 

  End Simulation
 command: var/13, fun=2.88127108743579810e+000
 command: var/14, fun=2.70261421288627620e+000
 command: var/15, fun=-2.99579888645966630e+000
 command: var/16, fun=-2.99579888645966630e+000
 command: var/17, fun=-2.99579888645966630e+000
 command: var/18, fun=2.99579888645966630e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.05500E+00  1.00000E-04        25171        10559       1            2:40 
   1.06000E+00  1.00000E-04        25282        10609       1            2:41 

  End Simulation
 command: var/13, fun=2.92582563238642070e+000
 command: var/14, fun=2.75258691065281980e+000
 command: var/15, fun=-3.02383875814262200e+000
 command: var/16, fun=-3.02383875814262200e+000
 command: var/17, fun=-3.02383875814262200e+000
 command: var/18, fun=3.02383875814262200e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.06000E+00  1.00000E-04        25282        10609       1            2:41 
   1.06500E+00  1.00000E-04        25393        10659       1            2:41 

  End Simulation
 command: var/13, fun=2.95432978167211950e+000
 command: var/14, fun=2.76511210311527920e+000
 command: var/15, fun=-3.05200515112854510e+000
 command: var/16, fun=-3.05200515112854510e+000
 command: var/17, fun=-3.05200515112854510e+000
 command: var/18, fun=3.05200515112854510e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.06500E+00  1.00000E-04        25393        10659       1            2:41 
   1.07000E+00  1.00000E-04        25505        10709       1            2:42 

  End Simulation
 command: var/13, fun=2.94204328212065120e+000
 command: var/14, fun=2.72546644335107540e+000
 command: var/15, fun=-3.08029798955664090e+000
 command: var/16, fun=-3.08029798955664090e+000
 command: var/17, fun=-3.08029798955664090e+000
 command: var/18, fun=3.08029798955664090e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.07000E+00  1.00000E-04        25505        10709       1            2:42 
   1.07500E+00  1.00000E-04        25616        10759       1            2:43 

  End Simulation
 command: var/13, fun=2.91499901232678350e+000
 command: var/14, fun=2.70026216591486580e+000
 command: var/15, fun=-3.10871719722556870e+000
 command: var/16, fun=-3.10871719722556870e+000
 command: var/17, fun=-3.10871719722556870e+000
 command: var/18, fun=3.10871719722556870e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.07500E+00  1.00000E-04        25616        10759       1            2:43 
   1.08000E+00  1.00000E-04        25726        10809       1            2:43 

  End Simulation
 command: var/13, fun=2.99139065160939840e+000
 command: var/14, fun=2.77296630545170640e+000
 command: var/15, fun=-3.13726269759362890e+000
 command: var/16, fun=-3.13726269759362890e+000
 command: var/17, fun=-3.13726269759362890e+000
 command: var/18, fun=3.13726269759362890e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.08000E+00  1.00000E-04        25726        10809       1            2:43 
   1.08500E+00  1.00000E-04        25835        10859       1            2:44 

  End Simulation
 command: var/13, fun=3.03044806239607430e+000
 command: var/14, fun=2.78203088830180920e+000
 command: var/15, fun=-3.16593441377895910e+000
 command: var/16, fun=-3.16593441377895910e+000
 command: var/17, fun=-3.16593441377895910e+000
 command: var/18, fun=3.16593441377895910e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.08500E+00  1.00000E-04        25835        10859       1            2:44 
   1.09000E+00  1.00000E-04        25944        10909       1            2:45 

  End Simulation
 command: var/13, fun=3.01154886277831050e+000
 command: var/14, fun=2.74535606779243800e+000
 command: var/15, fun=-3.19473226855979680e+000
 command: var/16, fun=-3.19473226855979680e+000
 command: var/17, fun=-3.19473226855979680e+000
 command: var/18, fun=3.19473226855979680e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.09000E+00  1.00000E-04        25944        10909       1            2:45 
   1.09500E+00  1.00000E-04        26056        10959       1            2:45 

  End Simulation
 command: var/13, fun=3.03847399486247260e+000
 command: var/14, fun=2.77661484238360860e+000
 command: var/15, fun=-3.22365618437461250e+000
 command: var/16, fun=-3.22365618437461250e+000
 command: var/17, fun=-3.22365618437461250e+000
 command: var/18, fun=3.22365618437461250e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.09500E+00  1.00000E-04        26056        10959       1            2:45 
   1.10000E+00  1.00000E-04        26165        11009       1            2:46 

  End Simulation
 command: var/13, fun=3.11871651956296740e+000
 command: var/14, fun=2.85555921918756450e+000
 command: var/15, fun=-3.25270608332239860e+000
 command: var/16, fun=-3.25270608332239860e+000
 command: var/17, fun=-3.25270608332239860e+000
 command: var/18, fun=3.25270608332239860e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.10000E+00  1.00000E-04        26165        11009       1            2:46 
   1.10500E+00  1.00000E-04        26278        11059       1            2:47 

  End Simulation
 command: var/13, fun=3.15894359202778220e+000
 command: var/14, fun=2.88701939482071750e+000
 command: var/15, fun=-3.28188188716279060e+000
 command: var/16, fun=-3.28188188716279060e+000
 command: var/17, fun=-3.28188188716279060e+000
 command: var/18, fun=3.28188188716279060e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.10500E+00  1.00000E-04        26278        11059       1            2:47 
   1.11000E+00  1.00000E-04        26385        11109       1            2:48 

  End Simulation
 command: var/13, fun=3.17460280676287220e+000
 command: var/14, fun=2.91190641778192830e+000
 command: var/15, fun=-3.31118351731634600e+000
 command: var/16, fun=-3.31118351731634600e+000
 command: var/17, fun=-3.31118351731634600e+000
 command: var/18, fun=3.31118351731634600e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.11000E+00  1.00000E-04        26385        11109       1            2:48 
   1.11500E+00  1.00000E-04        26491        11159       1            2:48 

  End Simulation
 command: var/13, fun=3.23614888478806060e+000
 command: var/14, fun=2.98509312332785020e+000
 command: var/15, fun=-3.34061089486473150e+000
 command: var/16, fun=-3.34061089486473150e+000
 command: var/17, fun=-3.34061089486473150e+000
 command: var/18, fun=3.34061089486473150e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.11500E+00  1.00000E-04        26491        11159       1            2:48 
   1.12000E+00  1.00000E-04        26601        11209       1            2:49 

  End Simulation
 command: var/13, fun=3.28299094748232800e+000
 command: var/14, fun=3.03658974468971010e+000
 command: var/15, fun=-3.37016394055093560e+000
 command: var/16, fun=-3.37016394055093560e+000
 command: var/17, fun=-3.37016394055093560e+000
 command: var/18, fun=3.37016394055093560e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.12000E+00  1.00000E-04        26601        11209       1            2:49 
   1.12500E+00  1.00000E-04        26708        11259       1            2:50 

  End Simulation
 command: var/13, fun=3.31178005575606220e+000
 command: var/14, fun=3.05870603224749260e+000
 command: var/15, fun=-3.39984257477948230e+000
 command: var/16, fun=-3.39984257477948230e+000
 command: var/17, fun=-3.39984257477948230e+000
 command: var/18, fun=3.39984257477948230e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.12500E+00  1.00000E-04        26708        11259       1            2:50 
   1.13000E+00  1.00000E-04        26816        11309       1            2:50 

  End Simulation
 command: var/13, fun=3.31384973117094320e+000
 command: var/14, fun=3.05113328523386510e+000
 command: var/15, fun=-3.42964671761664120e+000
 command: var/16, fun=-3.42964671761664120e+000
 command: var/17, fun=-3.42964671761664120e+000
 command: var/18, fun=3.42964671761664120e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.13000E+00  1.00000E-04        26816        11309       1            2:50 
   1.13500E+00  1.00000E-04        26930        11359       1            2:51 

  End Simulation
 command: var/13, fun=3.32020692835493670e+000
 command: var/14, fun=3.06427761790696440e+000
 command: var/15, fun=-3.45957628879066670e+000
 command: var/16, fun=-3.45957628879066670e+000
 command: var/17, fun=-3.45957628879066670e+000
 command: var/18, fun=3.45957628879066670e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.13500E+00  1.00000E-04        26930        11359       1            2:51 
   1.14000E+00  1.00000E-04        27042        11409       1            2:52 

  End Simulation
 command: var/13, fun=3.38068520703452210e+000
 command: var/14, fun=3.11781804162653660e+000
 command: var/15, fun=-3.48963120769198460e+000
 command: var/16, fun=-3.48963120769198460e+000
 command: var/17, fun=-3.48963120769198460e+000
 command: var/18, fun=3.48963120769198460e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.14000E+00  1.00000E-04        27042        11409       1            2:52 
   1.14500E+00  1.00000E-04        27155        11459       1            2:53 

  End Simulation
 command: var/13, fun=3.39676962372207660e+000
 command: var/14, fun=3.10830937587033420e+000
 command: var/15, fun=-3.51981139337341760e+000
 command: var/16, fun=-3.51981139337341760e+000
 command: var/17, fun=-3.51981139337341760e+000
 command: var/18, fun=3.51981139337341760e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.14500E+00  1.00000E-04        27155        11459       1            2:53 
   1.15000E+00  1.00000E-04        27264        11509       1            2:53 

  End Simulation
 command: var/13, fun=3.38171523209605420e+000
 command: var/14, fun=3.08012436793291360e+000
 command: var/15, fun=-3.55011676455040970e+000
 command: var/16, fun=-3.55011676455040970e+000
 command: var/17, fun=-3.55011676455040970e+000
 command: var/18, fun=3.55011676455040970e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.15000E+00  1.00000E-04        27264        11509       1            2:53 
   1.15500E+00  1.00000E-04        27372        11559       1            2:54 

  End Simulation
 command: var/13, fun=3.41914343158510060e+000
 command: var/14, fun=3.10874835166877480e+000
 command: var/15, fun=-3.58054723960123940e+000
 command: var/16, fun=-3.58054723960123940e+000
 command: var/17, fun=-3.58054723960123940e+000
 command: var/18, fun=3.58054723960123940e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.15500E+00  1.00000E-04        27372        11559       1            2:54 
   1.16000E+00  1.00000E-04        27484        11609       1            2:55 

  End Simulation
 command: var/13, fun=3.46113966803739490e+000
 command: var/14, fun=3.13965783587462920e+000
 command: var/15, fun=-3.61110273656725680e+000
 command: var/16, fun=-3.61110273656725680e+000
 command: var/17, fun=-3.61110273656725680e+000
 command: var/18, fun=3.61110273656725680e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.16000E+00  1.00000E-04        27484        11609       1            2:55 
   1.16500E+00  1.00000E-04        27592        11659       1            2:55 

  End Simulation
 command: var/13, fun=3.49471324371980030e+000
 command: var/14, fun=3.16695570552154580e+000
 command: var/15, fun=-3.64178317315306280e+000
 command: var/16, fun=-3.64178317315306280e+000
 command: var/17, fun=-3.64178317315306280e+000
 command: var/18, fun=3.64178317315306280e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.16500E+00  1.00000E-04        27592        11659       1            2:55 
   1.17000E+00  1.00000E-04        27699        11709       1            2:56 

  End Simulation
 command: var/13, fun=3.52791660004044160e+000
 command: var/14, fun=3.21668958532344540e+000
 command: var/15, fun=-3.67258846672677300e+000
 command: var/16, fun=-3.67258846672677300e+000
 command: var/17, fun=-3.67258846672677300e+000
 command: var/18, fun=3.67258846672677300e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.17000E+00  1.00000E-04        27699        11709       1            2:56 
   1.17500E+00  1.00000E-04        27809        11759       1            2:57 

  End Simulation
 command: var/13, fun=3.62084778943202460e+000
 command: var/14, fun=3.30930590374334830e+000
 command: var/15, fun=-3.70351853432021590e+000
 command: var/16, fun=-3.70351853432021590e+000
 command: var/17, fun=-3.70351853432021590e+000
 command: var/18, fun=3.70351853432021590e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.17500E+00  1.00000E-04        27809        11759       1            2:57 
   1.18000E+00  1.00000E-04        27918        11809       1            2:58 

  End Simulation
 command: var/13, fun=3.63258970955182870e+000
 command: var/14, fun=3.31820160172108340e+000
 command: var/15, fun=-3.73457329262918410e+000
 command: var/16, fun=-3.73457329262918410e+000
 command: var/17, fun=-3.73457329262918410e+000
 command: var/18, fun=3.73457329262918410e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.18000E+00  1.00000E-04        27918        11809       1            2:58 
   1.18500E+00  1.00000E-04        28024        11859       1            2:58 

  End Simulation
 command: var/13, fun=3.65822370404029180e+000
 command: var/14, fun=3.35393228384160660e+000
 command: var/15, fun=-3.76575265801363250e+000
 command: var/16, fun=-3.76575265801363250e+000
 command: var/17, fun=-3.76575265801363250e+000
 command: var/18, fun=3.76575265801363250e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.18500E+00  1.00000E-04        28024        11859       1            2:58 
   1.19000E+00  1.00000E-04        28131        11909       1            2:59 

  End Simulation
 command: var/13, fun=3.71186540984366210e+000
 command: var/14, fun=3.39822096591661050e+000
 command: var/15, fun=-3.79705654649790110e+000
 command: var/16, fun=-3.79705654649790110e+000
 command: var/17, fun=-3.79705654649790110e+000
 command: var/18, fun=3.79705654649790110e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.19000E+00  1.00000E-04        28131        11909       1            2:59 
   1.19500E+00  1.00000E-04        28239        11959       1            3:00 

  End Simulation
 command: var/13, fun=3.71965884716191920e+000
 command: var/14, fun=3.38117042129276650e+000
 command: var/15, fun=-3.82848487377093780e+000
 command: var/16, fun=-3.82848487377093780e+000
 command: var/17, fun=-3.82848487377093780e+000
 command: var/18, fun=3.82848487377093780e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.19500E+00  1.00000E-04        28239        11959       1            3:00 
   1.20000E+00  1.00000E-04        28348        12009       1            3:00 

  End Simulation
 command: var/13, fun=3.69639797313986130e+000
 command: var/14, fun=3.36059102707559230e+000
 command: var/15, fun=-3.86003755518657420e+000
 command: var/16, fun=-3.86003755518657420e+000
 command: var/17, fun=-3.86003755518657420e+000
 command: var/18, fun=3.86003755518657420e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.20000E+00  1.00000E-04        28348        12009       1            3:00 
   1.20500E+00  1.00000E-04        28459        12059       1            3:01 

  End Simulation
 command: var/13, fun=3.76385809120705520e+000
 command: var/14, fun=3.44442629990623410e+000
 command: var/15, fun=-3.89171450576368820e+000
 command: var/16, fun=-3.89171450576368820e+000
 command: var/17, fun=-3.89171450576368820e+000
 command: var/18, fun=3.89171450576368820e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.20500E+00  1.00000E-04        28459        12059       1            3:01 
   1.21000E+00  1.00000E-04        28570        12109       1            3:02 

  End Simulation
 command: var/13, fun=3.82837381729219220e+000
 command: var/14, fun=3.52605706639995950e+000
 command: var/15, fun=-3.92351564018648120e+000
 command: var/16, fun=-3.92351564018648120e+000
 command: var/17, fun=-3.92351564018648120e+000
 command: var/18, fun=3.92351564018648120e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.21000E+00  1.00000E-04        28570        12109       1            3:02 
   1.21500E+00  1.00000E-04        28683        12159       1            3:03 

  End Simulation
 command: var/13, fun=3.89447918372099580e+000
 command: var/14, fun=3.58654581633690440e+000
 command: var/15, fun=-3.95544087280468840e+000
 command: var/16, fun=-3.95544087280468840e+000
 command: var/17, fun=-3.95544087280468840e+000
 command: var/18, fun=3.95544087280468840e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.21500E+00  1.00000E-04        28683        12159       1            3:03 
   1.22000E+00  1.00000E-04        28790        12209       1            3:03 

  End Simulation
 command: var/13, fun=3.88463182448877920e+000
 command: var/14, fun=3.56175231019766780e+000
 command: var/15, fun=-3.98749011763379090e+000
 command: var/16, fun=-3.98749011763379090e+000
 command: var/17, fun=-3.98749011763379090e+000
 command: var/18, fun=3.98749011763379090e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.22000E+00  1.00000E-04        28790        12209       1            3:03 
   1.22500E+00  1.00000E-04        28893        12259       1            3:04 

  End Simulation
 command: var/13, fun=3.88095680433321810e+000
 command: var/14, fun=3.56502433921321020e+000
 command: var/15, fun=-4.01966328835528500e+000
 command: var/16, fun=-4.01966328835528500e+000
 command: var/17, fun=-4.01966328835528500e+000
 command: var/18, fun=4.01966328835528500e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.22500E+00  1.00000E-04        28893        12259       1            3:04 
   1.23000E+00  1.00000E-04        29001        12309       1            3:05 

  End Simulation
 command: var/13, fun=3.92541027156118270e+000
 command: var/14, fun=3.63927623807118250e+000
 command: var/15, fun=-4.05196029831688160e+000
 command: var/16, fun=-4.05196029831688160e+000
 command: var/17, fun=-4.05196029831688160e+000
 command: var/18, fun=4.05196029831688160e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.23000E+00  1.00000E-04        29001        12309       1            3:05 
   1.23500E+00  1.00000E-04        29110        12359       1            3:05 

  End Simulation
 command: var/13, fun=4.01155064973033330e+000
 command: var/14, fun=3.75932898220723420e+000
 command: var/15, fun=-4.08438106053277660e+000
 command: var/16, fun=-4.08438106053277660e+000
 command: var/17, fun=-4.08438106053277660e+000
 command: var/18, fun=4.08438106053277660e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.23500E+00  1.00000E-04        29110        12359       1            3:05 
   1.24000E+00  1.00000E-04        29226        12409       1            3:06 

  End Simulation
 command: var/13, fun=4.07510329625948490e+000
 command: var/14, fun=3.83684942609486110e+000
 command: var/15, fun=-4.11692548768384190e+000
 command: var/16, fun=-4.11692548768384190e+000
 command: var/17, fun=-4.11692548768384190e+000
 command: var/18, fun=4.11692548768384190e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.24000E+00  1.00000E-04        29226        12409       1            3:06 
   1.24500E+00  1.00000E-04        29335        12459       1            3:07 

  End Simulation
 command: var/13, fun=4.09363861219545640e+000
 command: var/14, fun=3.83410428044887830e+000
 command: var/15, fun=-4.14959349211789250e+000
 command: var/16, fun=-4.14959349211789250e+000
 command: var/17, fun=-4.14959349211789250e+000
 command: var/18, fun=4.14959349211789250e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.24500E+00  1.00000E-04        29335        12459       1            3:07 
   1.25000E+00  1.00000E-04        29445        12509       1            3:07 

  End Simulation
 command: var/13, fun=4.03750704929177570e+000
 command: var/14, fun=3.75703519782067950e+000
 command: var/15, fun=-4.18238498584990740e+000
 command: var/16, fun=-4.18238498584990740e+000
 command: var/17, fun=-4.18238498584990740e+000
 command: var/18, fun=4.18238498584990740e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.25000E+00  1.00000E-04        29445        12509       1            3:07 
   1.25500E+00  1.00000E-04        29556        12559       1            3:08 

  End Simulation
 command: var/13, fun=4.03144340212204440e+000
 command: var/14, fun=3.75245583085679350e+000
 command: var/15, fun=-4.21529988056227900e+000
 command: var/16, fun=-4.21529988056227900e+000
 command: var/17, fun=-4.21529988056227900e+000
 command: var/18, fun=4.21529988056227900e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.25500E+00  1.00000E-04        29556        12559       1            3:08 
   1.26000E+00  1.00000E-04        29664        12609       1            3:09 

  End Simulation
 command: var/13, fun=4.08820302857978480e+000
 command: var/14, fun=3.80475994014974450e+000
 command: var/15, fun=-4.24833808760502500e+000
 command: var/16, fun=-4.24833808760502500e+000
 command: var/17, fun=-4.24833808760502500e+000
 command: var/18, fun=4.24833808760502500e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.26000E+00  1.00000E-04        29664        12609       1            3:09 
   1.26500E+00  1.00000E-04        29773        12659       1            3:10 

  End Simulation
 command: var/13, fun=4.11963471153752710e+000
 command: var/14, fun=3.83030056116708420e+000
 command: var/15, fun=-4.28149951799605690e+000
 command: var/16, fun=-4.28149951799605690e+000
 command: var/17, fun=-4.28149951799605690e+000
 command: var/18, fun=4.28149951799605690e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.26500E+00  1.00000E-04        29773        12659       1            3:10 
   1.27000E+00  1.00000E-04        29886        12709       1            3:10 

  End Simulation
 command: var/13, fun=4.15333424076000310e+000
 command: var/14, fun=3.85856679817264950e+000
 command: var/15, fun=-4.31478408242141320e+000
 command: var/16, fun=-4.31478408242141320e+000
 command: var/17, fun=-4.31478408242141320e+000
 command: var/18, fun=4.31478408242141320e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.27000E+00  1.00000E-04        29886        12709       1            3:10 
   1.27500E+00  1.00000E-04        29994        12759       1            3:11 

  End Simulation
 command: var/13, fun=4.19028058303601100e+000
 command: var/14, fun=3.87927475783127920e+000
 command: var/15, fun=-4.34819169123547060e+000
 command: var/16, fun=-4.34819169123547060e+000
 command: var/17, fun=-4.34819169123547060e+000
 command: var/18, fun=4.34819169123547060e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.27500E+00  1.00000E-04        29994        12759       1            3:11 
   1.28000E+00  1.00000E-04        30104        12809       1            3:12 

  End Simulation
 command: var/13, fun=4.20243873302875760e+000
 command: var/14, fun=3.87758289256335330e+000
 command: var/15, fun=-4.38172225446125110e+000
 command: var/16, fun=-4.38172225446125110e+000
 command: var/17, fun=-4.38172225446125110e+000
 command: var/18, fun=4.38172225446125110e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.28000E+00  1.00000E-04        30104        12809       1            3:12 
   1.28500E+00  1.00000E-04        30215        12859       1            3:12 

  End Simulation
 command: var/13, fun=4.23762604922505570e+000
 command: var/14, fun=3.89797637945497000e+000
 command: var/15, fun=-4.41537568179058400e+000
 command: var/16, fun=-4.41537568179058400e+000
 command: var/17, fun=-4.41537568179058400e+000
 command: var/18, fun=4.41537568179058400e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.28500E+00  1.00000E-04        30215        12859       1            3:12 
   1.29000E+00  1.00000E-04        30322        12909       1            3:13 

  End Simulation
 command: var/13, fun=4.26488760475806040e+000
 command: var/14, fun=3.91432293616120170e+000
 command: var/15, fun=-4.44915188258439010e+000
 command: var/16, fun=-4.44915188258439010e+000
 command: var/17, fun=-4.44915188258439010e+000
 command: var/18, fun=4.44915188258439010e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.29000E+00  1.00000E-04        30322        12909       1            3:13 
   1.29500E+00  1.00000E-04        30429        12959       1            3:14 

  End Simulation
 command: var/13, fun=4.30500973792938790e+000
 command: var/14, fun=3.95943716926227700e+000
 command: var/15, fun=-4.48305076587295300e+000
 command: var/16, fun=-4.48305076587295300e+000
 command: var/17, fun=-4.48305076587295300e+000
 command: var/18, fun=4.48305076587295300e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.29500E+00  1.00000E-04        30429        12959       1            3:14 
   1.30000E+00  1.00000E-04        30535        13009       1            3:14 

  End Simulation
 command: var/13, fun=4.38289281567055870e+000
 command: var/14, fun=4.02309630750889990e+000
 command: var/15, fun=-4.51707224035611250e+000
 command: var/16, fun=-4.51707224035611250e+000
 command: var/17, fun=-4.51707224035611250e+000
 command: var/18, fun=4.51707224035611250e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.30000E+00  1.00000E-04        30535        13009       1            3:14 
   1.30500E+00  1.00000E-04        30645        13059       1            3:15 

  End Simulation
 command: var/13, fun=4.39566330406093900e+000
 command: var/14, fun=4.01177963464455980e+000
 command: var/15, fun=-4.55121621440353060e+000
 command: var/16, fun=-4.55121621440353060e+000
 command: var/17, fun=-4.55121621440353060e+000
 command: var/18, fun=4.55121621440353060e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.30500E+00  1.00000E-04        30645        13059       1            3:15 
   1.31000E+00  1.00000E-04        30761        13109       2            3:16 

  End Simulation
 command: var/13, fun=4.40065355336982120e+000
 command: var/14, fun=4.01970831082511100e+000
 command: var/15, fun=-4.58548259605495720e+000
 command: var/16, fun=-4.58548259605495720e+000
 command: var/17, fun=-4.58548259605495720e+000
 command: var/18, fun=4.58548259605495720e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.31000E+00  1.00000E-04        30761        13109       2            3:16 
   1.31500E+00  1.00000E-04        30870        13159       1            3:17 

  End Simulation
 command: var/13, fun=4.47143956361690440e+000
 command: var/14, fun=4.10769870299477270e+000
 command: var/15, fun=-4.61987129302042730e+000
 command: var/16, fun=-4.61987129302042730e+000
 command: var/17, fun=-4.61987129302042730e+000
 command: var/18, fun=4.61987129302042730e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.31500E+00  1.00000E-04        30870        13159       1            3:17 
   1.32000E+00  1.00000E-04        30978        13209       1            3:17 

  End Simulation
 command: var/13, fun=4.56737107683023690e+000
 command: var/14, fun=4.17917849895014810e+000
 command: var/15, fun=-4.65438221268057980e+000
 command: var/16, fun=-4.65438221268057980e+000
 command: var/17, fun=-4.65438221268057980e+000
 command: var/18, fun=4.65438221268057980e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.32000E+00  1.00000E-04        30978        13209       1            3:17 
   1.32500E+00  1.00000E-04        31087        13259       1            3:18 

  End Simulation
 command: var/13, fun=4.54080010010318970e+000
 command: var/14, fun=4.11622005982555450e+000
 command: var/15, fun=-4.68901526208686010e+000
 command: var/16, fun=-4.68901526208686010e+000
 command: var/17, fun=-4.68901526208686010e+000
 command: var/18, fun=4.68901526208686010e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.32500E+00  1.00000E-04        31087        13259       1            3:18 
   1.33000E+00  1.00000E-04        31199        13309       1            3:19 

  End Simulation
 command: var/13, fun=4.51611848677189800e+000
 command: var/14, fun=4.11949072191267530e+000
 command: var/15, fun=-4.72377034796176430e+000
 command: var/16, fun=-4.72377034796176430e+000
 command: var/17, fun=-4.72377034796176430e+000
 command: var/18, fun=4.72377034796176430e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.33000E+00  1.00000E-04        31199        13309       1            3:19 
   1.33500E+00  1.00000E-04        31309        13359       1            3:19 

  End Simulation
 command: var/13, fun=4.65587314191360410e+000
 command: var/14, fun=4.28933226156566060e+000
 command: var/15, fun=-4.75864737669911530e+000
 command: var/16, fun=-4.75864737669911530e+000
 command: var/17, fun=-4.75864737669911530e+000
 command: var/18, fun=4.75864737669911530e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.33500E+00  1.00000E-04        31309        13359       1            3:19 
   1.34000E+00  1.00000E-04        31423        13409       1            3:20 

  End Simulation
 command: var/13, fun=4.74318229326163900e+000
 command: var/14, fun=4.35542304938569560e+000
 command: var/15, fun=-4.79364625436432590e+000
 command: var/16, fun=-4.79364625436432590e+000
 command: var/17, fun=-4.79364625436432590e+000
 command: var/18, fun=4.79364625436432590e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.34000E+00  1.00000E-04        31423        13409       1            3:20 
   1.34500E+00  1.00000E-04        31533        13459       1            3:21 

  End Simulation
 command: var/13, fun=4.70787245540059020e+000
 command: var/14, fun=4.29357491555511570e+000
 command: var/15, fun=-4.82876688669460210e+000
 command: var/16, fun=-4.82876688669460210e+000
 command: var/17, fun=-4.82876688669460210e+000
 command: var/18, fun=4.82876688669460210e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.34500E+00  1.00000E-04        31533        13459       1            3:21 
   1.35000E+00  1.00000E-04        31639        13509       1            3:22 

  End Simulation
 command: var/13, fun=4.69453076463453110e+000
 command: var/14, fun=4.28042703447397610e+000
 command: var/15, fun=-4.86400917909923790e+000
 command: var/16, fun=-4.86400917909923790e+000
 command: var/17, fun=-4.86400917909923790e+000
 command: var/18, fun=4.86400917909923790e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.35000E+00  1.00000E-04        31639        13509       1            3:22 
   1.35500E+00  1.00000E-04        31748        13559       1            3:22 

  End Simulation
 command: var/13, fun=4.76078713489713850e+000
 command: var/14, fun=4.34661905310603200e+000
 command: var/15, fun=-4.89937303665987670e+000
 command: var/16, fun=-4.89937303665987670e+000
 command: var/17, fun=-4.89937303665987670e+000
 command: var/18, fun=4.89937303665987670e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.35500E+00  1.00000E-04        31748        13559       1            3:22 
   1.36000E+00  1.00000E-04        31857        13609       1            3:23 

  End Simulation
 command: var/13, fun=4.78907223121183900e+000
 command: var/14, fun=4.39990670119288830e+000
 command: var/15, fun=-4.93485836413070620e+000
 command: var/16, fun=-4.93485836413070620e+000
 command: var/17, fun=-4.93485836413070620e+000
 command: var/18, fun=4.93485836413070620e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.36000E+00  1.00000E-04        31857        13609       1            3:23 
   1.36500E+00  1.00000E-04        31961        13659       1            3:24 

  End Simulation
 command: var/13, fun=4.89553210347443100e+000
 command: var/14, fun=4.51871761774598650e+000
 command: var/15, fun=-4.97046506593881170e+000
 command: var/16, fun=-4.97046506593881170e+000
 command: var/17, fun=-4.97046506593881170e+000
 command: var/18, fun=4.97046506593881170e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.36500E+00  1.00000E-04        31961        13659       1            3:24 
   1.37000E+00  1.00000E-04        32085        13709       1            3:24 

  End Simulation
 command: var/13, fun=4.92783560203757800e+000
 command: var/14, fun=4.51683735048681800e+000
 command: var/15, fun=-5.00619304618433160e+000
 command: var/16, fun=-5.00619304618433160e+000
 command: var/17, fun=-5.00619304618433160e+000
 command: var/18, fun=5.00619304618433160e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.37000E+00  1.00000E-04        32085        13709       1            3:24 
   1.37500E+00  1.00000E-04        32215        13759       1            3:25 

  End Simulation
 command: var/13, fun=4.87380595623128080e+000
 command: var/14, fun=4.45451970699885800e+000
 command: var/15, fun=-5.04204220864081250e+000
 command: var/16, fun=-5.04204220864081250e+000
 command: var/17, fun=-5.04204220864081250e+000
 command: var/18, fun=5.04204220864081250e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.37500E+00  1.00000E-04        32215        13759       1            3:25 
   1.38000E+00  1.00000E-04        32326        13809       1            3:26 

  End Simulation
 command: var/13, fun=4.92218317021202890e+000
 command: var/14, fun=4.50415072808351180e+000
 command: var/15, fun=-5.07801245675537590e+000
 command: var/16, fun=-5.07801245675537590e+000
 command: var/17, fun=-5.07801245675537590e+000
 command: var/18, fun=5.07801245675537590e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.38000E+00  1.00000E-04        32326        13809       1            3:26 
   1.38500E+00  1.00000E-04        32435        13859       1            3:26 

  End Simulation
 command: var/13, fun=4.98511857830197250e+000
 command: var/14, fun=4.53034378639650010e+000
 command: var/15, fun=-5.11410369364904670e+000
 command: var/16, fun=-5.11410369364904670e+000
 command: var/17, fun=-5.11410369364904670e+000
 command: var/18, fun=5.11410369364904670e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.38500E+00  1.00000E-04        32435        13859       1            3:26 
   1.39000E+00  1.00000E-04        32544        13909       1            3:27 

  End Simulation
 command: var/13, fun=4.95211809897913820e+000
 command: var/14, fun=4.47659588687016900e+000
 command: var/15, fun=-5.15031582211697450e+000
 command: var/16, fun=-5.15031582211697450e+000
 command: var/17, fun=-5.15031582211697450e+000
 command: var/18, fun=5.15031582211697450e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.39000E+00  1.00000E-04        32544        13909       1            3:27 
   1.39500E+00  1.00000E-04        32651        13959       1            3:28 

  End Simulation
 command: var/13, fun=5.00496314356360370e+000
 command: var/14, fun=4.52193367528699500e+000
 command: var/15, fun=-5.18664874462873020e+000
 command: var/16, fun=-5.18664874462873020e+000
 command: var/17, fun=-5.18664874462873020e+000
 command: var/18, fun=5.18664874462873020e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.39500E+00  1.00000E-04        32651        13959       1            3:28 
   1.40000E+00  1.00000E-04        32759        14009       1            3:29 

  End Simulation
 command: var/13, fun=5.05936759691734840e+000
 command: var/14, fun=4.56009494501359570e+000
 command: var/15, fun=-5.22310236332854140e+000
 command: var/16, fun=-5.22310236332854140e+000
 command: var/17, fun=-5.22310236332854140e+000
 command: var/18, fun=5.22310236332854140e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.40000E+00  1.00000E-04        32759        14009       1            3:29 
   1.40500E+00  1.00000E-04        32865        14059       1            3:29 

  End Simulation
 command: var/13, fun=5.10084785673854930e+000
 command: var/14, fun=4.59374868529880500e+000
 command: var/15, fun=-5.25967658003554920e+000
 command: var/16, fun=-5.25967658003554920e+000
 command: var/17, fun=-5.25967658003554920e+000
 command: var/18, fun=5.25967658003554920e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.40500E+00  1.00000E-04        32865        14059       1            3:29 
   1.41000E+00  1.00000E-04        32970        14109       1            3:30 

  End Simulation
 command: var/13, fun=5.17372191799922290e+000
 command: var/14, fun=4.61445846466976040e+000
 command: var/15, fun=-5.29637129624410100e+000
 command: var/16, fun=-5.29637129624410100e+000
 command: var/17, fun=-5.29637129624410100e+000
 command: var/18, fun=5.29637129624410100e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.41000E+00  1.00000E-04        32970        14109       1            3:30 
   1.41500E+00  1.00000E-04        33080        14159       1            3:31 

  End Simulation
 command: var/13, fun=5.13783942370644200e+000
 command: var/14, fun=4.51000375119880290e+000
 command: var/15, fun=-5.33318641312399140e+000
 command: var/16, fun=-5.33318641312399140e+000
 command: var/17, fun=-5.33318641312399140e+000
 command: var/18, fun=5.33318641312399140e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.41500E+00  1.00000E-04        33080        14159       1            3:31 
   1.42000E+00  1.00000E-04        33189        14209       1            3:31 

  End Simulation
 command: var/13, fun=5.11071134633416870e+000
 command: var/14, fun=4.47624531843277480e+000
 command: var/15, fun=-5.37012183152076880e+000
 command: var/16, fun=-5.37012183152076880e+000
 command: var/17, fun=-5.37012183152076880e+000
 command: var/18, fun=5.37012183152076880e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.42000E+00  1.00000E-04        33189        14209       1            3:31 
   1.42500E+00  1.00000E-04        33295        14259       1            3:32 

  End Simulation
 command: var/13, fun=5.23278781259732460e+000
 command: var/14, fun=4.62939185453689550e+000
 command: var/15, fun=-5.40717745195593040e+000
 command: var/16, fun=-5.40717745195593040e+000
 command: var/17, fun=-5.40717745195593040e+000
 command: var/18, fun=5.40717745195593040e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.42500E+00  1.00000E-04        33295        14259       1            3:32 
   1.43000E+00  1.00000E-04        33401        14309       1            3:33 

  End Simulation
 command: var/13, fun=5.37351798169288040e+000
 command: var/14, fun=4.80632878268974300e+000
 command: var/15, fun=-5.44435317462725890e+000
 command: var/16, fun=-5.44435317462725890e+000
 command: var/17, fun=-5.44435317462725890e+000
 command: var/18, fun=5.44435317462725890e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.43000E+00  1.00000E-04        33401        14309       1            3:33 
   1.43500E+00  1.00000E-04        33508        14359       1            3:34 

  End Simulation
 command: var/13, fun=5.48164889940905820e+000
 command: var/14, fun=4.92906613235904430e+000
 command: var/15, fun=-5.48164889940905820e+000
 command: var/16, fun=-5.48164889940905820e+000
 command: var/17, fun=-5.48164889940905820e+000
 command: var/18, fun=5.48164889940905820e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.43500E+00  1.00000E-04        33508        14359       1            3:34 
   1.44000E+00  1.00000E-04        33616        14409       1            3:34 

  End Simulation
 command: var/13, fun=5.51471289854945470e+000
 command: var/14, fun=4.90739245271564870e+000
 command: var/15, fun=-5.51906452585242400e+000
 command: var/16, fun=-5.51906452585242400e+000
 command: var/17, fun=-5.51906452585242400e+000
 command: var/18, fun=5.51906452585242400e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.44000E+00  1.00000E-04        33616        14409       1            3:34 
   1.44500E+00  1.00000E-04        33723        14459       1            3:35 

  End Simulation
 command: var/13, fun=5.43837898357170870e+000
 command: var/14, fun=4.81089080238957580e+000
 command: var/15, fun=-5.55659995318553170e+000
 command: var/16, fun=-5.55659995318553170e+000
 command: var/17, fun=-5.55659995318553170e+000
 command: var/18, fun=5.55659995318553170e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.44500E+00  1.00000E-04        33723        14459       1            3:35 
   1.45000E+00  1.00000E-04        33830        14509       1            3:36 

  End Simulation
 command: var/13, fun=5.48125758177007680e+000
 command: var/14, fun=4.86854741598966530e+000
 command: var/15, fun=-5.59425508031388130e+000
 command: var/16, fun=-5.59425508031388130e+000
 command: var/17, fun=-5.59425508031388130e+000
 command: var/18, fun=5.59425508031388130e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.45000E+00  1.00000E-04        33830        14509       1            3:36 
   1.45500E+00  1.00000E-04        33938        14559       1            3:36 

  End Simulation
 command: var/13, fun=5.58468317596357000e+000
 command: var/14, fun=4.95581737023927180e+000
 command: var/15, fun=-5.63202980582059890e+000
 command: var/16, fun=-5.63202980582059890e+000
 command: var/17, fun=-5.63202980582059890e+000
 command: var/18, fun=5.63202980582059890e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.45500E+00  1.00000E-04        33938        14559       1            3:36 
   1.46000E+00  1.00000E-04        34046        14609       1            3:37 

  End Simulation
 command: var/13, fun=5.60099519260110860e+000
 command: var/14, fun=4.93763649020102770e+000
 command: var/15, fun=-5.66992402796668320e+000
 command: var/16, fun=-5.66992402796668320e+000
 command: var/17, fun=-5.66992402796668320e+000
 command: var/18, fun=5.66992402796668320e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.46000E+00  1.00000E-04        34046        14609       1            3:37 
   1.46500E+00  1.00000E-04        34153        14659       1            3:38 

  End Simulation
 command: var/13, fun=5.60801247238069500e+000
 command: var/14, fun=4.91043081583897930e+000
 command: var/15, fun=-5.70793764469130770e+000
 command: var/16, fun=-5.70793764469130770e+000
 command: var/17, fun=-5.70793764469130770e+000
 command: var/18, fun=5.70793764469130770e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.46500E+00  1.00000E-04        34153        14659       1            3:38 
   1.47000E+00  1.00000E-04        34263        14709       1            3:38 

  End Simulation
 command: var/13, fun=5.63029857344608420e+000
 command: var/14, fun=4.90053616811025170e+000
 command: var/15, fun=-5.74607055361204820e+000
 command: var/16, fun=-5.74607055361204820e+000
 command: var/17, fun=-5.74607055361204820e+000
 command: var/18, fun=5.74607055361204820e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.47000E+00  1.00000E-04        34263        14709       1            3:38 
   1.47500E+00  1.00000E-04        34369        14759       1            3:39 

  End Simulation
 command: var/13, fun=5.66663856053494360e+000
 command: var/14, fun=4.92392595825671630e+000
 command: var/15, fun=-5.78432265202522530e+000
 command: var/16, fun=-5.78432265202522530e+000
 command: var/17, fun=-5.78432265202522530e+000
 command: var/18, fun=5.78432265202522530e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.47500E+00  1.00000E-04        34369        14759       1            3:39 
   1.48000E+00  1.00000E-04        34479        14809       1            3:40 

  End Simulation
 command: var/13, fun=5.74260806667489110e+000
 command: var/14, fun=5.00350261182808430e+000
 command: var/15, fun=-5.82269383690611790e+000
 command: var/16, fun=-5.82269383690611790e+000
 command: var/17, fun=-5.82269383690611790e+000
 command: var/18, fun=5.82269383690611790e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.48000E+00  1.00000E-04        34479        14809       1            3:40 
   1.48500E+00  1.00000E-04        34585        14859       1            3:41 

  End Simulation
 command: var/13, fun=5.82939999666002870e+000
 command: var/14, fun=5.10085602400840090e+000
 command: var/15, fun=-5.86118400490929230e+000
 command: var/16, fun=-5.86118400490929230e+000
 command: var/17, fun=-5.86118400490929230e+000
 command: var/18, fun=5.86118400490929230e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.48500E+00  1.00000E-04        34585        14859       1            3:41 
   1.49000E+00  1.00000E-04        34693        14909       1            3:41 

  End Simulation
 command: var/13, fun=5.89979305236885130e+000
 command: var/14, fun=5.18586886130375200e+000
 command: var/15, fun=-5.89979305236885130e+000
 command: var/16, fun=-5.89979305236885130e+000
 command: var/17, fun=-5.89979305236885130e+000
 command: var/18, fun=5.89979305236885130e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.49000E+00  1.00000E-04        34693        14909       1            3:41 
   1.49500E+00  1.00000E-04        34804        14959       1            3:42 

  End Simulation
 command: var/13, fun=5.93852087529869180e+000
 command: var/14, fun=5.22770049176472630e+000
 command: var/15, fun=-5.93852087529869180e+000
 command: var/16, fun=-5.93852087529869180e+000
 command: var/17, fun=-5.93852087529869180e+000
 command: var/18, fun=5.93852087529869180e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.49500E+00  1.00000E-04        34804        14959       1            3:42 
   1.50000E+00  1.00000E-04        34911        15009       1            3:43 

  End Simulation
 command: var/13, fun=5.97736736939284440e+000
 command: var/14, fun=5.29212190364686650e+000
 command: var/15, fun=-5.97736736939284440e+000
 command: var/16, fun=-5.97736736939284440e+000
 command: var/17, fun=-5.97736736939284440e+000
 command: var/18, fun=5.97736736939284440e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.50000E+00  1.00000E-04        34911        15009       1            3:43 
   1.50500E+00  1.00000E-04        35018        15059       1            3:43 

  End Simulation
 command: var/13, fun=6.01633243002571660e+000
 command: var/14, fun=5.32354926901220530e+000
 command: var/15, fun=-6.01633243002571660e+000
 command: var/16, fun=-6.01633243002571660e+000
 command: var/17, fun=-6.01633243002571660e+000
 command: var/18, fun=6.01633243002571660e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.50500E+00  1.00000E-04        35018        15059       1            3:43 
   1.51000E+00  1.00000E-04        35127        15109       1            3:44 

  End Simulation
 command: var/13, fun=6.05541595225235780e+000
 command: var/14, fun=5.37621286420038570e+000
 command: var/15, fun=-6.05541595225235780e+000
 command: var/16, fun=-6.05541595225235780e+000
 command: var/17, fun=-6.05541595225235780e+000
 command: var/18, fun=6.05541595225235780e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.51000E+00  1.00000E-04        35127        15109       1            3:44 
   1.51500E+00  1.00000E-04        35235        15159       1            3:45 

  End Simulation
 command: var/13, fun=6.09461783080877950e+000
 command: var/14, fun=5.45780929523331880e+000
 command: var/15, fun=-6.09461783080877950e+000
 command: var/16, fun=-6.09461783080877950e+000
 command: var/17, fun=-6.09461783080877950e+000
 command: var/18, fun=6.09461783080877950e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.51500E+00  1.00000E-04        35235        15159       1            3:45 
   1.52000E+00  1.00000E-04        35347        15209       1            3:45 

  End Simulation
 command: var/13, fun=6.13393796011222920e+000
 command: var/14, fun=5.44097212283619850e+000
 command: var/15, fun=-6.13393796011222920e+000
 command: var/16, fun=-6.13393796011222920e+000
 command: var/17, fun=-6.13393796011222920e+000
 command: var/18, fun=6.13393796011222920e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.52000E+00  1.00000E-04        35347        15209       1            3:45 
   1.52500E+00  1.00000E-04        35455        15259       1            3:46 

  End Simulation
 command: var/13, fun=6.16889200336478270e+000
 command: var/14, fun=5.35549696268934380e+000
 command: var/15, fun=-6.17337623426145220e+000
 command: var/16, fun=-6.17337623426145220e+000
 command: var/17, fun=-6.17337623426145220e+000
 command: var/18, fun=6.17337623426145220e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.52500E+00  1.00000E-04        35455        15259       1            3:46 
   1.53000E+00  1.00000E-04        35577        15309       1            3:47 

  End Simulation
 command: var/13, fun=6.10815729374779610e+000
 command: var/14, fun=5.21757104925557510e+000
 command: var/15, fun=-6.21293254703700890e+000
 command: var/16, fun=-6.21293254703700890e+000
 command: var/17, fun=-6.21293254703700890e+000
 command: var/18, fun=6.21293254703700890e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.53000E+00  1.00000E-04        35577        15309       1            3:47 
   1.53500E+00  1.00000E-04        35708        15359       2            3:48 

  End Simulation
 command: var/13, fun=6.09337382026384680e+000
 command: var/14, fun=5.20431406341437160e+000
 command: var/15, fun=-6.25260679190154890e+000
 command: var/16, fun=-6.25260679190154890e+000
 command: var/17, fun=-6.25260679190154890e+000
 command: var/18, fun=6.25260679190154890e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.53500E+00  1.00000E-04        35708        15359       2            3:48 
   1.54000E+00  1.00000E-04        35836        15409       2            3:48 

  End Simulation
 command: var/13, fun=6.27075311234226710e+000
 command: var/14, fun=5.38760712376873310e+000
 command: var/15, fun=-6.29239886200005930e+000
 command: var/16, fun=-6.29239886200005930e+000
 command: var/17, fun=-6.29239886200005930e+000
 command: var/18, fun=6.29239886200005930e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.54000E+00  1.00000E-04        35836        15409       2            3:48 
   1.54500E+00  1.00000E-04        35951        15459       1            3:49 

  End Simulation
 command: var/13, fun=6.33230865016023440e+000
 command: var/14, fun=5.47634766418229190e+000
 command: var/15, fun=-6.33230865016023440e+000
 command: var/16, fun=-6.33230865016023440e+000
 command: var/17, fun=-6.33230865016023440e+000
 command: var/18, fun=6.33230865016023440e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.54500E+00  1.00000E-04        35951        15459       1            3:49 
   1.55000E+00  1.00000E-04        36061        15509       1            3:50 

  End Simulation
 command: var/13, fun=6.37233604889268520e+000
 command: var/14, fun=5.63648813645996680e+000
 command: var/15, fun=-6.37233604889268520e+000
 command: var/16, fun=-6.37233604889268520e+000
 command: var/17, fun=-6.37233604889268520e+000
 command: var/18, fun=6.37233604889268520e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.55000E+00  1.00000E-04        36061        15509       1            3:50 
   1.55500E+00  1.00000E-04        36167        15559       1            3:51 

  End Simulation
 command: var/13, fun=6.41248095039126920e+000
 command: var/14, fun=5.71232901380442470e+000
 command: var/15, fun=-6.41248095039126920e+000
 command: var/16, fun=-6.41248095039126920e+000
 command: var/17, fun=-6.41248095039126920e+000
 command: var/18, fun=6.41248095039126920e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.55500E+00  1.00000E-04        36167        15559       1            3:51 
   1.56000E+00  1.00000E-04        36280        15609       1            3:51 

  End Simulation
 command: var/13, fun=6.45274324653338740e+000
 command: var/14, fun=5.70353933024325510e+000
 command: var/15, fun=-6.45274324653338740e+000
 command: var/16, fun=-6.45274324653338740e+000
 command: var/17, fun=-6.45274324653338740e+000
 command: var/18, fun=6.45274324653338740e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.56000E+00  1.00000E-04        36280        15609       1            3:51 
   1.56500E+00  1.00000E-04        36394        15659       1            3:52 

  End Simulation
 command: var/13, fun=6.49312282888022630e+000
 command: var/14, fun=5.68590923308054740e+000
 command: var/15, fun=-6.49312282888022630e+000
 command: var/16, fun=-6.49312282888022630e+000
 command: var/17, fun=-6.49312282888022630e+000
 command: var/18, fun=6.49312282888022630e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.56500E+00  1.00000E-04        36394        15659       1            3:52 
   1.57000E+00  1.00000E-04        36505        15709       1            3:53 

  End Simulation
 command: var/13, fun=6.53361958867712560e+000
 command: var/14, fun=5.65146103221787400e+000
 command: var/15, fun=-6.53361958867712560e+000
 command: var/16, fun=-6.53361958867712560e+000
 command: var/17, fun=-6.53361958867712560e+000
 command: var/18, fun=6.53361958867712560e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.57000E+00  1.00000E-04        36505        15709       1            3:53 
   1.57500E+00  1.00000E-04        36616        15759       1            3:53 

  End Simulation
 command: var/13, fun=6.57423341685379190e+000
 command: var/14, fun=5.64278646923725180e+000
 command: var/15, fun=-6.57423341685379190e+000
 command: var/16, fun=-6.57423341685379190e+000
 command: var/17, fun=-6.57423341685379190e+000
 command: var/18, fun=6.57423341685379190e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.57500E+00  1.00000E-04        36616        15759       1            3:53 
   1.58000E+00  1.00000E-04        36730        15809       1            3:54 

  End Simulation
 command: var/13, fun=6.61496420402466430e+000
 command: var/14, fun=5.70465691824825070e+000
 command: var/15, fun=-6.61496420402466430e+000
 command: var/16, fun=-6.61496420402466430e+000
 command: var/17, fun=-6.61496420402466430e+000
 command: var/18, fun=6.61496420402466430e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.58000E+00  1.00000E-04        36730        15809       1            3:54 
   1.58500E+00  1.00000E-04        36841        15859       1            3:55 

  End Simulation
 command: var/13, fun=6.65581184048916800e+000
 command: var/14, fun=5.72076535108828830e+000
 command: var/15, fun=-6.65581184048916800e+000
 command: var/16, fun=-6.65581184048916800e+000
 command: var/17, fun=-6.65581184048916800e+000
 command: var/18, fun=6.65581184048916800e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.58500E+00  1.00000E-04        36841        15859       1            3:55 
   1.59000E+00  1.00000E-04        36954        15909       1            3:56 

  End Simulation
 command: var/13, fun=6.69677621623198680e+000
 command: var/14, fun=5.77207825173623860e+000
 command: var/15, fun=-6.69677621623198680e+000
 command: var/16, fun=-6.69677621623198680e+000
 command: var/17, fun=-6.69677621623198680e+000
 command: var/18, fun=6.69677621623198680e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.59000E+00  1.00000E-04        36954        15909       1            3:56 
   1.59500E+00  1.00000E-04        37068        15959       1            3:56 

  End Simulation
 command: var/13, fun=6.73785722092342710e+000
 command: var/14, fun=5.87391117597435210e+000
 command: var/15, fun=-6.73785722092342710e+000
 command: var/16, fun=-6.73785722092342710e+000
 command: var/17, fun=-6.73785722092342710e+000
 command: var/18, fun=6.73785722092342710e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.59500E+00  1.00000E-04        37068        15959       1            3:56 
   1.60000E+00  1.00000E-04        37185        16009       1            3:57 

  End Simulation
 command: var/13, fun=6.77905474391964890e+000
 command: var/14, fun=5.95560964592941570e+000
 command: var/15, fun=-6.77905474391964890e+000
 command: var/16, fun=-6.77905474391964890e+000
 command: var/17, fun=-6.77905474391964890e+000
 command: var/18, fun=6.77905474391964890e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.60000E+00  1.00000E-04        37185        16009       1            3:57 
   1.60500E+00  1.00000E-04        37297        16059       1            3:58 

  End Simulation
 command: var/13, fun=6.82036867426301630e+000
 command: var/14, fun=6.10121005640165140e+000
 command: var/15, fun=-6.82036867426301630e+000
 command: var/16, fun=-6.82036867426301630e+000
 command: var/17, fun=-6.82036867426301630e+000
 command: var/18, fun=6.82036867426301630e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.60500E+00  1.00000E-04        37297        16059       1            3:58 
   1.61000E+00  1.00000E-04        37412        16109       1            3:58 

  End Simulation
 command: var/13, fun=6.86179890068236450e+000
 command: var/14, fun=6.06883202956721220e+000
 command: var/15, fun=-6.86179890068236450e+000
 command: var/16, fun=-6.86179890068236450e+000
 command: var/17, fun=-6.86179890068236450e+000
 command: var/18, fun=6.86179890068236450e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.61000E+00  1.00000E-04        37412        16109       1            3:58 
   1.61500E+00  1.00000E-04        37526        16159       1            3:59 

  End Simulation
 command: var/13, fun=6.90334531159329500e+000
 command: var/14, fun=6.01467770963607240e+000
 command: var/15, fun=-6.90334531159329500e+000
 command: var/16, fun=-6.90334531159329500e+000
 command: var/17, fun=-6.90334531159329500e+000
 command: var/18, fun=6.90334531159329500e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.61500E+00  1.00000E-04        37526        16159       1            3:59 
   1.62000E+00  1.00000E-04        37643        16209       1            4:00 

  End Simulation
 command: var/13, fun=6.94500779509851810e+000
 command: var/14, fun=5.95078611155734020e+000
 command: var/15, fun=-6.94500779509851810e+000
 command: var/16, fun=-6.94500779509851810e+000
 command: var/17, fun=-6.94500779509851810e+000
 command: var/18, fun=6.94500779509851810e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.62000E+00  1.00000E-04        37643        16209       1            4:00 
   1.62500E+00  1.00000E-04        37761        16259       1            4:01 

  End Simulation
 command: var/13, fun=6.98678623898807420e+000
 command: var/14, fun=6.01996137966543810e+000
 command: var/15, fun=-6.98678623898807420e+000
 command: var/16, fun=-6.98678623898807420e+000
 command: var/17, fun=-6.98678623898807420e+000
 command: var/18, fun=6.98678623898807420e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.62500E+00  1.00000E-04        37761        16259       1            4:01 
   1.63000E+00  1.00000E-04        37886        16309       1            4:01 

  End Simulation
 command: var/13, fun=7.02868053073974510e+000
 command: var/14, fun=6.26999033331946090e+000
 command: var/15, fun=-7.02868053073974510e+000
 command: var/16, fun=-7.02868053073974510e+000
 command: var/17, fun=-7.02868053073974510e+000
 command: var/18, fun=7.02868053073974510e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.63000E+00  1.00000E-04        37886        16309       1            4:01 
   1.63500E+00  1.00000E-04        38008        16359       1            4:02 

  End Simulation
 command: var/13, fun=7.07069055751926530e+000
 command: var/14, fun=6.25753697719155260e+000
 command: var/15, fun=-7.07069055751926530e+000
 command: var/16, fun=-7.07069055751926530e+000
 command: var/17, fun=-7.07069055751926530e+000
 command: var/18, fun=7.07069055751926530e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.63500E+00  1.00000E-04        38008        16359       1            4:02 
   1.64000E+00  1.00000E-04        38125        16409       1            4:03 

  End Simulation
 command: var/13, fun=7.11281620618065520e+000
 command: var/14, fun=6.19875770085941810e+000
 command: var/15, fun=-7.11281620618065520e+000
 command: var/16, fun=-7.11281620618065520e+000
 command: var/17, fun=-7.11281620618065520e+000
 command: var/18, fun=7.11281620618065520e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.64000E+00  1.00000E-04        38125        16409       1            4:03 
   1.64500E+00  1.00000E-04        38248        16459       1            4:04 

  End Simulation
 command: var/13, fun=7.15505736326653710e+000
 command: var/14, fun=6.11338742210888240e+000
 command: var/15, fun=-7.15505736326653710e+000
 command: var/16, fun=-7.15505736326653710e+000
 command: var/17, fun=-7.15505736326653710e+000
 command: var/18, fun=7.15505736326653710e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.64500E+00  1.00000E-04        38248        16459       1            4:04 
   1.65000E+00  1.00000E-04        38374        16509       1            4:04 

  End Simulation
 command: var/13, fun=7.19741391500843800e+000
 command: var/14, fun=6.12429299227747490e+000
 command: var/15, fun=-7.19741391500843800e+000
 command: var/16, fun=-7.19741391500843800e+000
 command: var/17, fun=-7.19741391500843800e+000
 command: var/18, fun=7.19741391500843800e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.65000E+00  1.00000E-04        38374        16509       1            4:04 
   1.65500E+00  1.00000E-04        38485        16559       1            4:05 

  End Simulation
 command: var/13, fun=7.23988574732710170e+000
 command: var/14, fun=6.30941555117435900e+000
 command: var/15, fun=-7.23988574732710170e+000
 command: var/16, fun=-7.23988574732710170e+000
 command: var/17, fun=-7.23988574732710170e+000
 command: var/18, fun=7.23988574732710170e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.65500E+00  1.00000E-04        38485        16559       1            4:05 
   1.66000E+00  1.00000E-04        38612        16609       2            4:06 

  End Simulation
 command: var/13, fun=7.28247274583277450e+000
 command: var/14, fun=6.45888327609680600e+000
 command: var/15, fun=-7.28247274583277450e+000
 command: var/16, fun=-7.28247274583277450e+000
 command: var/17, fun=-7.28247274583277450e+000
 command: var/18, fun=7.28247274583277450e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.66000E+00  1.00000E-04        38612        16609       2            4:06 
   1.66500E+00  1.00000E-04        38741        16659       2            4:07 

  End Simulation
 command: var/13, fun=7.32517479582551800e+000
 command: var/14, fun=6.42648489509325850e+000
 command: var/15, fun=-7.32517479582551800e+000
 command: var/16, fun=-7.32517479582551800e+000
 command: var/17, fun=-7.32517479582551800e+000
 command: var/18, fun=7.32517479582551800e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.66500E+00  1.00000E-04        38741        16659       2            4:07 
   1.67000E+00  1.00000E-04        38879        16709       2            4:07 

  End Simulation
 command: var/13, fun=7.36799178229551370e+000
 command: var/14, fun=6.34349344727980040e+000
 command: var/15, fun=-7.36799178229551370e+000
 command: var/16, fun=-7.36799178229551370e+000
 command: var/17, fun=-7.36799178229551370e+000
 command: var/18, fun=7.36799178229551370e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.67000E+00  1.00000E-04        38879        16709       2            4:07 
   1.67500E+00  1.00000E-04        39017        16759       2            4:08 

  End Simulation
 command: var/13, fun=7.41092358992341800e+000
 command: var/14, fun=6.37981184406719580e+000
 command: var/15, fun=-7.41092358992341800e+000
 command: var/16, fun=-7.41092358992341800e+000
 command: var/17, fun=-7.41092358992341800e+000
 command: var/18, fun=7.41092358992341800e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.67500E+00  1.00000E-04        39017        16759       2            4:08 
   1.68000E+00  1.00000E-04        39154        16809       2            4:09 

  End Simulation
 command: var/13, fun=7.45397010308061510e+000
 command: var/14, fun=6.45394796855906260e+000
 command: var/15, fun=-7.45397010308061510e+000
 command: var/16, fun=-7.45397010308061510e+000
 command: var/17, fun=-7.45397010308061510e+000
 command: var/18, fun=7.45397010308061510e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.68000E+00  1.00000E-04        39154        16809       2            4:09 
   1.68500E+00  1.00000E-04        39294        16859       2            4:10 

  End Simulation
 command: var/13, fun=7.49713120582955470e+000
 command: var/14, fun=6.52446133437327980e+000
 command: var/15, fun=-7.49713120582955470e+000
 command: var/16, fun=-7.49713120582955470e+000
 command: var/17, fun=-7.49713120582955470e+000
 command: var/18, fun=7.49713120582955470e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.68500E+00  1.00000E-04        39294        16859       2            4:10 
   1.69000E+00  1.00000E-04        39436        16909       2            4:11 

  End Simulation
 command: var/13, fun=7.54040678192406940e+000
 command: var/14, fun=6.61476983009656740e+000
 command: var/15, fun=-7.54040678192406940e+000
 command: var/16, fun=-7.54040678192406940e+000
 command: var/17, fun=-7.54040678192406940e+000
 command: var/18, fun=7.54040678192406940e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.69000E+00  1.00000E-04        39436        16909       2            4:11 
   1.69500E+00  1.00000E-04        39567        16959       1            4:11 

  End Simulation
 command: var/13, fun=7.58379671480968210e+000
 command: var/14, fun=6.55549015594619440e+000
 command: var/15, fun=-7.58379671480968210e+000
 command: var/16, fun=-7.58379671480968210e+000
 command: var/17, fun=-7.58379671480968210e+000
 command: var/18, fun=7.58379671480968210e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.69500E+00  1.00000E-04        39567        16959       1            4:11 
   1.70000E+00  1.00000E-04        39694        17009       2            4:12 

  End Simulation
 command: var/13, fun=7.62730088762389440e+000
 command: var/14, fun=6.60946759301884420e+000
 command: var/15, fun=-7.62730088762389440e+000
 command: var/16, fun=-7.62730088762389440e+000
 command: var/17, fun=-7.62730088762389440e+000
 command: var/18, fun=7.62730088762389440e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.70000E+00  1.00000E-04        39694        17009       2            4:12 
   1.70500E+00  1.00000E-04        39826        17059       2            4:13 

  End Simulation
 command: var/13, fun=7.67091918319655090e+000
 command: var/14, fun=6.75480940346694500e+000
 command: var/15, fun=-7.67091918319655090e+000
 command: var/16, fun=-7.67091918319655090e+000
 command: var/17, fun=-7.67091918319655090e+000
 command: var/18, fun=7.67091918319655090e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.70500E+00  1.00000E-04        39826        17059       2            4:13 
   1.71000E+00  1.00000E-04        39965        17109       2            4:14 

  End Simulation
 command: var/13, fun=7.71465148405010570e+000
 command: var/14, fun=6.86612214001703690e+000
 command: var/15, fun=-7.71465148405010570e+000
 command: var/16, fun=-7.71465148405010570e+000
 command: var/17, fun=-7.71465148405010570e+000
 command: var/18, fun=7.71465148405010570e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.71000E+00  1.00000E-04        39965        17109       2            4:14 
   1.71500E+00  1.00000E-04        40094        17159       2            4:14 

  End Simulation
 command: var/13, fun=7.75849767239998300e+000
 command: var/14, fun=6.77604122488383620e+000
 command: var/15, fun=-7.75849767239998300e+000
 command: var/16, fun=-7.75849767239998300e+000
 command: var/17, fun=-7.75849767239998300e+000
 command: var/18, fun=7.75849767239998300e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.71500E+00  1.00000E-04        40094        17159       2            4:14 
   1.72000E+00  1.00000E-04        40224        17209       2            4:15 

  End Simulation
 command: var/13, fun=7.80245763015485230e+000
 command: var/14, fun=6.80564502170262830e+000
 command: var/15, fun=-7.80245763015485230e+000
 command: var/16, fun=-7.80245763015485230e+000
 command: var/17, fun=-7.80245763015485230e+000
 command: var/18, fun=7.80245763015485230e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.72000E+00  1.00000E-04        40224        17209       2            4:15 
   1.72500E+00  1.00000E-04        40358        17259       1            4:16 

  End Simulation
 command: var/13, fun=7.84653123891699880e+000
 command: var/14, fun=6.91521867872795680e+000
 command: var/15, fun=-7.84653123891699880e+000
 command: var/16, fun=-7.84653123891699880e+000
 command: var/17, fun=-7.84653123891699880e+000
 command: var/18, fun=7.84653123891699880e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.72500E+00  1.00000E-04        40358        17259       1            4:16 
   1.73000E+00  1.00000E-04        40479        17309       2            4:17 

  End Simulation
 command: var/13, fun=7.89071837998256950e+000
 command: var/14, fun=6.97299956264468430e+000
 command: var/15, fun=-7.89071837998256950e+000
 command: var/16, fun=-7.89071837998256950e+000
 command: var/17, fun=-7.89071837998256950e+000
 command: var/18, fun=7.89071837998256950e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.73000E+00  1.00000E-04        40479        17309       2            4:17 
   1.73500E+00  1.00000E-04        40608        17359       2            4:17 

  End Simulation
 command: var/13, fun=7.93501893434196410e+000
 command: var/14, fun=7.04195177657340920e+000
 command: var/15, fun=-7.93501893434196410e+000
 command: var/16, fun=-7.93501893434196410e+000
 command: var/17, fun=-7.93501893434196410e+000
 command: var/18, fun=7.93501893434196410e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.73500E+00  1.00000E-04        40608        17359       2            4:17 
   1.74000E+00  1.00000E-04        40721        17409       1            4:18 

  End Simulation
 command: var/13, fun=7.97943278268010660e+000
 command: var/14, fun=7.05892691870186970e+000
 command: var/15, fun=-7.97943278268010660e+000
 command: var/16, fun=-7.97943278268010660e+000
 command: var/17, fun=-7.97943278268010660e+000
 command: var/18, fun=7.97943278268010660e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.74000E+00  1.00000E-04        40721        17409       1            4:18 
   1.74500E+00  1.00000E-04        40837        17459       2            4:19 

  End Simulation
 command: var/13, fun=8.02395980537680130e+000
 command: var/14, fun=7.07542778332584100e+000
 command: var/15, fun=-8.02395980537680130e+000
 command: var/16, fun=-8.02395980537680130e+000
 command: var/17, fun=-8.02395980537680130e+000
 command: var/18, fun=8.02395980537680130e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.74500E+00  1.00000E-04        40837        17459       2            4:19 
   1.75000E+00  1.00000E-04        40964        17509       2            4:19 

  End Simulation
 command: var/13, fun=8.06859988250702640e+000
 command: var/14, fun=7.11434275483474820e+000
 command: var/15, fun=-8.06859988250702640e+000
 command: var/16, fun=-8.06859988250702640e+000
 command: var/17, fun=-8.06859988250702640e+000
 command: var/18, fun=8.06859988250702640e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.75000E+00  1.00000E-04        40964        17509       2            4:19 
   1.75500E+00  1.00000E-04        41090        17559       2            4:20 

  End Simulation
 command: var/13, fun=8.11335289384126850e+000
 command: var/14, fun=7.10670886169534020e+000
 command: var/15, fun=-8.11335289384126850e+000
 command: var/16, fun=-8.11335289384126850e+000
 command: var/17, fun=-8.11335289384126850e+000
 command: var/18, fun=8.11335289384126850e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.75500E+00  1.00000E-04        41090        17559       2            4:20 
   1.76000E+00  1.00000E-04        41212        17609       2            4:21 

  End Simulation
 command: var/13, fun=8.15821871884586610e+000
 command: var/14, fun=7.03295482059820910e+000
 command: var/15, fun=-8.15821871884586610e+000
 command: var/16, fun=-8.15821871884586610e+000
 command: var/17, fun=-8.15821871884586610e+000
 command: var/18, fun=8.15821871884586610e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.76000E+00  1.00000E-04        41212        17609       2            4:21 
   1.76500E+00  1.00000E-04        41330        17659       2            4:22 

  End Simulation
 command: var/13, fun=8.20319723668330700e+000
 command: var/14, fun=7.21412988379321090e+000
 command: var/15, fun=-8.20319723668330700e+000
 command: var/16, fun=-8.20319723668330700e+000
 command: var/17, fun=-8.20319723668330700e+000
 command: var/18, fun=8.20319723668330700e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.76500E+00  1.00000E-04        41330        17659       2            4:22 
   1.77000E+00  1.00000E-04        41454        17709       2            4:22 

  End Simulation
 command: var/13, fun=8.24828832621254370e+000
 command: var/14, fun=7.26360356423897800e+000
 command: var/15, fun=-8.24828832621254370e+000
 command: var/16, fun=-8.24828832621254370e+000
 command: var/17, fun=-8.24828832621254370e+000
 command: var/18, fun=8.24828832621254370e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.77000E+00  1.00000E-04        41454        17709       2            4:22 
   1.77500E+00  1.00000E-04        41584        17759       2            4:23 

  End Simulation
 command: var/13, fun=8.29349186598936150e+000
 command: var/14, fun=7.41650566134854030e+000
 command: var/15, fun=-8.29349186598936150e+000
 command: var/16, fun=-8.29349186598936150e+000
 command: var/17, fun=-8.29349186598936150e+000
 command: var/18, fun=8.29349186598936150e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.77500E+00  1.00000E-04        41584        17759       2            4:23 
   1.78000E+00  1.00000E-04        41713        17809       2            4:24 

  End Simulation
 command: var/13, fun=8.33880773426666800e+000
 command: var/14, fun=7.78318587881231580e+000
 command: var/15, fun=-8.33880773426666800e+000
 command: var/16, fun=-8.33880773426666800e+000
 command: var/17, fun=-8.33880773426666800e+000
 command: var/18, fun=8.33880773426666800e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.78000E+00  1.00000E-04        41713        17809       2            4:24 
   1.78500E+00  1.00000E-04        41843        17859       2            4:25 

  End Simulation
 command: var/13, fun=8.38423580899485010e+000
 command: var/14, fun=7.72193301037745710e+000
 command: var/15, fun=-8.38423580899485010e+000
 command: var/16, fun=-8.38423580899485010e+000
 command: var/17, fun=-8.38423580899485010e+000
 command: var/18, fun=8.38423580899485010e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.78500E+00  1.00000E-04        41843        17859       2            4:25 
   1.79000E+00  1.00000E-04        41971        17909       2            4:25 

  End Simulation
 command: var/13, fun=8.42977596782207250e+000
 command: var/14, fun=7.45290426727543660e+000
 command: var/15, fun=-8.42977596782207250e+000
 command: var/16, fun=-8.42977596782207250e+000
 command: var/17, fun=-8.42977596782207250e+000
 command: var/18, fun=8.42977596782207250e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.79000E+00  1.00000E-04        41971        17909       2            4:25 
   1.79500E+00  1.00000E-04        42096        17959       2            4:26 

  End Simulation
 command: var/13, fun=8.47542808809463290e+000
 command: var/14, fun=7.25709035971438790e+000
 command: var/15, fun=-8.47542808809463290e+000
 command: var/16, fun=-8.47542808809463290e+000
 command: var/17, fun=-8.47542808809463290e+000
 command: var/18, fun=8.47542808809463290e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.79500E+00  1.00000E-04        42096        17959       2            4:26 
   1.80000E+00  1.00000E-04        42214        18009       2            4:27 

  End Simulation
 command: var/13, fun=8.52119204685728350e+000
 command: var/14, fun=7.16832042652542880e+000
 command: var/15, fun=-8.52119204685728350e+000
 command: var/16, fun=-8.52119204685728350e+000
 command: var/17, fun=-8.52119204685728350e+000
 command: var/18, fun=8.52119204685728350e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.80000E+00  1.00000E-04        42214        18009       2            4:27 
   1.80500E+00  1.00000E-04        42344        18059       2            4:28 

  End Simulation
 command: var/13, fun=8.56706772085354370e+000
 command: var/14, fun=7.21596699691941180e+000
 command: var/15, fun=-8.56706772085354370e+000
 command: var/16, fun=-8.56706772085354370e+000
 command: var/17, fun=-8.56706772085354370e+000
 command: var/18, fun=8.56706772085354370e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.80500E+00  1.00000E-04        42344        18059       2            4:28 
   1.81000E+00  1.00000E-04        42477        18109       2            4:28 

  End Simulation
 command: var/13, fun=8.61305498652607500e+000
 command: var/14, fun=7.42752077143805510e+000
 command: var/15, fun=-8.61305498652607500e+000
 command: var/16, fun=-8.61305498652607500e+000
 command: var/17, fun=-8.61305498652607500e+000
 command: var/18, fun=8.61305498652607500e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.81000E+00  1.00000E-04        42477        18109       2            4:28 
   1.81500E+00  1.00000E-04        42604        18159       2            4:29 

  End Simulation
 command: var/13, fun=8.65915372001698280e+000
 command: var/14, fun=7.37956281088938940e+000
 command: var/15, fun=-8.65915372001698280e+000
 command: var/16, fun=-8.65915372001698280e+000
 command: var/17, fun=-8.65915372001698280e+000
 command: var/18, fun=8.65915372001698280e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.81500E+00  1.00000E-04        42604        18159       2            4:29 
   1.82000E+00  1.00000E-04        42733        18209       2            4:30 

  End Simulation
 command: var/13, fun=8.70536379716813610e+000
 command: var/14, fun=7.51611958576173220e+000
 command: var/15, fun=-8.70536379716813610e+000
 command: var/16, fun=-8.70536379716813610e+000
 command: var/17, fun=-8.70536379716813610e+000
 command: var/18, fun=8.70536379716813610e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.82000E+00  1.00000E-04        42733        18209       2            4:30 
   1.82500E+00  1.00000E-04        42861        18259       2            4:31 

  End Simulation
 command: var/13, fun=8.75168509352152140e+000
 command: var/14, fun=7.59139636777672160e+000
 command: var/15, fun=-8.75168509352152140e+000
 command: var/16, fun=-8.75168509352152140e+000
 command: var/17, fun=-8.75168509352152140e+000
 command: var/18, fun=8.75168509352152140e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.82500E+00  1.00000E-04        42861        18259       2            4:31 
   1.83000E+00  1.00000E-04        42988        18309       2            4:31 

  End Simulation
 command: var/13, fun=8.79811748431960620e+000
 command: var/14, fun=7.58978546631888660e+000
 command: var/15, fun=-8.79811748431960620e+000
 command: var/16, fun=-8.79811748431960620e+000
 command: var/17, fun=-8.79811748431960620e+000
 command: var/18, fun=8.79811748431960620e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.83000E+00  1.00000E-04        42988        18309       2            4:31 
   1.83500E+00  1.00000E-04        43116        18359       2            4:32 

  End Simulation
 command: var/13, fun=8.84466084450562560e+000
 command: var/14, fun=7.71767266231527400e+000
 command: var/15, fun=-8.84466084450562560e+000
 command: var/16, fun=-8.84466084450562560e+000
 command: var/17, fun=-8.84466084450562560e+000
 command: var/18, fun=8.84466084450562560e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.83500E+00  1.00000E-04        43116        18359       2            4:32 
   1.84000E+00  1.00000E-04        43247        18409       2            4:33 

  End Simulation
 command: var/13, fun=8.89131504872394100e+000
 command: var/14, fun=7.77974153785688660e+000
 command: var/15, fun=-8.89131504872394100e+000
 command: var/16, fun=-8.89131504872394100e+000
 command: var/17, fun=-8.89131504872394100e+000
 command: var/18, fun=8.89131504872394100e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.84000E+00  1.00000E-04        43247        18409       2            4:33 
   1.84500E+00  1.00000E-04        43380        18459       2            4:34 

  End Simulation
 command: var/13, fun=8.93807997132037360e+000
 command: var/14, fun=7.83409194410184110e+000
 command: var/15, fun=-8.93807997132037360e+000
 command: var/16, fun=-8.93807997132037360e+000
 command: var/17, fun=-8.93807997132037360e+000
 command: var/18, fun=8.93807997132037360e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.84500E+00  1.00000E-04        43380        18459       2            4:34 
   1.85000E+00  1.00000E-04        43515        18509       2            4:35 

  End Simulation
 command: var/13, fun=8.98495548634257090e+000
 command: var/14, fun=7.52226924578182300e+000
 command: var/15, fun=-8.98495548634257090e+000
 command: var/16, fun=-8.98495548634257090e+000
 command: var/17, fun=-8.98495548634257090e+000
 command: var/18, fun=8.98495548634257090e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.85000E+00  1.00000E-04        43515        18509       2            4:35 
   1.85500E+00  1.00000E-04        43649        18559       2            4:35 

  End Simulation
 command: var/13, fun=9.03194146754028360e+000
 command: var/14, fun=7.62676458544249150e+000
 command: var/15, fun=-9.03194146754028360e+000
 command: var/16, fun=-9.03194146754028360e+000
 command: var/17, fun=-9.03194146754028360e+000
 command: var/18, fun=9.03194146754028360e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.85500E+00  1.00000E-04        43649        18559       2            4:35 
   1.86000E+00  1.00000E-04        43771        18609       2            4:36 

  End Simulation
 command: var/13, fun=9.07903778836576340e+000
 command: var/14, fun=7.71375955675282570e+000
 command: var/15, fun=-9.07903778836576340e+000
 command: var/16, fun=-9.07903778836576340e+000
 command: var/17, fun=-9.07903778836576340e+000
 command: var/18, fun=9.07903778836576340e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.86000E+00  1.00000E-04        43771        18609       2            4:36 
   1.86500E+00  1.00000E-04        43909        18659       2            4:37 

  End Simulation
 command: var/13, fun=9.12624432197408630e+000
 command: var/14, fun=7.77636967986440910e+000
 command: var/15, fun=-9.12624432197408630e+000
 command: var/16, fun=-9.12624432197408630e+000
 command: var/17, fun=-9.12624432197408630e+000
 command: var/18, fun=9.12624432197408630e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.86500E+00  1.00000E-04        43909        18659       2            4:37 
   1.87000E+00  1.00000E-04        44037        18709       2            4:38 

  End Simulation
 command: var/13, fun=9.17356094122347980e+000
 command: var/14, fun=7.82116597760976710e+000
 command: var/15, fun=-9.17356094122347980e+000
 command: var/16, fun=-9.17356094122347980e+000
 command: var/17, fun=-9.17356094122347980e+000
 command: var/18, fun=9.17356094122347980e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.87000E+00  1.00000E-04        44037        18709       2            4:38 
   1.87500E+00  1.00000E-04        44164        18759       1            4:38 

  End Simulation
 command: var/13, fun=9.22098751867568290e+000
 command: var/14, fun=7.81814256935942000e+000
 command: var/15, fun=-9.22098751867568290e+000
 command: var/16, fun=-9.22098751867568290e+000
 command: var/17, fun=-9.22098751867568290e+000
 command: var/18, fun=9.22098751867568290e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.87500E+00  1.00000E-04        44164        18759       1            4:38 
   1.88000E+00  1.00000E-04        44273        18809       1            4:39 

  End Simulation
 command: var/13, fun=9.26852392659628420e+000
 command: var/14, fun=7.70808571797359040e+000
 command: var/15, fun=-9.26852392659628420e+000
 command: var/16, fun=-9.26852392659628420e+000
 command: var/17, fun=-9.26852392659628420e+000
 command: var/18, fun=9.26852392659628420e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.88000E+00  1.00000E-04        44273        18809       1            4:39 
   1.88500E+00  1.00000E-04        44397        18859       1            4:40 

  End Simulation
 command: var/13, fun=9.31617003695506260e+000
 command: var/14, fun=7.56171382508287950e+000
 command: var/15, fun=-9.31617003695506260e+000
 command: var/16, fun=-9.31617003695506260e+000
 command: var/17, fun=-9.31617003695506260e+000
 command: var/18, fun=9.31617003695506260e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.88500E+00  1.00000E-04        44397        18859       1            4:40 
   1.89000E+00  1.00000E-04        44522        18909       2            4:41 

  End Simulation
 command: var/13, fun=9.36392572142633030e+000
 command: var/14, fun=7.85402834678805290e+000
 command: var/15, fun=-9.36392572142633030e+000
 command: var/16, fun=-9.36392572142633030e+000
 command: var/17, fun=-9.36392572142633030e+000
 command: var/18, fun=9.36392572142633030e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.89000E+00  1.00000E-04        44522        18909       2            4:41 
   1.89500E+00  1.00000E-04        44655        18959       2            4:41 

  End Simulation
 command: var/13, fun=9.41179085138930740e+000
 command: var/14, fun=7.79986914641712040e+000
 command: var/15, fun=-9.41179085138930740e+000
 command: var/16, fun=-9.41179085138930740e+000
 command: var/17, fun=-9.41179085138930740e+000
 command: var/18, fun=9.41179085138930740e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.89500E+00  1.00000E-04        44655        18959       2            4:41 
   1.90000E+00  1.00000E-04        44768        19009       1            4:42 

  End Simulation
 command: var/13, fun=9.45976529792840280e+000
 command: var/14, fun=7.67090231078396820e+000
 command: var/15, fun=-9.45976529792840280e+000
 command: var/16, fun=-9.45976529792840280e+000
 command: var/17, fun=-9.45976529792840280e+000
 command: var/18, fun=9.45976529792840280e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.90000E+00  1.00000E-04        44768        19009       1            4:42 
   1.90500E+00  1.00000E-04        44890        19059       2            4:43 

  End Simulation
 command: var/13, fun=9.50784893183364050e+000
 command: var/14, fun=7.76719351119244550e+000
 command: var/15, fun=-9.50784893183364050e+000
 command: var/16, fun=-9.50784893183364050e+000
 command: var/17, fun=-9.50784893183364050e+000
 command: var/18, fun=9.50784893183364050e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.90500E+00  1.00000E-04        44890        19059       2            4:43 
   1.91000E+00  1.00000E-04        45011        19109       2            4:43 

  End Simulation
 command: var/13, fun=9.55604162360092420e+000
 command: var/14, fun=8.02473551606170690e+000
 command: var/15, fun=-9.55604162360092420e+000
 command: var/16, fun=-9.55604162360092420e+000
 command: var/17, fun=-9.55604162360092420e+000
 command: var/18, fun=9.55604162360092420e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.91000E+00  1.00000E-04        45011        19109       2            4:43 
   1.91500E+00  1.00000E-04        45134        19159       2            4:44 

  End Simulation
 command: var/13, fun=9.60434324343248310e+000
 command: var/14, fun=7.60054232170005410e+000
 command: var/15, fun=-9.60434324343248310e+000
 command: var/16, fun=-9.60434324343248310e+000
 command: var/17, fun=-9.60434324343248310e+000
 command: var/18, fun=9.60434324343248310e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.91500E+00  1.00000E-04        45134        19159       2            4:44 
   1.92000E+00  1.00000E-04        45257        19209       2            4:45 

  End Simulation
 command: var/13, fun=9.65275366123714030e+000
 command: var/14, fun=7.57117711023973690e+000
 command: var/15, fun=-9.65275366123714030e+000
 command: var/16, fun=-9.65275366123714030e+000
 command: var/17, fun=-9.65275366123714030e+000
 command: var/18, fun=9.65275366123714030e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.92000E+00  1.00000E-04        45257        19209       2            4:45 
   1.92500E+00  1.00000E-04        45391        19259       2            4:46 

  End Simulation
 command: var/13, fun=9.70127274663069090e+000
 command: var/14, fun=7.44569729873774120e+000
 command: var/15, fun=-9.70127274663069090e+000
 command: var/16, fun=-9.70127274663069090e+000
 command: var/17, fun=-9.70127274663069090e+000
 command: var/18, fun=9.70127274663069090e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.92500E+00  1.00000E-04        45391        19259       2            4:46 
   1.93000E+00  1.00000E-04        45524        19309       2            4:47 

  End Simulation
 command: var/13, fun=9.74990036893625960e+000
 command: var/14, fun=7.43108434771907330e+000
 command: var/15, fun=-9.74990036893625960e+000
 command: var/16, fun=-9.74990036893625960e+000
 command: var/17, fun=-9.74990036893625960e+000
 command: var/18, fun=9.74990036893625960e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.93000E+00  1.00000E-04        45524        19309       2            4:47 
   1.93500E+00  1.00000E-04        45647        19359       2            4:47 

  End Simulation
 command: var/13, fun=9.79863639718465680e+000
 command: var/14, fun=7.31641074085118780e+000
 command: var/15, fun=-9.79863639718465680e+000
 command: var/16, fun=-9.79863639718465680e+000
 command: var/17, fun=-9.79863639718465680e+000
 command: var/18, fun=9.79863639718465680e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.93500E+00  1.00000E-04        45647        19359       2            4:47 
   1.94000E+00  1.00000E-04        45777        19409       2            4:48 

  End Simulation
 command: var/13, fun=9.84748070011471380e+000
 command: var/14, fun=7.38266345799318560e+000
 command: var/15, fun=-9.84748070011471380e+000
 command: var/16, fun=-9.84748070011471380e+000
 command: var/17, fun=-9.84748070011471380e+000
 command: var/18, fun=9.84748070011471380e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.94000E+00  1.00000E-04        45777        19409       2            4:48 
   1.94500E+00  1.00000E-04        45907        19459       2            4:49 

  End Simulation
 command: var/13, fun=9.89643314617364920e+000
 command: var/14, fun=7.40396010703786620e+000
 command: var/15, fun=-9.89643314617364920e+000
 command: var/16, fun=-9.89643314617364920e+000
 command: var/17, fun=-9.89643314617364920e+000
 command: var/18, fun=9.89643314617364920e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.94500E+00  1.00000E-04        45907        19459       2            4:49 
   1.95000E+00  1.00000E-04        46036        19509       2            4:50 

  End Simulation
 command: var/13, fun=9.94549360351740750e+000
 command: var/14, fun=7.30549266978565280e+000
 command: var/15, fun=-9.94549360351740750e+000
 command: var/16, fun=-9.94549360351740750e+000
 command: var/17, fun=-9.94549360351740750e+000
 command: var/18, fun=9.94549360351740750e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.95000E+00  1.00000E-04        46036        19509       2            4:50 
   1.95500E+00  1.00000E-04        46169        19559       2            4:50 

  End Simulation
 command: var/13, fun=9.99466194001103500e+000
 command: var/14, fun=7.19687705988908540e+000
 command: var/15, fun=-9.99466194001103500e+000
 command: var/16, fun=-9.99466194001103500e+000
 command: var/17, fun=-9.99466194001103500e+000
 command: var/18, fun=9.99466194001103500e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.95500E+00  1.00000E-04        46169        19559       2            4:50 
   1.96000E+00  1.00000E-04        46294        19609       2            4:51 

  End Simulation
 command: var/13, fun=1.00439380232290210e+001
 command: var/14, fun=7.09464054871765180e+000
 command: var/15, fun=-1.00439380232290210e+001
 command: var/16, fun=-1.00439380232290210e+001
 command: var/17, fun=-1.00439380232290210e+001
 command: var/18, fun=1.00439380232290210e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.96000E+00  1.00000E-04        46294        19609       2            4:51 
   1.96500E+00  1.00000E-04        46420        19659       2            4:52 

  End Simulation
 command: var/13, fun=1.00933217204556660e+001
 command: var/14, fun=7.24123152110555070e+000
 command: var/15, fun=-1.00933217204556660e+001
 command: var/16, fun=-1.00933217204556660e+001
 command: var/17, fun=-1.00933217204556660e+001
 command: var/18, fun=1.00933217204556660e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.96500E+00  1.00000E-04        46420        19659       2            4:52 
   1.97000E+00  1.00000E-04        46539        19709       2            4:53 

  End Simulation
 command: var/13, fun=1.01428128986854330e+001
 command: var/14, fun=7.14418307246094480e+000
 command: var/15, fun=-1.01428128986854330e+001
 command: var/16, fun=-1.01428128986854330e+001
 command: var/17, fun=-1.01428128986854330e+001
 command: var/18, fun=1.01428128986854330e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.97000E+00  1.00000E-04        46539        19709       2            4:53 
   1.97500E+00  1.00000E-04        46671        19759       2            4:53 

  End Simulation
 command: var/13, fun=1.01924114246232930e+001
 command: var/14, fun=7.18174432878346370e+000
 command: var/15, fun=-1.01924114246232930e+001
 command: var/16, fun=-1.01924114246232930e+001
 command: var/17, fun=-1.01924114246232930e+001
 command: var/18, fun=1.01924114246232930e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.97500E+00  1.00000E-04        46671        19759       2            4:53 
   1.98000E+00  1.00000E-04        46793        19809       2            4:54 

  End Simulation
 command: var/13, fun=1.02421171646851050e+001
 command: var/14, fun=7.46637593834783520e+000
 command: var/15, fun=-1.02421171646851050e+001
 command: var/16, fun=-1.02421171646851050e+001
 command: var/17, fun=-1.02421171646851050e+001
 command: var/18, fun=1.02421171646851050e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.98000E+00  1.00000E-04        46793        19809       2            4:54 
   1.98500E+00  1.00000E-04        46918        19859       1            4:55 

  End Simulation
 command: var/13, fun=1.02919299849979780e+001
 command: var/14, fun=7.35245583780021320e+000
 command: var/15, fun=-1.02919299849979780e+001
 command: var/16, fun=-1.02919299849979780e+001
 command: var/17, fun=-1.02919299849979780e+001
 command: var/18, fun=1.02919299849979780e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.98500E+00  1.00000E-04        46918        19859       1            4:55 
   1.99000E+00  1.00000E-04        47052        19909       2            4:56 

  End Simulation
 command: var/13, fun=1.03418497514006060e+001
 command: var/14, fun=7.03302962102011890e+000
 command: var/15, fun=-1.03418497514006060e+001
 command: var/16, fun=-1.03418497514006060e+001
 command: var/17, fun=-1.03418497514006060e+001
 command: var/18, fun=1.03418497514006060e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.99000E+00  1.00000E-04        47052        19909       2            4:56 
   1.99500E+00  1.00000E-04        47172        19959       2            4:56 

  End Simulation
 command: var/13, fun=1.03918763294436560e+001
 command: var/14, fun=6.85178259465052350e+000
 command: var/15, fun=-1.03918763294436560e+001
 command: var/16, fun=-1.03918763294436560e+001
 command: var/17, fun=-1.03918763294436560e+001
 command: var/18, fun=1.03918763294436560e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.99500E+00  1.00000E-04        47172        19959       2            4:56 
   2.00000E+00  1.00000E-04        47299        20009       2            4:57 

  End Simulation
 command: var/13, fun=1.04420095843901000e+001
 command: var/14, fun=6.79396971060619050e+000
 command: var/15, fun=-1.04420095843901000e+001
 command: var/16, fun=-1.04420095843901000e+001
 command: var/17, fun=-1.04420095843901000e+001
 command: var/18, fun=1.04420095843901000e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.00000E+00  1.00000E-04        47299        20009       2            4:57 
   2.00500E+00  1.00000E-04        47424        20059       2            4:58 

  End Simulation
 command: var/13, fun=1.04922493812156080e+001
 command: var/14, fun=6.74686896944816540e+000
 command: var/15, fun=-1.04922493812156080e+001
 command: var/16, fun=-1.04922493812156080e+001
 command: var/17, fun=-1.04922493812156080e+001
 command: var/18, fun=1.04922493812156080e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.00500E+00  1.00000E-04        47424        20059       2            4:58 
   2.01000E+00  1.00000E-04        47549        20109       2            4:59 

  End Simulation
 command: var/13, fun=1.05425955846089110e+001
 command: var/14, fun=6.76058570592609250e+000
 command: var/15, fun=-1.05425955846089110e+001
 command: var/16, fun=-1.05425955846089110e+001
 command: var/17, fun=-1.05425955846089110e+001
 command: var/18, fun=1.05425955846089110e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.01000E+00  1.00000E-04        47549        20109       2            4:59 
   2.01500E+00  1.00000E-04        47677        20159       2            4:59 

  End Simulation
 command: var/13, fun=1.05930480589721260e+001
 command: var/14, fun=6.56340125645883090e+000
 command: var/15, fun=-1.05930480589721260e+001
 command: var/16, fun=-1.05930480589721260e+001
 command: var/17, fun=-1.05930480589721260e+001
 command: var/18, fun=1.05930480589721260e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.01500E+00  1.00000E-04        47677        20159       2            4:59 
   2.02000E+00  1.00000E-04        47797        20209       2            5:00 

  End Simulation
 command: var/13, fun=1.06436066684211620e+001
 command: var/14, fun=6.43377783874366570e+000
 command: var/15, fun=-1.06436066684211620e+001
 command: var/16, fun=-1.06436066684211620e+001
 command: var/17, fun=-1.06436066684211620e+001
 command: var/18, fun=1.06436066684211620e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.02000E+00  1.00000E-04        47797        20209       2            5:00 
   2.02500E+00  1.00000E-04        47920        20259       2            5:01 

  End Simulation
 command: var/13, fun=1.06942712767860930e+001
 command: var/14, fun=6.73928265598200400e+000
 command: var/15, fun=-1.06942712767860930e+001
 command: var/16, fun=-1.06942712767860930e+001
 command: var/17, fun=-1.06942712767860930e+001
 command: var/18, fun=1.06942712767860930e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.02500E+00  1.00000E-04        47920        20259       2            5:01 
   2.03000E+00  1.00000E-04        48050        20309       2            5:02 

  End Simulation
 command: var/13, fun=1.07450417476114900e+001
 command: var/14, fun=7.02086397805532590e+000
 command: var/15, fun=-1.07450417476114900e+001
 command: var/16, fun=-1.07450417476114900e+001
 command: var/17, fun=-1.07450417476114900e+001
 command: var/18, fun=1.07450417476114900e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.03000E+00  1.00000E-04        48050        20309       2            5:02 
   2.03500E+00  1.00000E-04        48189        20359       2            5:02 

  End Simulation
 command: var/13, fun=1.07959179441567910e+001
 command: var/14, fun=7.10850377191121120e+000
 command: var/15, fun=-1.07959179441567910e+001
 command: var/16, fun=-1.07959179441567910e+001
 command: var/17, fun=-1.07959179441567910e+001
 command: var/18, fun=1.07959179441567910e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.03500E+00  1.00000E-04        48189        20359       2            5:02 
   2.04000E+00  1.00000E-04        48318        20409       2            5:03 

  End Simulation
 command: var/13, fun=1.08468997293967040e+001
 command: var/14, fun=7.17225349213967260e+000
 command: var/15, fun=-1.08468997293967040e+001
 command: var/16, fun=-1.08468997293967040e+001
 command: var/17, fun=-1.08468997293967040e+001
 command: var/18, fun=1.08468997293967040e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.04000E+00  1.00000E-04        48318        20409       2            5:03 
   2.04500E+00  1.00000E-04        48438        20459       2            5:04 

  End Simulation
 command: var/13, fun=1.08979869660215400e+001
 command: var/14, fun=7.42558113470886210e+000
 command: var/15, fun=-1.08979869660215400e+001
 command: var/16, fun=-1.08979869660215400e+001
 command: var/17, fun=-1.08979869660215400e+001
 command: var/18, fun=1.08979869660215400e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.04500E+00  1.00000E-04        48438        20459       2            5:04 
   2.05000E+00  1.00000E-04        48557        20509       2            5:05 

  End Simulation
 command: var/13, fun=1.09491795164375960e+001
 command: var/14, fun=7.34906097392155470e+000
 command: var/15, fun=-1.09491795164375960e+001
 command: var/16, fun=-1.09491795164375960e+001
 command: var/17, fun=-1.09491795164375960e+001
 command: var/18, fun=1.09491795164375960e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.05000E+00  1.00000E-04        48557        20509       2            5:05 
   2.05500E+00  1.00000E-04        48678        20559       2            5:05 

  End Simulation
 command: var/13, fun=1.10004772427675430e+001
 command: var/14, fun=7.17135777469831930e+000
 command: var/15, fun=-1.10004772427675430e+001
 command: var/16, fun=-1.10004772427675430e+001
 command: var/17, fun=-1.10004772427675430e+001
 command: var/18, fun=1.10004772427675430e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.05500E+00  1.00000E-04        48678        20559       2            5:05 
   2.06000E+00  1.00000E-04        48797        20609       2            5:06 

  End Simulation
 command: var/13, fun=1.10518800068507620e+001
 command: var/14, fun=7.08069913752779370e+000
 command: var/15, fun=-1.10518800068507620e+001
 command: var/16, fun=-1.10518800068507620e+001
 command: var/17, fun=-1.10518800068507620e+001
 command: var/18, fun=1.10518800068507620e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.06000E+00  1.00000E-04        48797        20609       2            5:06 
   2.06500E+00  1.00000E-04        48916        20659       2            5:07 

  End Simulation
 command: var/13, fun=1.11033876702437410e+001
 command: var/14, fun=6.76617275776173970e+000
 command: var/15, fun=-1.11033876702437410e+001
 command: var/16, fun=-1.11033876702437410e+001
 command: var/17, fun=-1.11033876702437410e+001
 command: var/18, fun=1.11033876702437410e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.06500E+00  1.00000E-04        48916        20659       2            5:07 
   2.07000E+00  1.00000E-04        49041        20709       2            5:08 

  End Simulation
 command: var/13, fun=1.11550000942204460e+001
 command: var/14, fun=6.88953895975314530e+000
 command: var/15, fun=-1.11550000942204460e+001
 command: var/16, fun=-1.11550000942204460e+001
 command: var/17, fun=-1.11550000942204460e+001
 command: var/18, fun=1.11550000942204460e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.07000E+00  1.00000E-04        49041        20709       2            5:08 
   2.07500E+00  1.00000E-04        49158        20759       2            5:08 

  End Simulation
 command: var/13, fun=1.12067171397726870e+001
 command: var/14, fun=7.04977386258577980e+000
 command: var/15, fun=-1.12067171397726870e+001
 command: var/16, fun=-1.12067171397726870e+001
 command: var/17, fun=-1.12067171397726870e+001
 command: var/18, fun=1.12067171397726870e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.07500E+00  1.00000E-04        49158        20759       2            5:08 
   2.08000E+00  1.00000E-04        49278        20809       2            5:09 

  End Simulation
 command: var/13, fun=1.12585386676105020e+001
 command: var/14, fun=7.11717675299856100e+000
 command: var/15, fun=-1.12585386676105020e+001
 command: var/16, fun=-1.12585386676105020e+001
 command: var/17, fun=-1.12585386676105020e+001
 command: var/18, fun=1.12585386676105020e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.08000E+00  1.00000E-04        49278        20809       2            5:09 
   2.08500E+00  1.00000E-04        49392        20859       2            5:10 

  End Simulation
 command: var/13, fun=1.13104645381625010e+001
 command: var/14, fun=7.39210134295756300e+000
 command: var/15, fun=-1.13104645381625010e+001
 command: var/16, fun=-1.13104645381625010e+001
 command: var/17, fun=-1.13104645381625010e+001
 command: var/18, fun=1.13104645381625010e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.08500E+00  1.00000E-04        49392        20859       2            5:10 
   2.09000E+00  1.00000E-04        49515        20909       2            5:11 

  End Simulation
 command: var/13, fun=1.13624946115763020e+001
 command: var/14, fun=7.24670009910797570e+000
 command: var/15, fun=-1.13624946115763020e+001
 command: var/16, fun=-1.13624946115763020e+001
 command: var/17, fun=-1.13624946115763020e+001
 command: var/18, fun=1.13624946115763020e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.09000E+00  1.00000E-04        49515        20909       2            5:11 
   2.09500E+00  1.00000E-04        49631        20959       2            5:11 

  End Simulation
 command: var/13, fun=1.14146287477188630e+001
 command: var/14, fun=6.88005382681585060e+000
 command: var/15, fun=-1.14146287477188630e+001
 command: var/16, fun=-1.14146287477188630e+001
 command: var/17, fun=-1.14146287477188630e+001
 command: var/18, fun=1.14146287477188630e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.09500E+00  1.00000E-04        49631        20959       2            5:11 
   2.10000E+00  1.00000E-04        49760        21009       2            5:12 

  End Simulation
 command: var/13, fun=1.14668668061768400e+001
 command: var/14, fun=6.75769098397410420e+000
 command: var/15, fun=-1.14668668061768400e+001
 command: var/16, fun=-1.14668668061768400e+001
 command: var/17, fun=-1.14668668061768400e+001
 command: var/18, fun=1.14668668061768400e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.10000E+00  1.00000E-04        49760        21009       2            5:12 
   2.10500E+00  1.00000E-04        49885        21059       2            5:13 

  End Simulation
 command: var/13, fun=1.15192086462570340e+001
 command: var/14, fun=6.65267794674780260e+000
 command: var/15, fun=-1.15192086462570340e+001
 command: var/16, fun=-1.15192086462570340e+001
 command: var/17, fun=-1.15192086462570340e+001
 command: var/18, fun=1.15192086462570340e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.10500E+00  1.00000E-04        49885        21059       2            5:13 
   2.11000E+00  1.00000E-04        50004        21109       2            5:14 

  End Simulation
 command: var/13, fun=1.15716541269867080e+001
 command: var/14, fun=6.96109997273493160e+000
 command: var/15, fun=-1.15716541269867080e+001
 command: var/16, fun=-1.15716541269867080e+001
 command: var/17, fun=-1.15716541269867080e+001
 command: var/18, fun=1.15716541269867080e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.11000E+00  1.00000E-04        50004        21109       2            5:14 
   2.11500E+00  1.00000E-04        50121        21159       2            5:14 

  End Simulation
 command: var/13, fun=1.16242031071139850e+001
 command: var/14, fun=7.59250885713516870e+000
 command: var/15, fun=-1.16242031071139850e+001
 command: var/16, fun=-1.16242031071139850e+001
 command: var/17, fun=-1.16242031071139850e+001
 command: var/18, fun=1.16242031071139850e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.11500E+00  1.00000E-04        50121        21159       2            5:14 
   2.12000E+00  1.00000E-04        50241        21209       2            5:15 

  End Simulation
 command: var/13, fun=1.16768554451082650e+001
 command: var/14, fun=8.11913320301742300e+000
 command: var/15, fun=-1.16768554451082650e+001
 command: var/16, fun=-1.16768554451082650e+001
 command: var/17, fun=-1.16768554451082650e+001
 command: var/18, fun=1.16768554451082650e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.12000E+00  1.00000E-04        50241        21209       2            5:15 
   2.12500E+00  1.00000E-04        50363        21259       2            5:16 

  End Simulation
 command: var/13, fun=1.17296109991605170e+001
 command: var/14, fun=7.76918077722634950e+000
 command: var/15, fun=-1.17296109991605170e+001
 command: var/16, fun=-1.17296109991605170e+001
 command: var/17, fun=-1.17296109991605170e+001
 command: var/18, fun=1.17296109991605170e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.12500E+00  1.00000E-04        50363        21259       2            5:16 
   2.13000E+00  1.00000E-04        50481        21309       2            5:17 

  End Simulation
 command: var/13, fun=1.17824696271837780e+001
 command: var/14, fun=7.46370666858517320e+000
 command: var/15, fun=-1.17824696271837780e+001
 command: var/16, fun=-1.17824696271837780e+001
 command: var/17, fun=-1.17824696271837780e+001
 command: var/18, fun=1.17824696271837780e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.13000E+00  1.00000E-04        50481        21309       2            5:17 
   2.13500E+00  1.00000E-04        50607        21359       2            5:17 

  End Simulation
 command: var/13, fun=1.18354311868134270e+001
 command: var/14, fun=7.65394062959448540e+000
 command: var/15, fun=-1.18354311868134270e+001
 command: var/16, fun=-1.18354311868134270e+001
 command: var/17, fun=-1.18354311868134270e+001
 command: var/18, fun=1.18354311868134270e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.13500E+00  1.00000E-04        50607        21359       2            5:17 
   2.14000E+00  1.00000E-04        50730        21409       2            5:18 

  End Simulation
 command: var/13, fun=1.18884955354076340e+001
 command: var/14, fun=7.68326943419824020e+000
 command: var/15, fun=-1.18884955354076340e+001
 command: var/16, fun=-1.18884955354076340e+001
 command: var/17, fun=-1.18884955354076340e+001
 command: var/18, fun=1.18884955354076340e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.14000E+00  1.00000E-04        50730        21409       2            5:18 
   2.14500E+00  1.00000E-04        50851        21459       2            5:19 

  End Simulation
 command: var/13, fun=1.19416625300477420e+001
 command: var/14, fun=8.09558763025328430e+000
 command: var/15, fun=-1.19416625300477420e+001
 command: var/16, fun=-1.19416625300477420e+001
 command: var/17, fun=-1.19416625300477420e+001
 command: var/18, fun=1.19416625300477420e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.14500E+00  1.00000E-04        50851        21459       2            5:19 
   2.15000E+00  1.00000E-04        50988        21509       3            5:20 

  End Simulation
 command: var/13, fun=1.19949320275386240e+001
 command: var/14, fun=8.23310488781545220e+000
 command: var/15, fun=-1.19949320275386240e+001
 command: var/16, fun=-1.19949320275386240e+001
 command: var/17, fun=-1.19949320275386240e+001
 command: var/18, fun=1.19949320275386240e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.15000E+00  1.00000E-04        50988        21509       3            5:20 
   2.15500E+00  1.00000E-04        51112        21559       2            5:21 

  End Simulation
 command: var/13, fun=1.20483038844090680e+001
 command: var/14, fun=7.73371989328916780e+000
 command: var/15, fun=-1.20483038844090680e+001
 command: var/16, fun=-1.20483038844090680e+001
 command: var/17, fun=-1.20483038844090680e+001
 command: var/18, fun=1.20483038844090680e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.15500E+00  1.00000E-04        51112        21559       2            5:21 
   2.16000E+00  1.00000E-04        51236        21609       2            5:21 

  End Simulation
 command: var/13, fun=1.21017779569121910e+001
 command: var/14, fun=7.68227304192204490e+000
 command: var/15, fun=-1.21017779569121910e+001
 command: var/16, fun=-1.21017779569121910e+001
 command: var/17, fun=-1.21017779569121910e+001
 command: var/18, fun=1.21017779569121910e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.16000E+00  1.00000E-04        51236        21609       2            5:21 
   2.16500E+00  1.00000E-04        51355        21659       2            5:22 

  End Simulation
 command: var/13, fun=1.21553541010258110e+001
 command: var/14, fun=8.27455646084466600e+000
 command: var/15, fun=-1.21553541010258110e+001
 command: var/16, fun=-1.21553541010258110e+001
 command: var/17, fun=-1.21553541010258110e+001
 command: var/18, fun=1.21553541010258110e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.16500E+00  1.00000E-04        51355        21659       2            5:22 
   2.17000E+00  1.00000E-04        51478        21709       2            5:23 

  End Simulation
 command: var/13, fun=1.22090321724528330e+001
 command: var/14, fun=8.36954578511684840e+000
 command: var/15, fun=-1.22090321724528330e+001
 command: var/16, fun=-1.22090321724528330e+001
 command: var/17, fun=-1.22090321724528330e+001
 command: var/18, fun=1.22090321724528330e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.17000E+00  1.00000E-04        51478        21709       2            5:23 
   2.17500E+00  1.00000E-04        51594        21759       2            5:24 

  End Simulation
 command: var/13, fun=1.22628120266216490e+001
 command: var/14, fun=8.95362492451590870e+000
 command: var/15, fun=-1.22628120266216490e+001
 command: var/16, fun=-1.22628120266216490e+001
 command: var/17, fun=-1.22628120266216490e+001
 command: var/18, fun=1.22628120266216490e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.17500E+00  1.00000E-04        51594        21759       2            5:24 
   2.18000E+00  1.00000E-04        51718        21809       2            5:24 

  End Simulation
 command: var/13, fun=1.23166935186864950e+001
 command: var/14, fun=8.80613079179956060e+000
 command: var/15, fun=-1.23166935186864950e+001
 command: var/16, fun=-1.23166935186864950e+001
 command: var/17, fun=-1.23166935186864950e+001
 command: var/18, fun=1.23166935186864950e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.18000E+00  1.00000E-04        51718        21809       2            5:24 
   2.18500E+00  1.00000E-04        51840        21859       2            5:25 

  End Simulation
 command: var/13, fun=1.23706765035278940e+001
 command: var/14, fun=8.62610504639493310e+000
 command: var/15, fun=-1.23706765035278940e+001
 command: var/16, fun=-1.23706765035278940e+001
 command: var/17, fun=-1.23706765035278940e+001
 command: var/18, fun=1.23706765035278940e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.18500E+00  1.00000E-04        51840        21859       2            5:25 
   2.19000E+00  1.00000E-04        51956        21909       2            5:26 

  End Simulation
 command: var/13, fun=1.24247608357530020e+001
 command: var/14, fun=8.95977761832498840e+000
 command: var/15, fun=-1.24247608357530020e+001
 command: var/16, fun=-1.24247608357530020e+001
 command: var/17, fun=-1.24247608357530020e+001
 command: var/18, fun=1.24247608357530020e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.19000E+00  1.00000E-04        51956        21909       2            5:26 
   2.19500E+00  1.00000E-04        52097        21959       2            5:27 

  End Simulation
 command: var/13, fun=1.24789463696960040e+001
 command: var/14, fun=9.29324420202997810e+000
 command: var/15, fun=-1.24789463696960040e+001
 command: var/16, fun=-1.24789463696960040e+001
 command: var/17, fun=-1.24789463696960040e+001
 command: var/18, fun=1.24789463696960040e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.19500E+00  1.00000E-04        52097        21959       2            5:27 
   2.20000E+00  1.00000E-04        52216        22009       2            5:27 

  End Simulation
 command: var/13, fun=1.25332329594185550e+001
 command: var/14, fun=8.88803052280055180e+000
 command: var/15, fun=-1.25332329594185550e+001
 command: var/16, fun=-1.25332329594185550e+001
 command: var/17, fun=-1.25332329594185550e+001
 command: var/18, fun=1.25332329594185550e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.20000E+00  1.00000E-04        52216        22009       2            5:27 
   2.20500E+00  1.00000E-04        52341        22059       2            5:28 

  End Simulation
 command: var/13, fun=1.25876204587100910e+001
 command: var/14, fun=8.42445930509859940e+000
 command: var/15, fun=-1.25876204587100910e+001
 command: var/16, fun=-1.25876204587100910e+001
 command: var/17, fun=-1.25876204587100910e+001
 command: var/18, fun=1.25876204587100910e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.20500E+00  1.00000E-04        52341        22059       2            5:28 
   2.21000E+00  1.00000E-04        52466        22109       2            5:29 

  End Simulation
 command: var/13, fun=1.26421087210883020e+001
 command: var/14, fun=8.65004951768828610e+000
 command: var/15, fun=-1.26421087210883020e+001
 command: var/16, fun=-1.26421087210883020e+001
 command: var/17, fun=-1.26421087210883020e+001
 command: var/18, fun=1.26421087210883020e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.21000E+00  1.00000E-04        52466        22109       2            5:29 
   2.21500E+00  1.00000E-04        52588        22159       2            5:30 

  End Simulation
 command: var/13, fun=1.26966975997994670e+001
 command: var/14, fun=8.97664397437000440e+000
 command: var/15, fun=-1.26966975997994670e+001
 command: var/16, fun=-1.26966975997994670e+001
 command: var/17, fun=-1.26966975997994670e+001
 command: var/18, fun=1.26966975997994670e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.21500E+00  1.00000E-04        52588        22159       2            5:30 
   2.22000E+00  1.00000E-04        52706        22209       2            5:30 

  End Simulation
 command: var/13, fun=1.27513869478188990e+001
 command: var/14, fun=9.28986335708880870e+000
 command: var/15, fun=-1.27513869478188990e+001
 command: var/16, fun=-1.27513869478188990e+001
 command: var/17, fun=-1.27513869478188990e+001
 command: var/18, fun=1.27513869478188990e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.22000E+00  1.00000E-04        52706        22209       2            5:30 
   2.22500E+00  1.00000E-04        52846        22259       3            5:31 

  End Simulation
 command: var/13, fun=1.28061766178512780e+001
 command: var/14, fun=9.17522615413070320e+000
 command: var/15, fun=-1.28061766178512780e+001
 command: var/16, fun=-1.28061766178512780e+001
 command: var/17, fun=-1.28061766178512780e+001
 command: var/18, fun=1.28061766178512780e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.22500E+00  1.00000E-04        52846        22259       3            5:31 
   2.23000E+00  1.00000E-04        52970        22309       2            5:32 

  End Simulation
 command: var/13, fun=1.28610664623311270e+001
 command: var/14, fun=9.22968418147281790e+000
 command: var/15, fun=-1.28610664623311270e+001
 command: var/16, fun=-1.28610664623311270e+001
 command: var/17, fun=-1.28610664623311270e+001
 command: var/18, fun=1.28610664623311270e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.23000E+00  1.00000E-04        52970        22309       2            5:32 
   2.23500E+00  1.00000E-04        53090        22359       3            5:33 

  End Simulation
 command: var/13, fun=1.29160563334231480e+001
 command: var/14, fun=9.51726216776409470e+000
 command: var/15, fun=-1.29160563334231480e+001
 command: var/16, fun=-1.29160563334231480e+001
 command: var/17, fun=-1.29160563334231480e+001
 command: var/18, fun=1.29160563334231480e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.23500E+00  1.00000E-04        53090        22359       3            5:33 
   2.24000E+00  1.00000E-04        53211        22409       2            5:34 

  End Simulation
 command: var/13, fun=1.29711460830226390e+001
 command: var/14, fun=9.54416294484704150e+000
 command: var/15, fun=-1.29711460830226390e+001
 command: var/16, fun=-1.29711460830226390e+001
 command: var/17, fun=-1.29711460830226390e+001
 command: var/18, fun=1.29711460830226390e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.24000E+00  1.00000E-04        53211        22409       2            5:34 
   2.24500E+00  1.00000E-04        53326        22459       2            5:34 

  End Simulation
 command: var/13, fun=1.30263355627559140e+001
 command: var/14, fun=9.31317960629004560e+000
 command: var/15, fun=-1.30263355627559140e+001
 command: var/16, fun=-1.30263355627559140e+001
 command: var/17, fun=-1.30263355627559140e+001
 command: var/18, fun=1.30263355627559140e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.24500E+00  1.00000E-04        53326        22459       2            5:34 
   2.25000E+00  1.00000E-04        53442        22509       2            5:35 

  End Simulation
 command: var/13, fun=1.30816246239806590e+001
 command: var/14, fun=9.30690290177469490e+000
 command: var/15, fun=-1.30816246239806590e+001
 command: var/16, fun=-1.30816246239806590e+001
 command: var/17, fun=-1.30816246239806590e+001
 command: var/18, fun=1.30816246239806590e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.25000E+00  1.00000E-04        53442        22509       2            5:35 
   2.25500E+00  1.00000E-04        53563        22559       2            5:36 

  End Simulation
 command: var/13, fun=1.31370131177863620e+001
 command: var/14, fun=9.31523475107510990e+000
 command: var/15, fun=-1.31370131177863620e+001
 command: var/16, fun=-1.31370131177863620e+001
 command: var/17, fun=-1.31370131177863620e+001
 command: var/18, fun=1.31370131177863620e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.25500E+00  1.00000E-04        53563        22559       2            5:36 
   2.26000E+00  1.00000E-04        53678        22609       2            5:37 

  End Simulation
 command: var/13, fun=1.31925008949947080e+001
 command: var/14, fun=9.49142186098193720e+000
 command: var/15, fun=-1.31925008949947080e+001
 command: var/16, fun=-1.31925008949947080e+001
 command: var/17, fun=-1.31925008949947080e+001
 command: var/18, fun=1.31925008949947080e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.26000E+00  1.00000E-04        53678        22609       2            5:37 
   2.26500E+00  1.00000E-04        53813        22659       3            5:37 

  End Simulation
 command: var/13, fun=1.32480878061599920e+001
 command: var/14, fun=9.56040706825643480e+000
 command: var/15, fun=-1.32480878061599920e+001
 command: var/16, fun=-1.32480878061599920e+001
 command: var/17, fun=-1.32480878061599920e+001
 command: var/18, fun=1.32480878061599920e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.26500E+00  1.00000E-04        53813        22659       3            5:37 
   2.27000E+00  1.00000E-04        53940        22709       1            5:38 

  End Simulation
 command: var/13, fun=1.33037737015695040e+001
 command: var/14, fun=9.35508575824344210e+000
 command: var/15, fun=-1.33037737015695040e+001
 command: var/16, fun=-1.33037737015695040e+001
 command: var/17, fun=-1.33037737015695040e+001
 command: var/18, fun=1.33037737015695040e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.27000E+00  1.00000E-04        53940        22709       1            5:38 
   2.27500E+00  1.00000E-04        54076        22759       3            5:39 

  End Simulation
 command: var/13, fun=1.33595584312439400e+001
 command: var/14, fun=9.32977963472085390e+000
 command: var/15, fun=-1.33595584312439400e+001
 command: var/16, fun=-1.33595584312439400e+001
 command: var/17, fun=-1.33595584312439400e+001
 command: var/18, fun=1.33595584312439400e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.27500E+00  1.00000E-04        54076        22759       3            5:39 
   2.28000E+00  1.00000E-04        54202        22809       2            5:40 

  End Simulation
 command: var/13, fun=1.34154418449377970e+001
 command: var/14, fun=9.24867945332558430e+000
 command: var/15, fun=-1.34154418449377970e+001
 command: var/16, fun=-1.34154418449377970e+001
 command: var/17, fun=-1.34154418449377970e+001
 command: var/18, fun=1.34154418449377970e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.28000E+00  1.00000E-04        54202        22809       2            5:40 
   2.28500E+00  1.00000E-04        54318        22859       2            5:40 

  End Simulation
 command: var/13, fun=1.34714237921397970e+001
 command: var/14, fun=9.16551838390204670e+000
 command: var/15, fun=-1.34714237921397970e+001
 command: var/16, fun=-1.34714237921397970e+001
 command: var/17, fun=-1.34714237921397970e+001
 command: var/18, fun=1.34714237921397970e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.28500E+00  1.00000E-04        54318        22859       2            5:40 
   2.29000E+00  1.00000E-04        54440        22909       2            5:41 

  End Simulation
 command: var/13, fun=1.35275041220732800e+001
 command: var/14, fun=9.21121645179192680e+000
 command: var/15, fun=-1.35275041220732800e+001
 command: var/16, fun=-1.35275041220732800e+001
 command: var/17, fun=-1.35275041220732800e+001
 command: var/18, fun=1.35275041220732800e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.29000E+00  1.00000E-04        54440        22909       2            5:41 
   2.29500E+00  1.00000E-04        54563        22959       2            5:42 

  End Simulation
 command: var/13, fun=1.35836826836965960e+001
 command: var/14, fun=9.14010071358237040e+000
 command: var/15, fun=-1.35836826836965960e+001
 command: var/16, fun=-1.35836826836965960e+001
 command: var/17, fun=-1.35836826836965960e+001
 command: var/18, fun=1.35836826836965960e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.29500E+00  1.00000E-04        54563        22959       2            5:42 
   2.30000E+00  1.00000E-04        54682        23009       2            5:43 

  End Simulation
 command: var/13, fun=1.36399593257035330e+001
 command: var/14, fun=9.16824117605646550e+000
 command: var/15, fun=-1.36399593257035330e+001
 command: var/16, fun=-1.36399593257035330e+001
 command: var/17, fun=-1.36399593257035330e+001
 command: var/18, fun=1.36399593257035330e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.30000E+00  1.00000E-04        54682        23009       2            5:43 
   2.30500E+00  1.00000E-04        54807        23059       2            5:43 

  End Simulation
 command: var/13, fun=1.36963338965237430e+001
 command: var/14, fun=9.43035311367012060e+000
 command: var/15, fun=-1.36963338965237430e+001
 command: var/16, fun=-1.36963338965237430e+001
 command: var/17, fun=-1.36963338965237430e+001
 command: var/18, fun=1.36963338965237430e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.30500E+00  1.00000E-04        54807        23059       2            5:43 
   2.31000E+00  1.00000E-04        54944        23109       3            5:44 

  End Simulation
 command: var/13, fun=1.37528062443230840e+001
 command: var/14, fun=9.31960773878645730e+000
 command: var/15, fun=-1.37528062443230840e+001
 command: var/16, fun=-1.37528062443230840e+001
 command: var/17, fun=-1.37528062443230840e+001
 command: var/18, fun=1.37528062443230840e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.31000E+00  1.00000E-04        54944        23109       3            5:44 
   2.31500E+00  1.00000E-04        55066        23159       2            5:45 

  End Simulation
 command: var/13, fun=1.38093762170041040e+001
 command: var/14, fun=9.49506160071818430e+000
 command: var/15, fun=-1.38093762170041040e+001
 command: var/16, fun=-1.38093762170041040e+001
 command: var/17, fun=-1.38093762170041040e+001
 command: var/18, fun=1.38093762170041040e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.31500E+00  1.00000E-04        55066        23159       2            5:45 
   2.32000E+00  1.00000E-04        55190        23209       2            5:46 

  End Simulation
 command: var/13, fun=1.38660436622064010e+001
 command: var/14, fun=9.92506550935219420e+000
 command: var/15, fun=-1.38660436622064010e+001
 command: var/16, fun=-1.38660436622064010e+001
 command: var/17, fun=-1.38660436622064010e+001
 command: var/18, fun=1.38660436622064010e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.32000E+00  1.00000E-04        55190        23209       2            5:46 
   2.32500E+00  1.00000E-04        55312        23259       3            5:46 

  End Simulation
 command: var/13, fun=1.39228084273070480e+001
 command: var/14, fun=9.79282483028577570e+000
 command: var/15, fun=-1.39228084273070480e+001
 command: var/16, fun=-1.39228084273070480e+001
 command: var/17, fun=-1.39228084273070480e+001
 command: var/18, fun=1.39228084273070480e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.32500E+00  1.00000E-04        55312        23259       3            5:46 
   2.33000E+00  1.00000E-04        55432        23309       2            5:47 

  End Simulation
 command: var/13, fun=1.39796703594210250e+001
 command: var/14, fun=9.76182730019622190e+000
 command: var/15, fun=-1.39796703594210250e+001
 command: var/16, fun=-1.39796703594210250e+001
 command: var/17, fun=-1.39796703594210250e+001
 command: var/18, fun=1.39796703594210250e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.33000E+00  1.00000E-04        55432        23309       2            5:47 
   2.33500E+00  1.00000E-04        55553        23359       2            5:48 

  End Simulation
 command: var/13, fun=1.40366293054015720e+001
 command: var/14, fun=9.48480066007810760e+000
 command: var/15, fun=-1.40366293054015720e+001
 command: var/16, fun=-1.40366293054015720e+001
 command: var/17, fun=-1.40366293054015720e+001
 command: var/18, fun=1.40366293054015720e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.33500E+00  1.00000E-04        55553        23359       2            5:48 
   2.34000E+00  1.00000E-04        55684        23409       3            5:49 

  End Simulation
 command: var/13, fun=1.40936851118406920e+001
 command: var/14, fun=9.79680701541703590e+000
 command: var/15, fun=-1.40936851118406920e+001
 command: var/16, fun=-1.40936851118406920e+001
 command: var/17, fun=-1.40936851118406920e+001
 command: var/18, fun=1.40936851118406920e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.34000E+00  1.00000E-04        55684        23409       3            5:49 
   2.34500E+00  1.00000E-04        55818        23459       3            5:49 

  End Simulation
 command: var/13, fun=1.41508376250694670e+001
 command: var/14, fun=1.02675975726277620e+001
 command: var/15, fun=-1.41508376250694670e+001
 command: var/16, fun=-1.41508376250694670e+001
 command: var/17, fun=-1.41508376250694670e+001
 command: var/18, fun=1.41508376250694670e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.34500E+00  1.00000E-04        55818        23459       3            5:49 
   2.35000E+00  1.00000E-04        55958        23509       3            5:50 

  End Simulation
 command: var/13, fun=1.42080866911585380e+001
 command: var/14, fun=1.03423737394374220e+001
 command: var/15, fun=-1.42080866911585380e+001
 command: var/16, fun=-1.42080866911585380e+001
 command: var/17, fun=-1.42080866911585380e+001
 command: var/18, fun=1.42080866911585380e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.35000E+00  1.00000E-04        55958        23509       3            5:50 
   2.35500E+00  1.00000E-04        56095        23559       2            5:51 

  End Simulation
 command: var/13, fun=1.42654321559185050e+001
 command: var/14, fun=1.02806303214979880e+001
 command: var/15, fun=-1.42654321559185050e+001
 command: var/16, fun=-1.42654321559185050e+001
 command: var/17, fun=-1.42654321559185050e+001
 command: var/18, fun=1.42654321559185050e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.35500E+00  1.00000E-04        56095        23559       2            5:51 
   2.36000E+00  1.00000E-04        56230        23609       3            5:52 

  End Simulation
 command: var/13, fun=1.43228738649003320e+001
 command: var/14, fun=1.00966303781509770e+001
 command: var/15, fun=-1.43228738649003320e+001
 command: var/16, fun=-1.43228738649003320e+001
 command: var/17, fun=-1.43228738649003320e+001
 command: var/18, fun=1.43228738649003320e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.36000E+00  1.00000E-04        56230        23609       3            5:52 
   2.36500E+00  1.00000E-04        56372        23659       3            5:53 

  End Simulation
 command: var/13, fun=1.43804116633957580e+001
 command: var/14, fun=9.79219735155097660e+000
 command: var/15, fun=-1.43804116633957580e+001
 command: var/16, fun=-1.43804116633957580e+001
 command: var/17, fun=-1.43804116633957580e+001
 command: var/18, fun=1.43804116633957580e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.36500E+00  1.00000E-04        56372        23659       3            5:53 
   2.37000E+00  1.00000E-04        56496        23709       2            5:53 

  End Simulation
 command: var/13, fun=1.44380453964377370e+001
 command: var/14, fun=9.60401839802407050e+000
 command: var/15, fun=-1.44380453964377370e+001
 command: var/16, fun=-1.44380453964377370e+001
 command: var/17, fun=-1.44380453964377370e+001
 command: var/18, fun=1.44380453964377370e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.37000E+00  1.00000E-04        56496        23709       2            5:53 
   2.37500E+00  1.00000E-04        56619        23759       3            5:54 

  End Simulation
 command: var/13, fun=1.44957749088008240e+001
 command: var/14, fun=9.86625599180253770e+000
 command: var/15, fun=-1.44957749088008240e+001
 command: var/16, fun=-1.44957749088008240e+001
 command: var/17, fun=-1.44957749088008240e+001
 command: var/18, fun=1.44957749088008240e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.37500E+00  1.00000E-04        56619        23759       3            5:54 
   2.38000E+00  1.00000E-04        56741        23809       2            5:55 

  End Simulation
 command: var/13, fun=1.45536000450016410e+001
 command: var/14, fun=1.00058467230319080e+001
 command: var/15, fun=-1.45536000450016410e+001
 command: var/16, fun=-1.45536000450016410e+001
 command: var/17, fun=-1.45536000450016410e+001
 command: var/18, fun=1.45536000450016410e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.38000E+00  1.00000E-04        56741        23809       2            5:55 
   2.38500E+00  1.00000E-04        56867        23859       1            5:56 

  End Simulation
 command: var/13, fun=1.46115206492992420e+001
 command: var/14, fun=1.01010934606432360e+001
 command: var/15, fun=-1.46115206492992420e+001
 command: var/16, fun=-1.46115206492992420e+001
 command: var/17, fun=-1.46115206492992420e+001
 command: var/18, fun=1.46115206492992420e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.38500E+00  1.00000E-04        56867        23859       1            5:56 
   2.39000E+00  1.00000E-04        56991        23909       3            5:56 

  End Simulation
 command: var/13, fun=1.46695365656955410e+001
 command: var/14, fun=9.82968362169347110e+000
 command: var/15, fun=-1.46695365656955410e+001
 command: var/16, fun=-1.46695365656955410e+001
 command: var/17, fun=-1.46695365656955410e+001
 command: var/18, fun=1.46695365656955410e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.39000E+00  1.00000E-04        56991        23909       3            5:56 
   2.39500E+00  1.00000E-04        57131        23959       2            5:57 

  End Simulation
 command: var/13, fun=1.47276476379357820e+001
 command: var/14, fun=9.52866348602509210e+000
 command: var/15, fun=-1.47276476379357820e+001
 command: var/16, fun=-1.47276476379357820e+001
 command: var/17, fun=-1.47276476379357820e+001
 command: var/18, fun=1.47276476379357820e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.39500E+00  1.00000E-04        57131        23959       2            5:57 
   2.40000E+00  1.00000E-04        57274        24009       3            5:58 

  End Simulation
 command: var/13, fun=1.47858537095089120e+001
 command: var/14, fun=9.55954602905456420e+000
 command: var/15, fun=-1.47858537095089120e+001
 command: var/16, fun=-1.47858537095089120e+001
 command: var/17, fun=-1.47858537095089120e+001
 command: var/18, fun=1.47858537095089120e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.40000E+00  1.00000E-04        57274        24009       3            5:58 
   2.40500E+00  1.00000E-04        57418        24059       2            5:59 

  End Simulation
 command: var/13, fun=1.48441546236479990e+001
 command: var/14, fun=1.00239123980887900e+001
 command: var/15, fun=-1.48441546236479990e+001
 command: var/16, fun=-1.48441546236479990e+001
 command: var/17, fun=-1.48441546236479990e+001
 command: var/18, fun=1.48441546236479990e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.40500E+00  1.00000E-04        57418        24059       2            5:59 
   2.41000E+00  1.00000E-04        57556        24109       2            6:00 

  End Simulation
 command: var/13, fun=1.49025502233307070e+001
 command: var/14, fun=1.00992361738641700e+001
 command: var/15, fun=-1.49025502233307070e+001
 command: var/16, fun=-1.49025502233307070e+001
 command: var/17, fun=-1.49025502233307070e+001
 command: var/18, fun=1.49025502233307070e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.41000E+00  1.00000E-04        57556        24109       2            6:00 
   2.41500E+00  1.00000E-04        57698        24159       3            6:00 

  End Simulation
 command: var/13, fun=1.49610403512796480e+001
 command: var/14, fun=9.81525458584116880e+000
 command: var/15, fun=-1.49610403512796480e+001
 command: var/16, fun=-1.49610403512796480e+001
 command: var/17, fun=-1.49610403512796480e+001
 command: var/18, fun=1.49610403512796480e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.41500E+00  1.00000E-04        57698        24159       3            6:00 
   2.42000E+00  1.00000E-04        57817        24209       2            6:01 

  End Simulation
 command: var/13, fun=1.50196248499628360e+001
 command: var/14, fun=9.77794439942505810e+000
 command: var/15, fun=-1.50196248499628360e+001
 command: var/16, fun=-1.50196248499628360e+001
 command: var/17, fun=-1.50196248499628360e+001
 command: var/18, fun=1.50196248499628360e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.42000E+00  1.00000E-04        57817        24209       2            6:01 
   2.42500E+00  1.00000E-04        57935        24259       2            6:02 

  End Simulation
 command: var/13, fun=1.50783035615941580e+001
 command: var/14, fun=9.85950102528309990e+000
 command: var/15, fun=-1.50783035615941580e+001
 command: var/16, fun=-1.50783035615941580e+001
 command: var/17, fun=-1.50783035615941580e+001
 command: var/18, fun=1.50783035615941580e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.42500E+00  1.00000E-04        57935        24259       2            6:02 
   2.43000E+00  1.00000E-04        58123        24327       2            6:03 

  End Simulation
 command: var/13, fun=1.51370763281337300e+001
 command: var/14, fun=9.83287165766955340e+000
 command: var/15, fun=-1.51370763281337300e+001
 command: var/16, fun=-1.51370763281337300e+001
 command: var/17, fun=-1.51370763281337300e+001
 command: var/18, fun=1.51370763281337300e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.43000E+00  1.00000E-04        58123        24327       2            6:03 
   2.43500E+00  1.00000E-04        58249        24377       3            6:04 

  End Simulation
 command: var/13, fun=1.51959429912883350e+001
 command: var/14, fun=9.56924219996822780e+000
 command: var/15, fun=-1.51959429912883350e+001
 command: var/16, fun=-1.51959429912883350e+001
 command: var/17, fun=-1.51959429912883350e+001
 command: var/18, fun=1.51959429912883350e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.43500E+00  1.00000E-04        58249        24377       3            6:04 
   2.44000E+00  1.00000E-04        58396        24427       3            6:04 

  End Simulation
 command: var/13, fun=1.52549033925118810e+001
 command: var/14, fun=9.62993161922280020e+000
 command: var/15, fun=-1.52549033925118810e+001
 command: var/16, fun=-1.52549033925118810e+001
 command: var/17, fun=-1.52549033925118810e+001
 command: var/18, fun=1.52549033925118810e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.44000E+00  1.00000E-04        58396        24427       3            6:04 
   2.44500E+00  1.00000E-04        58526        24477       2            6:05 

  End Simulation
 command: var/13, fun=1.53139573730058150e+001
 command: var/14, fun=1.01514023870117550e+001
 command: var/15, fun=-1.53139573730058150e+001
 command: var/16, fun=-1.53139573730058150e+001
 command: var/17, fun=-1.53139573730058150e+001
 command: var/18, fun=1.53139573730058150e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.44500E+00  1.00000E-04        58526        24477       2            6:05 
   2.45000E+00  1.00000E-04        58656        24527       3            6:06 

  End Simulation
 command: var/13, fun=1.53731047737195200e+001
 command: var/14, fun=1.05971452836259260e+001
 command: var/15, fun=-1.53731047737195200e+001
 command: var/16, fun=-1.53731047737195200e+001
 command: var/17, fun=-1.53731047737195200e+001
 command: var/18, fun=1.53731047737195200e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.45000E+00  1.00000E-04        58656        24527       3            6:06 
   2.45500E+00  1.00000E-04        58792        24577       2            6:07 

  End Simulation
 command: var/13, fun=1.54323454353508200e+001
 command: var/14, fun=1.04753640392295520e+001
 command: var/15, fun=-1.54323454353508200e+001
 command: var/16, fun=-1.54323454353508200e+001
 command: var/17, fun=-1.54323454353508200e+001
 command: var/18, fun=1.54323454353508200e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.45500E+00  1.00000E-04        58792        24577       2            6:07 
   2.46000E+00  1.00000E-04        58923        24627       2            6:08 

  End Simulation
 command: var/13, fun=1.54916791983462970e+001
 command: var/14, fun=1.00215701217723650e+001
 command: var/15, fun=-1.54916791983462970e+001
 command: var/16, fun=-1.54916791983462970e+001
 command: var/17, fun=-1.54916791983462970e+001
 command: var/18, fun=1.54916791983462970e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.46000E+00  1.00000E-04        58923        24627       2            6:08 
   2.46500E+00  1.00000E-04        59059        24677       2            6:08 

  End Simulation
 command: var/13, fun=1.55511059029018240e+001
 command: var/14, fun=9.80689654080316760e+000
 command: var/15, fun=-1.55511059029018240e+001
 command: var/16, fun=-1.55511059029018240e+001
 command: var/17, fun=-1.55511059029018240e+001
 command: var/18, fun=1.55511059029018240e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.46500E+00  1.00000E-04        59059        24677       2            6:08 
   2.47000E+00  1.00000E-04        59198        24727       2            6:09 

  End Simulation
 command: var/13, fun=1.56106253889629410e+001
 command: var/14, fun=9.86313045421542080e+000
 command: var/15, fun=-1.56106253889629410e+001
 command: var/16, fun=-1.56106253889629410e+001
 command: var/17, fun=-1.56106253889629410e+001
 command: var/18, fun=1.56106253889629410e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.47000E+00  1.00000E-04        59198        24727       2            6:09 
   2.47500E+00  1.00000E-04        59326        24777       2            6:10 

  End Simulation
 command: var/13, fun=1.56702374962252970e+001
 command: var/14, fun=1.01202003526215680e+001
 command: var/15, fun=-1.56702374962252970e+001
 command: var/16, fun=-1.56702374962252970e+001
 command: var/17, fun=-1.56702374962252970e+001
 command: var/18, fun=1.56702374962252970e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.47500E+00  1.00000E-04        59326        24777       2            6:10 
   2.48000E+00  1.00000E-04        59445        24827       2            6:11 

  End Simulation
 command: var/13, fun=1.57299420641350950e+001
 command: var/14, fun=9.98725237726523400e+000
 command: var/15, fun=-1.57299420641350950e+001
 command: var/16, fun=-1.57299420641350950e+001
 command: var/17, fun=-1.57299420641350950e+001
 command: var/18, fun=1.57299420641350950e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.48000E+00  1.00000E-04        59445        24827       2            6:11 
   2.48500E+00  1.00000E-04        59586        24877       2            6:12 

  End Simulation
 command: var/13, fun=1.57897389318894920e+001
 command: var/14, fun=1.01037128658497600e+001
 command: var/15, fun=-1.57897389318894920e+001
 command: var/16, fun=-1.57897389318894920e+001
 command: var/17, fun=-1.57897389318894920e+001
 command: var/18, fun=1.57897389318894920e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.48500E+00  1.00000E-04        59586        24877       2            6:12 
   2.49000E+00  1.00000E-04        59717        24927       2            6:12 

  End Simulation
 command: var/13, fun=1.58496279384370720e+001
 command: var/14, fun=1.03209157051848110e+001
 command: var/15, fun=-1.58496279384370720e+001
 command: var/16, fun=-1.58496279384370720e+001
 command: var/17, fun=-1.58496279384370720e+001
 command: var/18, fun=1.58496279384370720e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.49000E+00  1.00000E-04        59717        24927       2            6:12 
   2.49500E+00  1.00000E-04        59846        24977       3            6:13 

  End Simulation
 command: var/13, fun=1.59096089224782520e+001
 command: var/14, fun=1.02677900595904800e+001
 command: var/15, fun=-1.59096089224782520e+001
 command: var/16, fun=-1.59096089224782520e+001
 command: var/17, fun=-1.59096089224782520e+001
 command: var/18, fun=1.59096089224782520e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.49500E+00  1.00000E-04        59846        24977       3            6:13 
   2.50000E+00  1.00000E-04        59992        25027       1            6:14 

  End Simulation
 command: var/13, fun=1.59696817224657220e+001
 command: var/14, fun=1.03088699640919400e+001
 command: var/15, fun=-1.59696817224657220e+001
 command: var/16, fun=-1.59696817224657220e+001
 command: var/17, fun=-1.59696817224657220e+001
 command: var/18, fun=1.59696817224657220e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.50000E+00  1.00000E-04        59992        25027       1            6:14 
   2.50500E+00  1.00000E-04        60127        25077       3            6:15 

  End Simulation
 command: var/13, fun=1.60298461766048950e+001
 command: var/14, fun=1.02248449828915540e+001
 command: var/15, fun=-1.60298461766048950e+001
 command: var/16, fun=-1.60298461766048950e+001
 command: var/17, fun=-1.60298461766048950e+001
 command: var/18, fun=1.60298461766048950e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.50500E+00  1.00000E-04        60127        25077       3            6:15 
   2.51000E+00  1.00000E-04        60271        25127       2            6:16 

  End Simulation
 command: var/13, fun=1.60901021228543220e+001
 command: var/14, fun=9.82747527097197170e+000
 command: var/15, fun=-1.60901021228543220e+001
 command: var/16, fun=-1.60901021228543220e+001
 command: var/17, fun=-1.60901021228543220e+001
 command: var/18, fun=1.60901021228543220e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.51000E+00  1.00000E-04        60271        25127       2            6:16 
   2.51500E+00  1.00000E-04        60414        25177       3            6:16 

  End Simulation
 command: var/13, fun=1.61504493989261490e+001
 command: var/14, fun=1.00551118535206480e+001
 command: var/15, fun=-1.61504493989261490e+001
 command: var/16, fun=-1.61504493989261490e+001
 command: var/17, fun=-1.61504493989261490e+001
 command: var/18, fun=1.61504493989261490e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.51500E+00  1.00000E-04        60414        25177       3            6:16 
   2.52000E+00  1.00000E-04        60558        25227       3            6:17 

  End Simulation
 command: var/13, fun=1.62108878422865100e+001
 command: var/14, fun=1.04924216621967710e+001
 command: var/15, fun=-1.62108878422865100e+001
 command: var/16, fun=-1.62108878422865100e+001
 command: var/17, fun=-1.62108878422865100e+001
 command: var/18, fun=1.62108878422865100e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.52000E+00  1.00000E-04        60558        25227       3            6:17 
   2.52500E+00  1.00000E-04        60694        25277       2            6:18 

  End Simulation
 command: var/13, fun=1.62714172901560370e+001
 command: var/14, fun=1.05668967078313770e+001
 command: var/15, fun=-1.62714172901560370e+001
 command: var/16, fun=-1.62714172901560370e+001
 command: var/17, fun=-1.62714172901560370e+001
 command: var/18, fun=1.62714172901560370e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.52500E+00  1.00000E-04        60694        25277       2            6:18 
   2.53000E+00  1.00000E-04        60809        25327       2            6:19 

  End Simulation
 command: var/13, fun=1.63320375795102490e+001
 command: var/14, fun=1.02440735029952620e+001
 command: var/15, fun=-1.63320375795102490e+001
 command: var/16, fun=-1.63320375795102490e+001
 command: var/17, fun=-1.63320375795102490e+001
 command: var/18, fun=1.63320375795102490e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.53000E+00  1.00000E-04        60809        25327       2            6:19 
   2.53500E+00  1.00000E-04        60927        25377       3            6:19 

  End Simulation
 command: var/13, fun=1.63927485470799650e+001
 command: var/14, fun=9.54666795032213320e+000
 command: var/15, fun=-1.63927485470799650e+001
 command: var/16, fun=-1.63927485470799650e+001
 command: var/17, fun=-1.63927485470799650e+001
 command: var/18, fun=1.63927485470799650e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.53500E+00  1.00000E-04        60927        25377       3            6:19 
   2.54000E+00  1.00000E-04        61059        25427       3            6:20 

  End Simulation
 command: var/13, fun=1.64535500293518490e+001
 command: var/14, fun=9.37458426658147030e+000
 command: var/15, fun=-1.64535500293518490e+001
 command: var/16, fun=-1.64535500293518490e+001
 command: var/17, fun=-1.64535500293518490e+001
 command: var/18, fun=1.64535500293518490e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.54000E+00  1.00000E-04        61059        25427       3            6:20 
   2.54500E+00  1.00000E-04        61191        25477       4            6:21 

  End Simulation
 command: var/13, fun=1.65144418625687240e+001
 command: var/14, fun=9.53675448114169020e+000
 command: var/15, fun=-1.65144418625687240e+001
 command: var/16, fun=-1.65144418625687240e+001
 command: var/17, fun=-1.65144418625687240e+001
 command: var/18, fun=1.65144418625687240e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.54500E+00  1.00000E-04        61191        25477       4            6:21 
   2.55000E+00  1.00000E-04        61317        25527       2            6:22 

  End Simulation
 command: var/13, fun=1.65754238827300780e+001
 command: var/14, fun=9.48663310721858010e+000
 command: var/15, fun=-1.65754238827300780e+001
 command: var/16, fun=-1.65754238827300780e+001
 command: var/17, fun=-1.65754238827300780e+001
 command: var/18, fun=1.65754238827300780e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.55000E+00  1.00000E-04        61317        25527       2            6:22 
   2.55500E+00  1.00000E-04        61444        25577       2            6:22 

  End Simulation
 command: var/13, fun=1.66364959255925020e+001
 command: var/14, fun=9.29747312616729540e+000
 command: var/15, fun=-1.66364959255925020e+001
 command: var/16, fun=-1.66364959255925020e+001
 command: var/17, fun=-1.66364959255925020e+001
 command: var/18, fun=1.66364959255925020e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.55500E+00  1.00000E-04        61444        25577       2            6:22 
   2.56000E+00  1.00000E-04        61572        25627       2            6:23 

  End Simulation
 command: var/13, fun=1.66976578266701420e+001
 command: var/14, fun=9.28637610738603140e+000
 command: var/15, fun=-1.66976578266701420e+001
 command: var/16, fun=-1.66976578266701420e+001
 command: var/17, fun=-1.66976578266701420e+001
 command: var/18, fun=1.66976578266701420e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.56000E+00  1.00000E-04        61572        25627       2            6:23 
   2.56500E+00  1.00000E-04        61700        25677       4            6:24 

  End Simulation
 command: var/13, fun=1.67589094212351350e+001
 command: var/14, fun=9.58221054540811320e+000
 command: var/15, fun=-1.67589094212351350e+001
 command: var/16, fun=-1.67589094212351350e+001
 command: var/17, fun=-1.67589094212351350e+001
 command: var/18, fun=1.67589094212351350e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.56500E+00  1.00000E-04        61700        25677       4            6:24 
   2.57000E+00  1.00000E-04        61823        25727       3            6:25 

  End Simulation
 command: var/13, fun=1.68202505443180140e+001
 command: var/14, fun=9.16822340437229500e+000
 command: var/15, fun=-1.68202505443180140e+001
 command: var/16, fun=-1.68202505443180140e+001
 command: var/17, fun=-1.68202505443180140e+001
 command: var/18, fun=1.68202505443180140e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.57000E+00  1.00000E-04        61823        25727       3            6:25 
   2.57500E+00  1.00000E-04        61959        25777       3            6:26 

  End Simulation
 command: var/13, fun=1.68816810307081900e+001
 command: var/14, fun=9.50871870903879570e+000
 command: var/15, fun=-1.68816810307081900e+001
 command: var/16, fun=-1.68816810307081900e+001
 command: var/17, fun=-1.68816810307081900e+001
 command: var/18, fun=1.68816810307081900e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.57500E+00  1.00000E-04        61959        25777       3            6:26 
   2.58000E+00  1.00000E-04        62091        25827       3            6:26 

  End Simulation
 command: var/13, fun=1.69432007149544150e+001
 command: var/14, fun=9.64198490419789600e+000
 command: var/15, fun=-1.69432007149544150e+001
 command: var/16, fun=-1.65971714933035450e+001
 command: var/17, fun=-1.69432007149544150e+001
 command: var/18, fun=1.69432007149544150e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.58000E+00  1.00000E-04        62091        25827       3            6:26 
   2.58500E+00  1.00000E-04        62214        25877       3            6:27 

  End Simulation
 command: var/13, fun=1.70048094313651750e+001
 command: var/14, fun=9.94650091125366130e+000
 command: var/15, fun=-1.70048094313651750e+001
 command: var/16, fun=-1.64644095336898530e+001
 command: var/17, fun=-1.70048094313651750e+001
 command: var/18, fun=1.70048094313651750e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.58500E+00  1.00000E-04        62214        25877       3            6:27 
   2.59000E+00  1.00000E-04        62346        25927       2            6:28 

  End Simulation
 command: var/13, fun=1.70665070140091970e+001
 command: var/14, fun=9.68999426463322950e+000
 command: var/15, fun=-1.70665070140091970e+001
 command: var/16, fun=-1.62118159726132090e+001
 command: var/17, fun=-1.70665070140091970e+001
 command: var/18, fun=1.70665070140091970e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.59000E+00  1.00000E-04        62346        25927       2            6:28 
   2.59500E+00  1.00000E-04        62487        25977       3            6:29 

  End Simulation
 command: var/13, fun=1.71282932967158460e+001
 command: var/14, fun=9.57157307001032190e+000
 command: var/15, fun=-1.71282932967158460e+001
 command: var/16, fun=-1.61742972205273400e+001
 command: var/17, fun=-1.71282932967158460e+001
 command: var/18, fun=1.71282932967158460e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.59500E+00  1.00000E-04        62487        25977       3            6:29 
   2.60000E+00  1.00000E-04        62628        26027       4            6:29 

  End Simulation
 command: var/13, fun=1.71901681130755750e+001
 command: var/14, fun=9.51094801767620620e+000
 command: var/15, fun=-1.71901681130755750e+001
 command: var/16, fun=-1.60911534689974650e+001
 command: var/17, fun=-1.71901681130755750e+001
 command: var/18, fun=1.71901681130755750e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.60000E+00  1.00000E-04        62628        26027       4            6:29 
   2.60500E+00  1.00000E-04        62768        26077       4            6:30 

  End Simulation
 command: var/13, fun=1.72521312964404030e+001
 command: var/14, fun=9.10418227687230090e+000
 command: var/15, fun=-1.72521312964404030e+001
 command: var/16, fun=-1.59025751236192590e+001
 command: var/17, fun=-1.72521312964404030e+001
 command: var/18, fun=1.72521312964404030e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.60500E+00  1.00000E-04        62768        26077       4            6:30 
   2.61000E+00  1.00000E-04        62911        26127       4            6:31 

  End Simulation
 command: var/13, fun=1.73141826799243790e+001
 command: var/14, fun=9.29773353875092920e+000
 command: var/15, fun=-1.73141826799243790e+001
 command: var/16, fun=-1.59585269586464360e+001
 command: var/17, fun=-1.73141826799243790e+001
 command: var/18, fun=1.73141826799243790e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.61000E+00  1.00000E-04        62911        26127       4            6:31 
   2.61500E+00  1.00000E-04        63056        26177       3            6:32 

  End Simulation
 command: var/13, fun=1.73763220964039390e+001
 command: var/14, fun=8.62536460614913910e+000
 command: var/15, fun=-1.73763220964039390e+001
 command: var/16, fun=-1.56536436038838930e+001
 command: var/17, fun=-1.73763220964039390e+001
 command: var/18, fun=1.73763220964039390e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.61500E+00  1.00000E-04        63056        26177       3            6:32 
   2.62000E+00  1.00000E-04        63176        26227       2            6:32 

  End Simulation
 command: var/13, fun=1.74385493785184700e+001
 command: var/14, fun=8.32855553117550150e+000
 command: var/15, fun=-1.74385493785184700e+001
 command: var/16, fun=-1.56917068566116560e+001
 command: var/17, fun=-1.74385493785184700e+001
 command: var/18, fun=1.74385493785184700e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.62000E+00  1.00000E-04        63176        26227       2            6:32 
   2.62500E+00  1.00000E-04        63303        26277       3            6:33 

  End Simulation
 command: var/13, fun=1.75008643586706820e+001
 command: var/14, fun=8.50957583017592610e+000
 command: var/15, fun=-1.75008643586706820e+001
 command: var/16, fun=-1.55679512636508090e+001
 command: var/17, fun=-1.75008643586706820e+001
 command: var/18, fun=1.75008643586706820e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.62500E+00  1.00000E-04        63303        26277       3            6:33 
   2.63000E+00  1.00000E-04        63441        26327       3            6:34 

  End Simulation
 command: var/13, fun=1.75632668690271170e+001
 command: var/14, fun=8.82153315833438790e+000
 command: var/15, fun=-1.75632668690271170e+001
 command: var/16, fun=-1.54370153714284210e+001
 command: var/17, fun=-1.75632668690271170e+001
 command: var/18, fun=1.75632668690271170e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.63000E+00  1.00000E-04        63441        26327       3            6:34 
   2.63500E+00  1.00000E-04        63575        26377       2            6:35 

  End Simulation
 command: var/13, fun=1.76257567415185430e+001
 command: var/14, fun=8.49129518154344960e+000
 command: var/15, fun=-1.76257567415185430e+001
 command: var/16, fun=-1.51600099845512750e+001
 command: var/17, fun=-1.76257567415185430e+001
 command: var/18, fun=1.76257567415185430e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.63500E+00  1.00000E-04        63575        26377       2            6:35 
   2.64000E+00  1.00000E-04        63724        26427       2            6:36 

  End Simulation
 command: var/13, fun=1.76883338078404400e+001
 command: var/14, fun=8.36567540106386790e+000
 command: var/15, fun=-1.76883338078404400e+001
 command: var/16, fun=-1.51028786067305010e+001
 command: var/17, fun=-1.76883338078404400e+001
 command: var/18, fun=1.76883338078404400e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.64000E+00  1.00000E-04        63724        26427       2            6:36 
   2.64500E+00  1.00000E-04        63865        26477       3            6:36 

  End Simulation
 command: var/13, fun=1.77509978994534450e+001
 command: var/14, fun=8.42484231201759930e+000
 command: var/15, fun=-1.77509978994534450e+001
 command: var/16, fun=-1.50179048716774040e+001
 command: var/17, fun=-1.77509978994534450e+001
 command: var/18, fun=1.77509978994534450e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.64500E+00  1.00000E-04        63865        26477       3            6:36 
   2.65000E+00  1.00000E-04        63996        26527       2            6:37 

  End Simulation
 command: var/13, fun=1.78137488475838200e+001
 command: var/14, fun=7.83764960748446530e+000
 command: var/15, fun=-1.78137488475838200e+001
 command: var/16, fun=-1.47279503071818070e+001
 command: var/17, fun=-1.78137488475838200e+001
 command: var/18, fun=1.78137488475838200e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.65000E+00  1.00000E-04        63996        26527       2            6:37 
   2.65500E+00  1.00000E-04        64147        26586       2            6:38 

  End Simulation
 command: var/13, fun=1.78765864832239100e+001
 command: var/14, fun=7.54328644275072870e+000
 command: var/15, fun=-1.78765864832239100e+001
 command: var/16, fun=-1.46522990192539030e+001
 command: var/17, fun=-1.78765864832239100e+001
 command: var/18, fun=1.78765864832239100e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.65500E+00  1.00000E-04        64147        26586       2            6:38 
   2.66000E+00  1.00000E-04        64313        26645       2            6:39 

  End Simulation
 command: var/13, fun=1.79395106371325320e+001
 command: var/14, fun=7.88606526004588290e+000
 command: var/15, fun=-1.79395106371325320e+001
 command: var/16, fun=-1.46888193646212330e+001
 command: var/17, fun=-1.79395106371325320e+001
 command: var/18, fun=1.79395106371325320e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.66000E+00  1.00000E-04        64313        26645       2            6:39 
   2.66500E+00  1.00000E-04        64470        26704       3            6:40 

  End Simulation
 command: var/13, fun=1.80025211398355370e+001
 command: var/14, fun=7.46266041135862770e+000
 command: var/15, fun=-1.80025211398355370e+001
 command: var/16, fun=-1.42952551227177230e+001
 command: var/17, fun=-1.80025211398355370e+001
 command: var/18, fun=1.80025211398355370e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.66500E+00  1.00000E-04        64470        26704       3            6:40 
   2.67000E+00  1.00000E-04        64625        26763       3            6:41 

  End Simulation
 command: var/13, fun=1.80656178216262010e+001
 command: var/14, fun=7.77943241026282100e+000
 command: var/15, fun=-1.80656178216262010e+001
 command: var/16, fun=-1.43183788100633670e+001
 command: var/17, fun=-1.80656178216262010e+001
 command: var/18, fun=1.80656178216262010e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.67000E+00  1.00000E-04        64625        26763       3            6:41 
   2.67500E+00  1.00000E-04        64789        26822       2            6:42 

  End Simulation
 command: var/13, fun=1.81288005125656610e+001
 command: var/14, fun=8.50923725449509400e+000
 command: var/15, fun=-1.81288005125656610e+001
 command: var/16, fun=-1.42257763354121000e+001
 command: var/17, fun=-1.81288005125656610e+001
 command: var/18, fun=1.81288005125656610e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.67500E+00  1.00000E-04        64789        26822       2            6:42 
   2.68000E+00  1.00000E-04        64909        26872       2            6:43 

  End Simulation
 command: var/13, fun=1.81920690424834320e+001
 command: var/14, fun=8.40716470077481400e+000
 command: var/15, fun=-1.81920690424834320e+001
 command: var/16, fun=-1.38526087844264670e+001
 command: var/17, fun=-1.81920690424834320e+001
 command: var/18, fun=1.81920690424834320e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.68000E+00  1.00000E-04        64909        26872       2            6:43 
   2.68500E+00  1.00000E-04        65036        26922       2            6:43 

  End Simulation
 command: var/13, fun=1.82554232409778510e+001
 command: var/14, fun=7.91676111214377800e+000
 command: var/15, fun=-1.82554232409778510e+001
 command: var/16, fun=-1.36198211147486070e+001
 command: var/17, fun=-1.82554232409778510e+001
 command: var/18, fun=1.82554232409778510e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.68500E+00  1.00000E-04        65036        26922       2            6:43 
   2.69000E+00  1.00000E-04        65172        26972       2            6:44 

  End Simulation
 command: var/13, fun=1.83188629374164900e+001
 command: var/14, fun=7.75985222629998010e+000
 command: var/15, fun=-1.83188629374164900e+001
 command: var/16, fun=-1.35263615038207410e+001
 command: var/17, fun=-1.83188629374164900e+001
 command: var/18, fun=1.83188629374164900e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.69000E+00  1.00000E-04        65172        26972       2            6:44 
   2.69500E+00  1.00000E-04        65322        27022       2            6:45 

  End Simulation
 command: var/13, fun=1.83823879609366650e+001
 command: var/14, fun=8.04016414718361360e+000
 command: var/15, fun=-1.83823879609366650e+001
 command: var/16, fun=-1.34285000515742700e+001
 command: var/17, fun=-1.83823879609366650e+001
 command: var/18, fun=1.83823879609366650e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.69500E+00  1.00000E-04        65322        27022       2            6:45 
   2.70000E+00  1.00000E-04        65450        27072       3            6:46 

  End Simulation
 command: var/13, fun=1.84459981404458730e+001
 command: var/14, fun=8.47925678608885570e+000
 command: var/15, fun=-1.84459981404458730e+001
 command: var/16, fun=-1.33791282194889480e+001
 command: var/17, fun=-1.84459981404458730e+001
 command: var/18, fun=1.84459981404458730e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.70000E+00  1.00000E-04        65450        27072       3            6:46 
   2.70500E+00  1.00000E-04        65588        27122       2            6:47 

  End Simulation
 command: var/13, fun=1.85096933046222780e+001
 command: var/14, fun=7.79929186514557850e+000
 command: var/15, fun=-1.85096933046222780e+001
 command: var/16, fun=-1.28525904457191640e+001
 command: var/17, fun=-1.85096933046222780e+001
 command: var/18, fun=1.85096933046222780e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.70500E+00  1.00000E-04        65588        27122       2            6:47 
   2.71000E+00  1.00000E-04        65737        27172       2            6:48 

  End Simulation
 command: var/13, fun=1.85734732819151310e+001
 command: var/14, fun=7.58596784705044150e+000
 command: var/15, fun=-1.85734732819151310e+001
 command: var/16, fun=-1.28529917288908670e+001
 command: var/17, fun=-1.85734732819151310e+001
 command: var/18, fun=1.85734732819151310e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.71000E+00  1.00000E-04        65737        27172       2            6:48 
   2.71500E+00  1.00000E-04        65864        27222       2            6:48 

  End Simulation
 command: var/13, fun=1.86373379005452690e+001
 command: var/14, fun=7.54568496692318110e+000
 command: var/15, fun=-1.86373379005452690e+001
 command: var/16, fun=-1.26244173833642610e+001
 command: var/17, fun=-1.86373379005452690e+001
 command: var/18, fun=1.86373379005452690e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.71500E+00  1.00000E-04        65864        27222       2            6:48 
   2.72000E+00  1.00000E-04        65994        27272       2            6:49 

  End Simulation
 command: var/13, fun=1.87012869885055610e+001
 command: var/14, fun=7.98410592659129930e+000
 command: var/15, fun=-1.87012869885055610e+001
 command: var/16, fun=-1.26646641927683050e+001
 command: var/17, fun=-1.87012869885055610e+001
 command: var/18, fun=1.87012869885055610e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.72000E+00  1.00000E-04        65994        27272       2            6:49 
   2.72500E+00  1.00000E-04        66127        27322       3            6:50 

  End Simulation
 command: var/13, fun=1.87653203735613660e+001
 command: var/14, fun=7.06585435598801580e+000
 command: var/15, fun=-1.87653203735613660e+001
 command: var/16, fun=-1.18707991165527420e+001
 command: var/17, fun=-1.87653203735613660e+001
 command: var/18, fun=1.87653203735613660e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.72500E+00  1.00000E-04        66127        27322       3            6:50 
   2.73000E+00  1.00000E-04        66263        27372       3            6:51 

  End Simulation
 command: var/13, fun=1.88294378832510210e+001
 command: var/14, fun=6.84756821884371550e+000
 command: var/15, fun=-1.88294378832510210e+001
 command: var/16, fun=-1.19655483055644220e+001
 command: var/17, fun=-1.88294378832510210e+001
 command: var/18, fun=1.88294378832510210e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.73000E+00  1.00000E-04        66263        27372       3            6:51 
   2.73500E+00  1.00000E-04        66396        27422       3            6:51 

  End Simulation
 command: var/13, fun=1.88936393448862820e+001
 command: var/14, fun=5.75887700827375330e+000
 command: var/15, fun=-1.88936393448862820e+001
 command: var/16, fun=-1.16405397709969380e+001
 command: var/17, fun=-1.88936393448862820e+001
 command: var/18, fun=1.88936393448862820e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.73500E+00  1.00000E-04        66396        27422       3            6:51 
   2.74000E+00  1.00000E-04        66522        27472       2            6:52 

  End Simulation
 command: var/13, fun=1.89579245855527920e+001
 command: var/14, fun=6.60820588248993080e+000
 command: var/15, fun=-1.89579245855527920e+001
 command: var/16, fun=-1.17974883495541170e+001
 command: var/17, fun=-1.89579245855527920e+001
 command: var/18, fun=1.89579245855527920e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.74000E+00  1.00000E-04        66522        27472       2            6:52 
   2.74500E+00  1.00000E-04        66653        27522       2            6:53 

  End Simulation
 command: var/13, fun=1.90222934321105440e+001
 command: var/14, fun=6.06427530220598850e+000
 command: var/15, fun=-1.90222934321105440e+001
 command: var/16, fun=-1.11789442780304710e+001
 command: var/17, fun=-1.90222934321105440e+001
 command: var/18, fun=1.90222934321105440e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.74500E+00  1.00000E-04        66653        27522       2            6:53 
   2.75000E+00  1.00000E-04        66785        27572       3            6:54 

  End Simulation
 command: var/13, fun=1.90867457111943680e+001
 command: var/14, fun=6.58611590933766780e+000
 command: var/15, fun=-1.90867457111943680e+001
 command: var/16, fun=-1.13684338572785590e+001
 command: var/17, fun=-1.90867457111943680e+001
 command: var/18, fun=1.90867457111943680e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.75000E+00  1.00000E-04        66785        27572       3            6:54 
   2.75500E+00  1.00000E-04        66921        27622       2            6:55 

  End Simulation
 command: var/13, fun=1.91512812492144030e+001
 command: var/14, fun=7.43055384704180090e+000
 command: var/15, fun=-1.91512812492144030e+001
 command: var/16, fun=-1.14961905014038910e+001
 command: var/17, fun=-1.91512812492144030e+001
 command: var/18, fun=1.91512812492144030e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.75500E+00  1.00000E-04        66921        27622       2            6:55 
   2.76000E+00  1.00000E-04        67054        27672       3            6:55 

  End Simulation
 command: var/13, fun=1.92158998723565060e+001
 command: var/14, fun=6.93695685276125400e+000
 command: var/15, fun=-1.92158998723565060e+001
 command: var/16, fun=-1.08765763904957160e+001
 command: var/17, fun=-1.92158998723565060e+001
 command: var/18, fun=1.92158998723565060e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.76000E+00  1.00000E-04        67054        27672       3            6:55 
   2.76500E+00  1.00000E-04        67198        27722       2            6:56 

  End Simulation
 command: var/13, fun=1.92806014065827750e+001
 command: var/14, fun=6.45140541561665780e+000
 command: var/15, fun=-1.92806014065827750e+001
 command: var/16, fun=-1.06964855991888470e+001
 command: var/17, fun=-1.92806014065827750e+001
 command: var/18, fun=1.92806014065827750e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.76500E+00  1.00000E-04        67198        27722       2            6:56 
   2.77000E+00  1.00000E-04        67342        27772       3            6:57 

  End Simulation
 command: var/13, fun=1.93453856776320090e+001
 command: var/14, fun=5.73839590426215110e+000
 command: var/15, fun=-1.93453856776320090e+001
 command: var/16, fun=-1.03309847686825320e+001
 command: var/17, fun=-1.93453856776320090e+001
 command: var/18, fun=1.93453856776320090e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.77000E+00  1.00000E-04        67342        27772       3            6:57 
   2.77500E+00  1.00000E-04        67481        27822       4            6:58 

  End Simulation
 command: var/13, fun=1.94102525110201720e+001
 command: var/14, fun=5.37982019719847490e+000
 command: var/15, fun=-1.94102525110201720e+001
 command: var/16, fun=-1.03013032114885470e+001
 command: var/17, fun=-1.94102525110201720e+001
 command: var/18, fun=1.94102525110201720e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.77500E+00  1.00000E-04        67481        27822       4            6:58 
   2.78000E+00  1.00000E-04        67611        27872       3            6:59 

  End Simulation
 command: var/13, fun=1.94752017320408480e+001
 command: var/14, fun=1.42459495245823240e+000
 command: var/15, fun=-1.94752017320408480e+001
 command: var/16, fun=-1.18387858890056420e+001
 command: var/17, fun=-1.94752017320408480e+001
 command: var/18, fun=1.94752017320408480e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.78000E+00  1.00000E-04        67611        27872       3            6:59 
   2.78500E+00  1.00000E-04        67756        27922       2            6:59 

  End Simulation
 command: var/13, fun=1.95402331657657520e+001
 command: var/14, fun=4.39471652362455690e+000
 command: var/15, fun=-1.95402331657657520e+001
 command: var/16, fun=-1.01645582030605440e+001
 command: var/17, fun=-1.95402331657657520e+001
 command: var/18, fun=1.95402331657657520e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.78500E+00  1.00000E-04        67756        27922       2            6:59 
   2.79000E+00  1.00000E-04        67902        27972       3            7:00 

  End Simulation
 command: var/13, fun=1.96053466370451520e+001
 command: var/14, fun=4.95274938392007960e+000
 command: var/15, fun=-1.96053466370451520e+001
 command: var/16, fun=-9.86082351744405190e+000
 command: var/17, fun=-1.96053466370451520e+001
 command: var/18, fun=1.96053466370451520e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.79000E+00  1.00000E-04        67902        27972       3            7:00 
   2.79500E+00  1.00000E-04        68073        28031       3            7:01 

  End Simulation
 command: var/13, fun=1.96705419705083710e+001
 command: var/14, fun=6.05985673712035580e+000
 command: var/15, fun=-1.96705419705083710e+001
 command: var/16, fun=-1.03296225019206050e+001
 command: var/17, fun=-1.96705419705083710e+001
 command: var/18, fun=1.96705419705083710e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.79500E+00  1.00000E-04        68073        28031       3            7:01 
   2.80000E+00  1.00000E-04        68215        28081       3            7:02 

  End Simulation
 command: var/13, fun=1.97358189905642480e+001
 command: var/14, fun=5.85174087587737460e+000
 command: var/15, fun=-1.97358189905642480e+001
 command: var/16, fun=-9.80555168858832540e+000
 command: var/17, fun=-1.97358189905642480e+001
 command: var/18, fun=1.97358189905642480e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.80000E+00  1.00000E-04        68215        28081       3            7:02 
   2.80500E+00  1.00000E-04        68346        28131       3            7:03 

  End Simulation
 command: var/13, fun=1.98011775214016130e+001
 command: var/14, fun=5.14803568056856790e+000
 command: var/15, fun=-1.98011775214016130e+001
 command: var/16, fun=-9.34981254689969180e+000
 command: var/17, fun=-1.98011775214016130e+001
 command: var/18, fun=1.98011775214016130e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.80500E+00  1.00000E-04        68346        28131       3            7:03 
   2.81000E+00  1.00000E-04        68492        28181       3            7:03 

  End Simulation
 command: var/13, fun=1.98666173869897880e+001
 command: var/14, fun=4.59471557134652200e+000
 command: var/15, fun=-1.98666173869897880e+001
 command: var/16, fun=-8.96916099403528480e+000
 command: var/17, fun=-1.98666173869897880e+001
 command: var/18, fun=1.98666173869897880e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.81000E+00  1.00000E-04        68492        28181       3            7:03 
   2.81500E+00  1.00000E-04        68660        28240       3            7:04 

  End Simulation
 command: var/13, fun=1.99321384110789810e+001
 command: var/14, fun=5.37112192371395290e+000
 command: var/15, fun=-1.99321384110789810e+001
 command: var/16, fun=-9.56736281450245050e+000
 command: var/17, fun=-1.99321384110789810e+001
 command: var/18, fun=1.99321384110789810e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.81500E+00  1.00000E-04        68660        28240       3            7:04 
   2.82000E+00  1.00000E-04        68800        28290       2            7:05 

  End Simulation
 command: var/13, fun=1.99977404172008950e+001
 command: var/14, fun=3.16841217784492950e+000
 command: var/15, fun=-1.99977404172008950e+001
 command: var/16, fun=-8.90913023797550170e+000
 command: var/17, fun=-1.99977404172008950e+001
 command: var/18, fun=1.99977404172008950e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.82000E+00  1.00000E-04        68800        28290       2            7:05 
   2.82500E+00  1.00000E-04        69000        28358       2            7:06 

  End Simulation
 command: var/13, fun=2.00634232286690310e+001
 command: var/14, fun=-3.22043023509266000e-001
 command: var/15, fun=-2.00634232286690310e+001
 command: var/16, fun=-1.01585037938648720e+001
 command: var/17, fun=-2.00634232286690310e+001
 command: var/18, fun=2.00634232286690310e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.82500E+00  1.00000E-04        69000        28358       2            7:06 
   2.83000E+00  1.00000E-04        69139        28408       2            7:07 

  End Simulation
 command: var/13, fun=2.01291866685793290e+001
 command: var/14, fun=4.25774477642269120e+000
 command: var/15, fun=-2.01291866685793290e+001
 command: var/16, fun=-8.79038791735395900e+000
 command: var/17, fun=-2.01291866685793290e+001
 command: var/18, fun=2.01291866685793290e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.83000E+00  1.00000E-04        69139        28408       2            7:07 
   2.83500E+00  1.00000E-04        69265        28458       2            7:08 

  End Simulation
 command: var/13, fun=2.01950305598105510e+001
 command: var/14, fun=5.42374567384254020e+000
 command: var/15, fun=-2.01950305598105510e+001
 command: var/16, fun=-9.26201305137039380e+000
 command: var/17, fun=-2.01950305598105510e+001
 command: var/18, fun=2.01950305598105510e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.83500E+00  1.00000E-04        69265        28458       2            7:08 
   2.84000E+00  1.00000E-04        69432        28517       2            7:09 

  End Simulation
 command: var/13, fun=2.02609547250247530e+001
 command: var/14, fun=4.16762513310310110e+000
 command: var/15, fun=-2.02609547250247530e+001
 command: var/16, fun=-8.12516780660762630e+000
 command: var/17, fun=-2.02609547250247530e+001
 command: var/18, fun=2.02609547250247530e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.84000E+00  1.00000E-04        69432        28517       2            7:09 
   2.84500E+00  1.00000E-04        69572        28567       4            7:10 

  End Simulation
 command: var/13, fun=2.03269589866678190e+001
 command: var/14, fun=3.65627805430748200e+000
 command: var/15, fun=-2.03269589866678190e+001
 command: var/16, fun=-8.02685584216250450e+000
 command: var/17, fun=-2.03269589866678190e+001
 command: var/18, fun=2.03269589866678190e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.84500E+00  1.00000E-04        69572        28567       4            7:10 
   2.85000E+00  1.00000E-04        69703        28617       2            7:10 

  End Simulation
 command: var/13, fun=2.03930431669698930e+001
 command: var/14, fun=3.48093857147358630e+000
 command: var/15, fun=-2.03930431669698930e+001
 command: var/16, fun=-7.86429412342992150e+000
 command: var/17, fun=-2.03930431669698930e+001
 command: var/18, fun=2.03930431669698930e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.85000E+00  1.00000E-04        69703        28617       2            7:10 
   2.85500E+00  1.00000E-04        69839        28667       3            7:11 

  End Simulation
 command: var/13, fun=2.04592070879458740e+001
 command: var/14, fun=4.25117902787552190e+000
 command: var/15, fun=-2.04592070879458740e+001
 command: var/16, fun=-8.54647721978710350e+000
 command: var/17, fun=-2.04592070879458740e+001
 command: var/18, fun=2.04592070879458740e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.85500E+00  1.00000E-04        69839        28667       3            7:11 
   2.86000E+00  1.00000E-04        69974        28717       2            7:12 

  End Simulation
 command: var/13, fun=2.05254505713959220e+001
 command: var/14, fun=-1.83037110704755300e+000
 command: var/15, fun=-2.05254505713959220e+001
 command: var/16, fun=-8.49456237513497390e+000
 command: var/17, fun=-2.05254505713959220e+001
 command: var/18, fun=2.05254505713959220e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.86000E+00  1.00000E-04        69974        28717       2            7:12 
   2.86500E+00  1.00000E-04        70115        28767       2            7:13 

  End Simulation
 command: var/13, fun=2.05917734389058540e+001
 command: var/14, fun=2.45885830262635930e+000
 command: var/15, fun=-2.05917734389058540e+001
 command: var/16, fun=-7.89260731568949230e+000
 command: var/17, fun=-2.05917734389058540e+001
 command: var/18, fun=2.05917734389058540e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.86500E+00  1.00000E-04        70115        28767       2            7:13 
   2.87000E+00  1.00000E-04        70261        28817       2            7:14 

  End Simulation
 command: var/13, fun=2.06581755118477370e+001
 command: var/14, fun=1.80536254880974420e+000
 command: var/15, fun=-2.06581755118477370e+001
 command: var/16, fun=-7.86960690949546040e+000
 command: var/17, fun=-2.06581755118477370e+001
 command: var/18, fun=2.06581755118477370e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.87000E+00  1.00000E-04        70261        28817       2            7:14 
   2.87500E+00  1.00000E-04        70421        28876       2            7:15 

  End Simulation
 command: var/13, fun=2.07246566113802930e+001
 command: var/14, fun=3.40513266323938610e+000
 command: var/15, fun=-2.07246566113802930e+001
 command: var/16, fun=-7.89058753985455220e+000
 command: var/17, fun=-2.07246566113802930e+001
 command: var/18, fun=2.07246566113802930e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.87500E+00  1.00000E-04        70421        28876       2            7:15 
   2.88000E+00  1.00000E-04        70569        28926       2            7:15 

  End Simulation
 command: var/13, fun=2.07912165584493920e+001
 command: var/14, fun=5.10680618908618290e+000
 command: var/15, fun=-2.07912165584493920e+001
 command: var/16, fun=-8.82437978205454950e+000
 command: var/17, fun=-2.07912165584493920e+001
 command: var/18, fun=2.07912165584493920e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.88000E+00  1.00000E-04        70569        28926       2            7:15 
   2.88500E+00  1.00000E-04        70704        28976       3            7:16 

  End Simulation
 command: var/13, fun=2.08578551737885650e+001
 command: var/14, fun=4.39251190756221370e+000
 command: var/15, fun=-2.08578551737885650e+001
 command: var/16, fun=-8.04597376502010950e+000
 command: var/17, fun=-2.08578551737885650e+001
 command: var/18, fun=2.08578551737885650e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.88500E+00  1.00000E-04        70704        28976       3            7:16 
   2.89000E+00  1.00000E-04        70846        29026       2            7:17 

  End Simulation
 command: var/13, fun=2.09245722779194170e+001
 command: var/14, fun=2.67730996955370330e+000
 command: var/15, fun=-2.09245722779194170e+001
 command: var/16, fun=-7.23698951154477490e+000
 command: var/17, fun=-2.09245722779194170e+001
 command: var/18, fun=2.09245722779194170e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.89000E+00  1.00000E-04        70846        29026       2            7:17 
   2.89500E+00  1.00000E-04        70980        29076       3            7:18 

  End Simulation
 command: var/13, fun=2.09913676911522240e+001
 command: var/14, fun=3.26271843718900460e+000
 command: var/15, fun=-2.09913676911522240e+001
 command: var/16, fun=-7.84028147501350680e+000
 command: var/17, fun=-2.09913676911522240e+001
 command: var/18, fun=2.09913676911522240e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.89500E+00  1.00000E-04        70980        29076       3            7:18 
   2.90000E+00  1.00000E-04        71119        29126       3            7:19 

  End Simulation
 command: var/13, fun=2.10582412335863010e+001
 command: var/14, fun=3.22639529480690120e+000
 command: var/15, fun=-2.10582412335863010e+001
 command: var/16, fun=-7.77061074608452440e+000
 command: var/17, fun=-2.10582412335863010e+001
 command: var/18, fun=2.10582412335863010e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.90000E+00  1.00000E-04        71119        29126       3            7:19 
   2.90500E+00  1.00000E-04        71263        29176       3            7:20 

  End Simulation
 command: var/13, fun=2.11251927251105800e+001
 command: var/14, fun=2.73952983217622890e+000
 command: var/15, fun=-2.11251927251105800e+001
 command: var/16, fun=-7.54754987782056560e+000
 command: var/17, fun=-2.11251927251105800e+001
 command: var/18, fun=2.11251927251105800e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.90500E+00  1.00000E-04        71263        29176       3            7:20 
   2.91000E+00  1.00000E-04        71391        29226       3            7:20 

  End Simulation
 command: var/13, fun=2.11922219854040040e+001
 command: var/14, fun=-2.41068556878749480e+000
 command: var/15, fun=-2.11922219854040040e+001
 command: var/16, fun=-8.35070559768466400e+000
 command: var/17, fun=-2.11922219854040040e+001
 command: var/18, fun=2.11922219854040040e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.91000E+00  1.00000E-04        71391        29226       3            7:20 
   2.91500E+00  1.00000E-04        71530        29276       3            7:21 

  End Simulation
 command: var/13, fun=2.12593288339360880e+001
 command: var/14, fun=-2.74083028009934490e+000
 command: var/15, fun=-2.12593288339360880e+001
 command: var/16, fun=-8.47383542881594030e+000
 command: var/17, fun=-2.12593288339360880e+001
 command: var/18, fun=2.12593288339360880e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.91500E+00  1.00000E-04        71530        29276       3            7:21 
   2.92000E+00  1.00000E-04        71664        29326       3            7:22 

  End Simulation
 command: var/13, fun=2.13265130899673810e+001
 command: var/14, fun=-3.36630221810768670e+000
 command: var/15, fun=-2.13265130899673810e+001
 command: var/16, fun=-8.17797441768363420e+000
 command: var/17, fun=-2.13265130899673810e+001
 command: var/18, fun=2.13265130899673810e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.92000E+00  1.00000E-04        71664        29326       3            7:22 
   2.92500E+00  1.00000E-04        71822        29381       1            7:23 

  End Simulation
 command: var/13, fun=2.13937745725499300e+001
 command: var/14, fun=-3.67703986529938340e+000
 command: var/15, fun=-2.13937745725499300e+001
 command: var/16, fun=-8.06545647847546300e+000
 command: var/17, fun=-2.13937745725499300e+001
 command: var/18, fun=2.13937745725499300e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.92500E+00  1.00000E-04        71822        29381       1            7:23 
   2.93000E+00  1.00000E-04        71954        29431       3            7:24 

  End Simulation
 command: var/13, fun=2.14611131005278080e+001
 command: var/14, fun=-1.92103569245063550e+000
 command: var/15, fun=-2.14611131005278080e+001
 command: var/16, fun=-8.71843119709588700e+000
 command: var/17, fun=-2.14611131005278080e+001
 command: var/18, fun=2.14611131005278080e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.93000E+00  1.00000E-04        71954        29431       3            7:24 
   2.93500E+00  1.00000E-04        72095        29481       3            7:24 

  End Simulation
 command: var/13, fun=2.15285284925375850e+001
 command: var/14, fun=-4.47084426715993380e+000
 command: var/15, fun=-2.15285284925375850e+001
 command: var/16, fun=-7.57642103248601020e+000
 command: var/17, fun=-2.15285284925375850e+001
 command: var/18, fun=2.15285284925375850e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.93500E+00  1.00000E-04        72095        29481       3            7:24 
   2.94000E+00  1.00000E-04        72240        29531       2            7:25 

  End Simulation
 command: var/13, fun=2.15960205670087820e+001
 command: var/14, fun=-4.48101840777013210e+000
 command: var/15, fun=-2.15960205670087820e+001
 command: var/16, fun=-7.76346072899125070e+000
 command: var/17, fun=-2.15960205670087820e+001
 command: var/18, fun=2.15960205670087820e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.94000E+00  1.00000E-04        72240        29531       2            7:25 
   2.94500E+00  1.00000E-04        72387        29581       3            7:26 

  End Simulation
 command: var/13, fun=2.16635891421644260e+001
 command: var/14, fun=1.94685497084583360e+000
 command: var/15, fun=-2.16635891421644260e+001
 command: var/16, fun=-8.07039539876489090e+000
 command: var/17, fun=-2.16635891421644260e+001
 command: var/18, fun=2.16635891421644260e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.94500E+00  1.00000E-04        72387        29581       3            7:26 
   2.95000E+00  1.00000E-04        72523        29631       2            7:27 

  End Simulation
 command: var/13, fun=2.17312340360214690e+001
 command: var/14, fun=-3.24830762182332180e+000
 command: var/15, fun=-2.17312340360214690e+001
 command: var/16, fun=-8.14290173853935780e+000
 command: var/17, fun=-2.17312340360214690e+001
 command: var/18, fun=2.17312340360214690e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.95000E+00  1.00000E-04        72523        29631       2            7:27 
   2.95500E+00  1.00000E-04        72669        29681       3            7:28 

  End Simulation
 command: var/13, fun=2.17989550663913400e+001
 command: var/14, fun=2.01495649551190100e+000
 command: var/15, fun=-2.17989550663913400e+001
 command: var/16, fun=-7.97658204171490670e+000
 command: var/17, fun=-2.17989550663913400e+001
 command: var/18, fun=2.17989550663913400e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.95500E+00  1.00000E-04        72669        29681       3            7:28 
   2.96000E+00  1.00000E-04        72816        29731       3            7:28 

  End Simulation
 command: var/13, fun=2.18667520508804000e+001
 command: var/14, fun=-3.88064226236225320e+000
 command: var/15, fun=-2.18667520508804000e+001
 command: var/16, fun=-7.78808225576813930e+000
 command: var/17, fun=-2.18667520508804000e+001
 command: var/18, fun=2.18667520508804000e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.96000E+00  1.00000E-04        72816        29731       3            7:28 
   2.96500E+00  1.00000E-04        72962        29781       4            7:29 

  End Simulation
 command: var/13, fun=2.19346248068904400e+001
 command: var/14, fun=-3.91371467911978810e+000
 command: var/15, fun=-2.19346248068904400e+001
 command: var/16, fun=-8.04595405492972660e+000
 command: var/17, fun=-2.19346248068904400e+001
 command: var/18, fun=2.19346248068904400e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.96500E+00  1.00000E-04        72962        29781       4            7:29 
   2.97000E+00  1.00000E-04        73110        29831       3            7:30 

  End Simulation
 command: var/13, fun=2.20025731516191700e+001
 command: var/14, fun=-3.96051948396668820e+000
 command: var/15, fun=-2.20025731516191700e+001
 command: var/16, fun=-8.01479057694426440e+000
 command: var/17, fun=-2.20025731516191700e+001
 command: var/18, fun=2.20025731516191700e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.97000E+00  1.00000E-04        73110        29831       3            7:30 
   2.97500E+00  1.00000E-04        73285        29890       2            7:31 

  End Simulation
 command: var/13, fun=2.20705969020607460e+001
 command: var/14, fun=-4.60550040009370590e+000
 command: var/15, fun=-2.20705969020607460e+001
 command: var/16, fun=-7.68360426575853590e+000
 command: var/17, fun=-2.20705969020607460e+001
 command: var/18, fun=2.20705969020607460e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.97500E+00  1.00000E-04        73285        29890       2            7:31 
   2.98000E+00  1.00000E-04        73442        29945       2            7:32 

  End Simulation
 command: var/13, fun=2.21386958750061850e+001
 command: var/14, fun=-5.61190090964403600e+000
 command: var/15, fun=-2.21386958750061850e+001
 command: var/16, fun=-7.07882794207402540e+000
 command: var/17, fun=-2.21386958750061850e+001
 command: var/18, fun=2.21386958750061850e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.98000E+00  1.00000E-04        73442        29945       2            7:32 
   2.98500E+00  1.00000E-04        73578        29995       2            7:33 

  End Simulation
 command: var/13, fun=2.22068698870439580e+001
 command: var/14, fun=-3.62800667334543060e+000
 command: var/15, fun=-2.22068698870439580e+001
 command: var/16, fun=-8.07564525505345190e+000
 command: var/17, fun=-2.22068698870439580e+001
 command: var/18, fun=2.22068698870439580e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.98500E+00  1.00000E-04        73578        29995       2            7:33 
   2.99000E+00  1.00000E-04        73719        30045       2            7:34 

  End Simulation
 command: var/13, fun=2.22751187545603810e+001
 command: var/14, fun=1.02803885629425220e+000
 command: var/15, fun=-2.22751187545603810e+001
 command: var/16, fun=-7.48617889256506430e+000
 command: var/17, fun=-2.22751187545603810e+001
 command: var/18, fun=2.22751187545603810e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.99000E+00  1.00000E-04        73719        30045       2            7:34 
   2.99500E+00  1.00000E-04        73863        30095       2            7:34 

  End Simulation
 command: var/13, fun=2.23434422937401890e+001
 command: var/14, fun=-5.31452607610849450e+000
 command: var/15, fun=-2.23434422937401890e+001
 command: var/16, fun=-7.03750686087847300e+000
 command: var/17, fun=-2.23434422937401890e+001
 command: var/18, fun=2.23434422937401890e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.99500E+00  1.00000E-04        73863        30095       2            7:34 
   3.00000E+00  1.00000E-04        74000        30145       2            7:35 

  End Simulation
 command: var/13, fun=2.24118403205670060e+001
 command: var/14, fun=-5.70752590175548220e+000
 command: var/15, fun=-2.24118403205670060e+001
 command: var/16, fun=-6.97322376026588040e+000
 command: var/17, fun=-2.24118403205670060e+001
 command: var/18, fun=2.24118403205670060e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.00000E+00  1.00000E-04        74000        30145       2            7:35 
   3.00500E+00  1.00000E-04        74149        30195       2            7:36 

  End Simulation
 command: var/13, fun=2.24803126508238510e+001
 command: var/14, fun=1.85630928156979350e+000
 command: var/15, fun=-2.24803126508238510e+001
 command: var/16, fun=-8.15082871484471560e+000
 command: var/17, fun=-2.24803126508238510e+001
 command: var/18, fun=2.24803126508238510e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.00500E+00  1.00000E-04        74149        30195       2            7:36 
   3.01000E+00  1.00000E-04        74289        30245       4            7:37 

  End Simulation
 command: var/13, fun=2.25488591000935830e+001
 command: var/14, fun=8.84599753615300970e-001
 command: var/15, fun=-2.25488591000935830e+001
 command: var/16, fun=-7.03397375817289030e+000
 command: var/17, fun=-2.25488591000935830e+001
 command: var/18, fun=2.25488591000935830e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.01000E+00  1.00000E-04        74289        30245       4            7:37 
   3.01500E+00  1.00000E-04        74425        30295       2            7:38 

  End Simulation
 command: var/13, fun=2.26174794837594460e+001
 command: var/14, fun=5.36868092239691230e-001
 command: var/15, fun=-2.26174794837594460e+001
 command: var/16, fun=-6.87296777328631330e+000
 command: var/17, fun=-2.26174794837594460e+001
 command: var/18, fun=2.26174794837594460e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.01500E+00  1.00000E-04        74425        30295       2            7:38 
   3.02000E+00  1.00000E-04        74560        30345       3            7:38 

  End Simulation
 command: var/13, fun=2.26861736170055790e+001
 command: var/14, fun=1.75286105255141260e+000
 command: var/15, fun=-2.26861736170055790e+001
 command: var/16, fun=-7.67276667675318440e+000
 command: var/17, fun=-2.26861736170055790e+001
 command: var/18, fun=2.26861736170055790e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.02000E+00  1.00000E-04        74560        30345       3            7:38 
   3.02500E+00  1.00000E-04        74729        30404       2            7:39 

  End Simulation
 command: var/13, fun=2.27549413148174720e+001
 command: var/14, fun=1.73544485536718240e+000
 command: var/15, fun=-2.27549413148174720e+001
 command: var/16, fun=-7.52667639343211460e+000
 command: var/17, fun=-2.27549413148174720e+001
 command: var/18, fun=2.27549413148174720e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.02500E+00  1.00000E-04        74729        30404       2            7:39 
   3.03000E+00  1.00000E-04        74893        30463       3            7:40 

  End Simulation
 command: var/13, fun=2.28237823919824940e+001
 command: var/14, fun=-4.43469821284686280e+000
 command: var/15, fun=-2.28237823919824940e+001
 command: var/16, fun=-7.31384920160674670e+000
 command: var/17, fun=-2.28237823919824940e+001
 command: var/18, fun=2.28237823919824940e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.03000E+00  1.00000E-04        74893        30463       3            7:40 
   3.03500E+00  1.00000E-04        75030        30513       2            7:41 

  End Simulation
 command: var/13, fun=2.28926966630903620e+001
 command: var/14, fun=-8.46693282757151880e+000
 command: var/15, fun=-2.28926966630903620e+001
 command: var/16, fun=-4.99945250221982550e+000
 command: var/17, fun=-2.28926966630903620e+001
 command: var/18, fun=2.28926966630903620e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.03500E+00  1.00000E-04        75030        30513       2            7:41 
   3.04000E+00  1.00000E-04        75170        30563       2            7:42 

  End Simulation
 command: var/13, fun=2.29616839425336820e+001
 command: var/14, fun=-8.40914559370688860e+000
 command: var/15, fun=-2.29616839425336820e+001
 command: var/16, fun=-5.44582322163158320e+000
 command: var/17, fun=-2.29616839425336820e+001
 command: var/18, fun=2.29616839425336820e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.04000E+00  1.00000E-04        75170        30563       2            7:42 
   3.04500E+00  1.00000E-04        75308        30613       4            7:43 

  End Simulation
 command: var/13, fun=2.30307440445084240e+001
 command: var/14, fun=-4.91482980942669020e+000
 command: var/15, fun=-2.30307440445084240e+001
 command: var/16, fun=-7.57268757456063120e+000
 command: var/17, fun=-2.30307440445084240e+001
 command: var/18, fun=2.30307440445084240e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.04500E+00  1.00000E-04        75308        30613       4            7:43 
   3.05000E+00  1.00000E-04        75451        30663       3            7:44 

  End Simulation
 command: var/13, fun=2.30998767830143840e+001
 command: var/14, fun=-4.21353786827183610e-001
 command: var/15, fun=-2.30998767830143840e+001
 command: var/16, fun=-6.58375228085847650e+000
 command: var/17, fun=-2.30998767830143840e+001
 command: var/18, fun=2.30998767830143840e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.05000E+00  1.00000E-04        75451        30663       3            7:44 
   3.05500E+00  1.00000E-04        75586        30713       2            7:44 

  End Simulation
 command: var/13, fun=2.31690819718557930e+001
 command: var/14, fun=1.57476898703882960e-001
 command: var/15, fun=-2.31690819718557930e+001
 command: var/16, fun=-6.82714533979827820e+000
 command: var/17, fun=-2.31690819718557930e+001
 command: var/18, fun=2.31690819718557930e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.05500E+00  1.00000E-04        75586        30713       2            7:44 
   3.06000E+00  1.00000E-04        75731        30763       4            7:45 

  End Simulation
 command: var/13, fun=2.32383594246416900e+001
 command: var/14, fun=-2.55366272500176960e-001
 command: var/15, fun=-2.32383594246416900e+001
 command: var/16, fun=-6.43144112428456620e+000
 command: var/17, fun=-2.32383594246416900e+001
 command: var/18, fun=2.32383594246416900e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.06000E+00  1.00000E-04        75731        30763       4            7:45 
   3.06500E+00  1.00000E-04        75870        30813       2            7:46 

  End Simulation
 command: var/13, fun=2.33077089547865340e+001
 command: var/14, fun=-1.32611544140556220e-002
 command: var/15, fun=-2.33077089547865340e+001
 command: var/16, fun=-6.54598594675368160e+000
 command: var/17, fun=-2.33077089547865340e+001
 command: var/18, fun=2.33077089547865340e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.06500E+00  1.00000E-04        75870        30813       2            7:46 
   3.07000E+00  1.00000E-04        76008        30863       3            7:47 

  End Simulation
 command: var/13, fun=2.33771303755106070e+001
 command: var/14, fun=1.04162454355424990e+000
 command: var/15, fun=-2.33771303755106070e+001
 command: var/16, fun=-7.20242251334690220e+000
 command: var/17, fun=-2.33771303755106070e+001
 command: var/18, fun=2.33771303755106070e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.07000E+00  1.00000E-04        76008        30863       3            7:47 
   3.07500E+00  1.00000E-04        76147        30913       3            7:47 

  End Simulation
 command: var/13, fun=2.34466234998406090e+001
 command: var/14, fun=7.73060138439857210e-001
 command: var/15, fun=-2.34466234998406090e+001
 command: var/16, fun=-6.86537182662366340e+000
 command: var/17, fun=-2.34466234998406090e+001
 command: var/18, fun=2.34466234998406090e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.07500E+00  1.00000E-04        76147        30913       3            7:47 
   3.08000E+00  1.00000E-04        76291        30963       2            7:48 

  End Simulation
 command: var/13, fun=2.35161881406100940e+001
 command: var/14, fun=1.26372891388242640e+000
 command: var/15, fun=-2.35161881406100940e+001
 command: var/16, fun=-7.22763248507909050e+000
 command: var/17, fun=-2.35161881406100940e+001
 command: var/18, fun=2.35161881406100940e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.08000E+00  1.00000E-04        76291        30963       2            7:48 
   3.08500E+00  1.00000E-04        76441        31013       2            7:49 

  End Simulation
 command: var/13, fun=2.35858241104600130e+001
 command: var/14, fun=-6.38902838424273780e+000
 command: var/15, fun=-2.35858241104600130e+001
 command: var/16, fun=-5.85368043312786580e+000
 command: var/17, fun=-2.35858241104600130e+001
 command: var/18, fun=2.35858241104600130e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.08500E+00  1.00000E-04        76441        31013       2            7:49 
   3.09000E+00  1.00000E-04        76585        31063       2            7:50 

  End Simulation
 command: var/13, fun=2.36555312218392220e+001
 command: var/14, fun=-6.83306963066611580e+000
 command: var/15, fun=-2.36555312218392220e+001
 command: var/16, fun=-5.88812700539662440e+000
 command: var/17, fun=-2.36555312218392220e+001
 command: var/18, fun=2.36555312218392220e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.09000E+00  1.00000E-04        76585        31063       2            7:50 
   3.09500E+00  1.00000E-04        76758        31122       2            7:51 

  End Simulation
 command: var/13, fun=2.37253092870049290e+001
 command: var/14, fun=-7.31090952970817300e+000
 command: var/15, fun=-2.37253092870049290e+001
 command: var/16, fun=-5.50660717393336440e+000
 command: var/17, fun=-2.37253092870049290e+001
 command: var/18, fun=2.37253092870049290e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.09500E+00  1.00000E-04        76758        31122       2            7:51 
   3.10000E+00  1.00000E-04        76903        31172       3            7:52 

  End Simulation
 command: var/13, fun=2.37951581180232740e+001
 command: var/14, fun=-5.34821813013074540e+000
 command: var/15, fun=-2.37951581180232740e+001
 command: var/16, fun=-6.72423556344746840e+000
 command: var/17, fun=-2.37951581180232740e+001
 command: var/18, fun=2.37951581180232740e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.10000E+00  1.00000E-04        76903        31172       3            7:52 
   3.10500E+00  1.00000E-04        77043        31222       2            7:53 

  End Simulation
 command: var/13, fun=2.38650775267697950e+001
 command: var/14, fun=-1.83112761169120510e-001
 command: var/15, fun=-2.38650775267697950e+001
 command: var/16, fun=-6.19198392708051330e+000
 command: var/17, fun=-2.38650775267697950e+001
 command: var/18, fun=2.38650775267697950e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.10500E+00  1.00000E-04        77043        31222       2            7:53 
   3.11000E+00  1.00000E-04        77184        31272       3            7:54 

  End Simulation
 command: var/13, fun=2.39350673249299530e+001
 command: var/14, fun=-5.66468046770354940e+000
 command: var/15, fun=-2.39350673249299530e+001
 command: var/16, fun=-6.02273048536446520e+000
 command: var/17, fun=-2.39350673249299530e+001
 command: var/18, fun=2.39350673249299530e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.11000E+00  1.00000E-04        77184        31272       3            7:54 
   3.11500E+00  1.00000E-04        77329        31322       2            7:55 

  End Simulation
 command: var/13, fun=2.40051273239995910e+001
 command: var/14, fun=2.29212255183968370e+000
 command: var/15, fun=-2.40051273239995910e+001
 command: var/16, fun=-7.62132407270776470e+000
 command: var/17, fun=-2.40051273239995910e+001
 command: var/18, fun=2.40051273239995910e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.11500E+00  1.00000E-04        77329        31322       2            7:55 
   3.12000E+00  1.00000E-04        77465        31372       2            7:55 

  End Simulation
 command: var/13, fun=2.40752573352855280e+001
 command: var/14, fun=-7.39804156528276200e+000
 command: var/15, fun=-2.40752573352855280e+001
 command: var/16, fun=-4.61850755644238120e+000
 command: var/17, fun=-2.40752573352855280e+001
 command: var/18, fun=2.40752573352855280e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.12000E+00  1.00000E-04        77465        31372       2            7:55 
   3.12500E+00  1.00000E-04        77716        31458       2            7:57 

  End Simulation
 command: var/13, fun=2.41454571699059920e+001
 command: var/14, fun=-9.12400580687801540e+000
 command: var/15, fun=-2.41454571699059920e+001
 command: var/16, fun=-4.02587790354415190e+000
 command: var/17, fun=-2.41454571699059920e+001
 command: var/18, fun=2.41454571699059920e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.12500E+00  1.00000E-04        77716        31458       2            7:57 
   3.13000E+00  1.00000E-04        77860        31508       2            7:58 

  End Simulation
 command: var/13, fun=2.42157266387911360e+001
 command: var/14, fun=-1.10706347876958450e+001
 command: var/15, fun=-2.42157266387911360e+001
 command: var/16, fun=-2.89556167575186500e+000
 command: var/17, fun=-2.42157266387911360e+001
 command: var/18, fun=2.42157266387911360e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.13000E+00  1.00000E-04        77860        31508       2            7:58 
   3.13500E+00  1.00000E-04        78058        31576       2            7:59 

  End Simulation
 command: var/13, fun=2.42860655526836240e+001
 command: var/14, fun=-7.53761236294812060e+000
 command: var/15, fun=-2.42860655526836240e+001
 command: var/16, fun=-5.39046575889736520e+000
 command: var/17, fun=-2.42860655526836240e+001
 command: var/18, fun=2.42860655526836240e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.13500E+00  1.00000E-04        78058        31576       2            7:59 
   3.14000E+00  1.00000E-04        78205        31626       3            8:00 

  End Simulation
 command: var/13, fun=2.43564737221390220e+001
 command: var/14, fun=-7.30893468746235350e+000
 command: var/15, fun=-2.43564737221390220e+001
 command: var/16, fun=-5.17619040331140830e+000
 command: var/17, fun=-2.43564737221390220e+001
 command: var/18, fun=2.43564737221390220e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.14000E+00  1.00000E-04        78205        31626       3            8:00 
   3.14500E+00  1.00000E-04        78353        31676       3            8:01 

  End Simulation
 command: var/13, fun=2.44269509575264120e+001
 command: var/14, fun=2.97969945231672770e+000
 command: var/15, fun=-2.44269509575264120e+001
 command: var/16, fun=-8.07203590462063760e+000
 command: var/17, fun=-2.44269509575264120e+001
 command: var/18, fun=2.44269509575264120e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.14500E+00  1.00000E-04        78353        31676       3            8:01 
   3.15000E+00  1.00000E-04        78516        31731       2            8:02 

  End Simulation
 command: var/13, fun=2.44974970690288390e+001
 command: var/14, fun=5.15893080610938970e+000
 command: var/15, fun=-2.44974970690288390e+001
 command: var/16, fun=-8.86749594966556920e+000
 command: var/17, fun=-2.44974970690288390e+001
 command: var/18, fun=2.44974970690288390e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.15000E+00  1.00000E-04        78516        31731       2            8:02 
   3.15500E+00  1.00000E-04        78688        31790       3            8:03 

  End Simulation
 command: var/13, fun=2.45681118666438390e+001
 command: var/14, fun=3.22356407166048080e+000
 command: var/15, fun=-2.45681118666438390e+001
 command: var/16, fun=-7.26022727987032200e+000
 command: var/17, fun=-2.45681118666438390e+001
 command: var/18, fun=2.45681118666438390e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.15500E+00  1.00000E-04        78688        31790       3            8:03 
   3.16000E+00  1.00000E-04        78830        31840       2            8:03 

  End Simulation
 command: var/13, fun=2.46387951601839750e+001
 command: var/14, fun=5.08668000383655540e+000
 command: var/15, fun=-2.46387951601839750e+001
 command: var/16, fun=-8.44825086597629140e+000
 command: var/17, fun=-2.46387951601839750e+001
 command: var/18, fun=2.46387951601839750e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.16000E+00  1.00000E-04        78830        31840       2            8:03 
   3.16500E+00  1.00000E-04        78971        31890       3            8:04 

  End Simulation
 command: var/13, fun=2.47095467592773050e+001
 command: var/14, fun=4.49921520671560060e+000
 command: var/15, fun=-2.47095467592773050e+001
 command: var/16, fun=-7.80914334923222060e+000
 command: var/17, fun=-2.47095467592773050e+001
 command: var/18, fun=2.47095467592773050e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.16500E+00  1.00000E-04        78971        31890       3            8:04 
   3.17000E+00  1.00000E-04        79114        31940       2            8:05 

  End Simulation
 command: var/13, fun=2.47803664733679700e+001
 command: var/14, fun=2.04314730211955010e+000
 command: var/15, fun=-2.47803664733679700e+001
 command: var/16, fun=-6.16203671100318040e+000
 command: var/17, fun=-2.47803664733679700e+001
 command: var/18, fun=2.47803664733679700e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.17000E+00  1.00000E-04        79114        31940       2            8:05 
   3.17500E+00  1.00000E-04        79254        31990       3            8:06 

  End Simulation
 command: var/13, fun=2.48512541117165750e+001
 command: var/14, fun=1.44861661635216940e+000
 command: var/15, fun=-2.48512541117165750e+001
 command: var/16, fun=-5.83471935382262790e+000
 command: var/17, fun=-2.48512541117165750e+001
 command: var/18, fun=2.48512541117165750e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.17500E+00  1.00000E-04        79254        31990       3            8:06 
   3.18000E+00  1.00000E-04        79396        32040       1            8:07 

  End Simulation
 command: var/13, fun=2.49222094834008490e+001
 command: var/14, fun=2.56814188698846650e+000
 command: var/15, fun=-2.49222094834008490e+001
 command: var/16, fun=-6.41328948516400480e+000
 command: var/17, fun=-2.49222094834008490e+001
 command: var/18, fun=2.49222094834008490e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.18000E+00  1.00000E-04        79396        32040       1            8:07 
   3.18500E+00  1.00000E-04        79538        32090       3            8:08 

  End Simulation
 command: var/13, fun=2.49932323973160780e+001
 command: var/14, fun=7.89419615916966500e+000
 command: var/15, fun=-2.49932323973160780e+001
 command: var/16, fun=-9.63022507008547990e+000
 command: var/17, fun=-2.49932323973160780e+001
 command: var/18, fun=2.49932323973160780e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.18500E+00  1.00000E-04        79538        32090       3            8:08 
   3.19000E+00  1.00000E-04        79683        32140       2            8:08 

  End Simulation
 command: var/13, fun=2.50643226621756200e+001
 command: var/14, fun=6.27060206190924510e+000
 command: var/15, fun=-2.50643226621756200e+001
 command: var/16, fun=-7.99522015669115490e+000
 command: var/17, fun=-2.50643226621756200e+001
 command: var/18, fun=2.50643226621756200e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.19000E+00  1.00000E-04        79683        32140       2            8:08 
   3.19500E+00  1.00000E-04        79828        32190       2            8:09 

  End Simulation
 command: var/13, fun=2.51354800865114460e+001
 command: var/14, fun=7.42307723427890580e+000
 command: var/15, fun=-2.51354800865114460e+001
 command: var/16, fun=-8.69478911718059600e+000
 command: var/17, fun=-2.51354800865114460e+001
 command: var/18, fun=2.51354800865114460e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.19500E+00  1.00000E-04        79828        32190       2            8:09 
   3.20000E+00  1.00000E-04        79969        32240       2            8:10 

  End Simulation
 command: var/13, fun=2.52067044786746590e+001
 command: var/14, fun=4.18315857071095290e+000
 command: var/15, fun=-2.52067044786746590e+001
 command: var/16, fun=-6.35294942448143640e+000
 command: var/17, fun=-2.52067044786746590e+001
 command: var/18, fun=2.52067044786746590e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.20000E+00  1.00000E-04        79969        32240       2            8:10 
   3.20500E+00  1.00000E-04        80114        32290       3            8:11 

  End Simulation
 command: var/13, fun=2.52779956468359720e+001
 command: var/14, fun=5.20361181052912510e+000
 command: var/15, fun=-2.52779956468359720e+001
 command: var/16, fun=-7.12413637640474030e+000
 command: var/17, fun=-2.52779956468359720e+001
 command: var/18, fun=2.52779956468359720e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.20500E+00  1.00000E-04        80114        32290       3            8:11 
   3.21000E+00  1.00000E-04        80260        32340       4            8:12 

  End Simulation
 command: var/13, fun=2.53493533989862740e+001
 command: var/14, fun=-4.07026138410274020e+000
 command: var/15, fun=-2.53493533989862740e+001
 command: var/16, fun=-4.49846062802915460e+000
 command: var/17, fun=-2.53493533989862740e+001
 command: var/18, fun=2.53493533989862740e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.21000E+00  1.00000E-04        80260        32340       4            8:12 
   3.21500E+00  1.00000E-04        80403        32390       2            8:13 

  End Simulation
 command: var/13, fun=2.54207775429371030e+001
 command: var/14, fun=-1.20756431134474380e+000
 command: var/15, fun=-2.54207775429371030e+001
 command: var/16, fun=-5.21420783941037860e+000
 command: var/17, fun=-2.54207775429371030e+001
 command: var/18, fun=2.54207775429371030e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.21500E+00  1.00000E-04        80403        32390       2            8:13 
   3.22000E+00  1.00000E-04        80548        32440       2            8:13 

  End Simulation
 command: var/13, fun=2.54922678863211940e+001
 command: var/14, fun=-4.47141019546809200e+000
 command: var/15, fun=-2.54922678863211940e+001
 command: var/16, fun=-4.38987523009028640e+000
 command: var/17, fun=-2.54922678863211940e+001
 command: var/18, fun=2.54922678863211940e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.22000E+00  1.00000E-04        80548        32440       2            8:13 
   3.22500E+00  1.00000E-04        80690        32490       3            8:14 

  End Simulation
 command: var/13, fun=2.55638242365929930e+001
 command: var/14, fun=-3.60503945813227440e+000
 command: var/15, fun=-2.55638242365929930e+001
 command: var/16, fun=-4.96743607785630910e+000
 command: var/17, fun=-2.55638242365929930e+001
 command: var/18, fun=2.55638242365929930e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.22500E+00  1.00000E-04        80690        32490       3            8:14 
   3.23000E+00  1.00000E-04        80840        32540       3            8:15 

  End Simulation
 command: var/13, fun=2.56354464010291490e+001
 command: var/14, fun=-4.27440365050635670e+000
 command: var/15, fun=-2.56354464010291490e+001
 command: var/16, fun=-4.32324842342785050e+000
 command: var/17, fun=-2.56354464010291490e+001
 command: var/18, fun=2.56354464010291490e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.23000E+00  1.00000E-04        80840        32540       3            8:15 
   3.23500E+00  1.00000E-04        80988        32590       2            8:16 

  End Simulation
 command: var/13, fun=2.57071341867290820e+001
 command: var/14, fun=6.06578252966493190e+000
 command: var/15, fun=-2.57071341867290820e+001
 command: var/16, fun=-7.45409225792866530e+000
 command: var/17, fun=-2.57071341867290820e+001
 command: var/18, fun=2.57071341867290820e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.23500E+00  1.00000E-04        80988        32590       2            8:16 
   3.24000E+00  1.00000E-04        81137        32640       2            8:17 

  End Simulation
 command: var/13, fun=2.57788874006154240e+001
 command: var/14, fun=2.10230267941134750e+000
 command: var/15, fun=-2.57788874006154240e+001
 command: var/16, fun=-4.46775639398287970e+000
 command: var/17, fun=-2.57788874006154240e+001
 command: var/18, fun=2.57788874006154240e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.24000E+00  1.00000E-04        81137        32640       2            8:17 
   3.24500E+00  1.00000E-04        81308        32699       3            8:18 

  End Simulation
 command: var/13, fun=2.58507058494346540e+001
 command: var/14, fun=3.91866909701460300e+000
 command: var/15, fun=-2.58507058494346540e+001
 command: var/16, fun=-5.60064806218437990e+000
 command: var/17, fun=-2.58507058494346540e+001
 command: var/18, fun=2.58507058494346540e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.24500E+00  1.00000E-04        81308        32699       3            8:18 
   3.25000E+00  1.00000E-04        81458        32749       2            8:19 

  End Simulation
 command: var/13, fun=2.59225893397575080e+001
 command: var/14, fun=8.00579924799694350e+000
 command: var/15, fun=-2.59225893397575080e+001
 command: var/16, fun=-8.06918425812187760e+000
 command: var/17, fun=-2.59225893397575080e+001
 command: var/18, fun=2.59225893397575080e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.25000E+00  1.00000E-04        81458        32749       2            8:19 
   3.25500E+00  1.00000E-04        81604        32799       3            8:20 

  End Simulation
 command: var/13, fun=2.59945376779795440e+001
 command: var/14, fun=4.55098468486974110e+000
 command: var/15, fun=-2.59945376779795440e+001
 command: var/16, fun=-5.31521078320597250e+000
 command: var/17, fun=-2.59945376779795440e+001
 command: var/18, fun=2.59945376779795440e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.25500E+00  1.00000E-04        81604        32799       3            8:20 
   3.26000E+00  1.00000E-04        81778        32858       2            8:21 

  End Simulation
 command: var/13, fun=2.60665506703217030e+001
 command: var/14, fun=8.28843216204385770e+000
 command: var/15, fun=-2.60665506703217030e+001
 command: var/16, fun=-7.93349583929483600e+000
 command: var/17, fun=-2.60665506703217030e+001
 command: var/18, fun=2.60665506703217030e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.26000E+00  1.00000E-04        81778        32858       2            8:21 
   3.26500E+00  1.00000E-04        81952        32917       3            8:22 

  End Simulation
 command: var/13, fun=2.61386281228307420e+001
 command: var/14, fun=-2.98801467859412990e+000
 command: var/15, fun=-2.61386281228307420e+001
 command: var/16, fun=-3.69687143827389390e+000
 command: var/17, fun=-2.61386281228307420e+001
 command: var/18, fun=2.61386281228307420e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.26500E+00  1.00000E-04        81952        32917       3            8:22 
   3.27000E+00  1.00000E-04        82101        32967       3            8:23 

  End Simulation
 command: var/13, fun=2.62107698413798540e+001
 command: var/14, fun=6.50738508181228250e+000
 command: var/15, fun=-2.62107698413798540e+001
 command: var/16, fun=-6.86753449832152900e+000
 command: var/17, fun=-2.62107698413798540e+001
 command: var/18, fun=2.62107698413798540e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.27000E+00  1.00000E-04        82101        32967       3            8:23 
   3.27500E+00  1.00000E-04        82251        33017       2            8:24 

  End Simulation
 command: var/13, fun=2.62829756316691140e+001
 command: var/14, fun=-2.01799947268398850e+000
 command: var/15, fun=-2.62829756316691140e+001
 command: var/16, fun=-4.39857356743443350e+000
 command: var/17, fun=-2.62829756316691140e+001
 command: var/18, fun=2.62829756316691140e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.27500E+00  1.00000E-04        82251        33017       2            8:24 
   3.28000E+00  1.00000E-04        82399        33067       3            8:25 

  End Simulation
 command: var/13, fun=2.63552452992260310e+001
 command: var/14, fun=-6.41526634386508300e+000
 command: var/15, fun=-2.63552452992260310e+001
 command: var/16, fun=-1.63933537166709490e+000
 command: var/17, fun=-2.63552452992260310e+001
 command: var/18, fun=2.63552452992260310e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.28000E+00  1.00000E-04        82399        33067       3            8:25 
   3.28500E+00  1.00000E-04        82548        33117       2            8:26 

  End Simulation
 command: var/13, fun=2.64275786494060900e+001
 command: var/14, fun=-5.19921539137694120e+000
 command: var/15, fun=-2.64275786494060900e+001
 command: var/16, fun=-2.60594734661544170e+000
 command: var/17, fun=-2.64275786494060900e+001
 command: var/18, fun=2.64275786494060900e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.28500E+00  1.00000E-04        82548        33117       2            8:26 
   3.29000E+00  1.00000E-04        82696        33167       3            8:27 

  End Simulation
 command: var/13, fun=2.64999754873932570e+001
 command: var/14, fun=9.10109787333147400e+000
 command: var/15, fun=-2.64999754873932570e+001
 command: var/16, fun=-8.53330813544161690e+000
 command: var/17, fun=-2.64999754873932570e+001
 command: var/18, fun=2.64999754873932570e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.29000E+00  1.00000E-04        82696        33167       3            8:27 
   3.29500E+00  1.00000E-04        82845        33217       2            8:28 

  End Simulation
 command: var/13, fun=2.65724356182004970e+001
 command: var/14, fun=9.63714624627544760e+000
 command: var/15, fun=-2.65724356182004970e+001
 command: var/16, fun=-8.28638681959187200e+000
 command: var/17, fun=-2.65724356182004970e+001
 command: var/18, fun=2.65724356182004970e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.29500E+00  1.00000E-04        82845        33217       2            8:28 
   3.30000E+00  1.00000E-04        83015        33276       3            8:29 

  End Simulation
 command: var/13, fun=2.66449588466703030e+001
 command: var/14, fun=-2.74520312549290150e+000
 command: var/15, fun=-2.66449588466703030e+001
 command: var/16, fun=-3.38364593946186740e+000
 command: var/17, fun=-2.66449588466703030e+001
 command: var/18, fun=2.66449588466703030e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.30000E+00  1.00000E-04        83015        33276       3            8:29 
   3.30500E+00  1.00000E-04        83165        33326       2            8:30 

  End Simulation
 command: var/13, fun=2.67175449774752320e+001
 command: var/14, fun=-3.78193486082014680e+000
 command: var/15, fun=-2.67175449774752320e+001
 command: var/16, fun=-3.11976380722058040e+000
 command: var/17, fun=-2.67175449774752320e+001
 command: var/18, fun=2.67175449774752320e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.30500E+00  1.00000E-04        83165        33326       2            8:30 
   3.31000E+00  1.00000E-04        83310        33376       3            8:31 

  End Simulation
 command: var/13, fun=2.67901938151184350e+001
 command: var/14, fun=-7.65475718607588100e+000
 command: var/15, fun=-2.67901938151184350e+001
 command: var/16, fun=-4.89927679582730150e-001
 command: var/17, fun=-2.67901938151184350e+001
 command: var/18, fun=2.67901938151184350e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.31000E+00  1.00000E-04        83310        33376       3            8:31 
   3.31500E+00  1.00000E-04        83484        33435       2            8:32 

  End Simulation
 command: var/13, fun=2.68629051639341690e+001
 command: var/14, fun=-5.96756535075581510e+000
 command: var/15, fun=-2.68629051639341690e+001
 command: var/16, fun=-1.90987443196773590e+000
 command: var/17, fun=-2.68629051639341690e+001
 command: var/18, fun=2.68629051639341690e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.31500E+00  1.00000E-04        83484        33435       2            8:32 
   3.32000E+00  1.00000E-04        83632        33485       3            8:33 

  End Simulation
 command: var/13, fun=2.69356788280883280e+001
 command: var/14, fun=-6.54830963055439330e+000
 command: var/15, fun=-2.69356788280883280e+001
 command: var/16, fun=-1.43050817228314390e+000
 command: var/17, fun=-2.69356788280883280e+001
 command: var/18, fun=2.69356788280883280e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.32000E+00  1.00000E-04        83632        33485       3            8:33 
   3.32500E+00  1.00000E-04        83809        33544       2            8:34 

  End Simulation
 command: var/13, fun=2.70085146115789600e+001
 command: var/14, fun=-5.06933828768414510e+000
 command: var/15, fun=-2.70085146115789600e+001
 command: var/16, fun=-2.41778607328198090e+000
 command: var/17, fun=-2.70085146115789600e+001
 command: var/18, fun=2.70085146115789600e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.32500E+00  1.00000E-04        83809        33544       2            8:34 
   3.33000E+00  1.00000E-04        83985        33603       3            8:35 

  End Simulation
 command: var/13, fun=2.70814123182368180e+001
 command: var/14, fun=4.40752130692362250e+000
 command: var/15, fun=-2.70814123182368180e+001
 command: var/16, fun=-5.16471680173743230e+000
 command: var/17, fun=-2.70814123182368180e+001
 command: var/18, fun=2.70814123182368180e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.33000E+00  1.00000E-04        83985        33603       3            8:35 
   3.33500E+00  1.00000E-04        84134        33653       2            8:36 

  End Simulation
 command: var/13, fun=2.71543717517258830e+001
 command: var/14, fun=-1.28596324390130560e+000
 command: var/15, fun=-2.71543717517258830e+001
 command: var/16, fun=-4.50466723610429210e+000
 command: var/17, fun=-2.71543717517258830e+001
 command: var/18, fun=2.71543717517258830e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.33500E+00  1.00000E-04        84134        33653       2            8:36 
   3.34000E+00  1.00000E-04        84274        33703       3            8:37 

  End Simulation
 command: var/13, fun=2.72273927155438750e+001
 command: var/14, fun=-9.57739204650422500e-001
 command: var/15, fun=-2.72273927155438750e+001
 command: var/16, fun=-4.77812468362112510e+000
 command: var/17, fun=-2.72273927155438750e+001
 command: var/18, fun=2.72273927155438750e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.34000E+00  1.00000E-04        84274        33703       3            8:37 
   3.34500E+00  1.00000E-04        84417        33753       2            8:37 

  End Simulation
 command: var/13, fun=2.73004750130228080e+001
 command: var/14, fun=-6.70969497896311220e+000
 command: var/15, fun=-2.73004750130228080e+001
 command: var/16, fun=-7.12644223221662540e-001
 command: var/17, fun=-2.73004750130228080e+001
 command: var/18, fun=2.73004750130228080e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.34500E+00  1.00000E-04        84417        33753       2            8:37 
   3.35000E+00  1.00000E-04        84562        33803       2            8:38 

  End Simulation
 command: var/13, fun=2.73736184473294840e+001
 command: var/14, fun=-5.70739153157358370e+000
 command: var/15, fun=-2.73736184473294840e+001
 command: var/16, fun=-1.69773068059057050e+000
 command: var/17, fun=-2.73736184473294840e+001
 command: var/18, fun=2.73736184473294840e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.35000E+00  1.00000E-04        84562        33803       2            8:38 
   3.35500E+00  1.00000E-04        84709        33853       1            8:39 

  End Simulation
 command: var/13, fun=2.74468228214660530e+001
 command: var/14, fun=7.91172028748853330e+000
 command: var/15, fun=-2.74468228214660530e+001
 command: var/16, fun=-7.54578973619063560e+000
 command: var/17, fun=-2.74468228214660530e+001
 command: var/18, fun=2.74468228214660530e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.35500E+00  1.00000E-04        84709        33853       1            8:39 
   3.36000E+00  1.00000E-04        84848        33903       2            8:40 

  End Simulation
 command: var/13, fun=2.75200879382705530e+001
 command: var/14, fun=-2.57612277797750090e+000
 command: var/15, fun=-2.75200879382705530e+001
 command: var/16, fun=-3.20622405489293040e+000
 command: var/17, fun=-2.75200879382705530e+001
 command: var/18, fun=2.75200879382705530e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.36000E+00  1.00000E-04        84848        33903       2            8:40 
   3.36500E+00  1.00000E-04        84989        33953       2            8:41 

  End Simulation
 command: var/13, fun=2.75934136004174060e+001
 command: var/14, fun=-1.31011246354563600e-001
 command: var/15, fun=-2.75934136004174060e+001
 command: var/16, fun=-4.91432160595574440e+000
 command: var/17, fun=-2.75934136004174060e+001
 command: var/18, fun=2.75934136004174060e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.36500E+00  1.00000E-04        84989        33953       2            8:41 
   3.37000E+00  1.00000E-04        85134        34003       2            8:42 

  End Simulation
 command: var/13, fun=2.76667996104179470e+001
 command: var/14, fun=9.48995825933146910e-001
 command: var/15, fun=-2.76667996104179470e+001
 command: var/16, fun=-4.78688573920459340e+000
 command: var/17, fun=-2.76667996104179470e+001
 command: var/18, fun=2.76667996104179470e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.37000E+00  1.00000E-04        85134        34003       2            8:42 
   3.37500E+00  1.00000E-04        85306        34062       3            8:43 

  End Simulation
 command: var/13, fun=2.77402457706210300e+001
 command: var/14, fun=5.33627637186359480e+000
 command: var/15, fun=-2.77402457706210300e+001
 command: var/16, fun=-4.99832389669941080e+000
 command: var/17, fun=-2.77402457706210300e+001
 command: var/18, fun=2.77402457706210300e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.37500E+00  1.00000E-04        85306        34062       3            8:43 
   3.38000E+00  1.00000E-04        85454        34112       2            8:44 

  End Simulation
 command: var/13, fun=2.78137518832134560e+001
 command: var/14, fun=-1.68109673936409790e+000
 command: var/15, fun=-2.78137518832134560e+001
 command: var/16, fun=-3.63518976763403590e+000
 command: var/17, fun=-2.78137518832134560e+001
 command: var/18, fun=2.78137518832134560e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.38000E+00  1.00000E-04        85454        34112       2            8:44 
   3.38500E+00  1.00000E-04        85624        34171       2            8:45 

  End Simulation
 command: var/13, fun=2.78873177502205750e+001
 command: var/14, fun=-1.49833841262478560e+000
 command: var/15, fun=-2.78873177502205750e+001
 command: var/16, fun=-3.82989706607892440e+000
 command: var/17, fun=-2.78873177502205750e+001
 command: var/18, fun=2.78873177502205750e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.38500E+00  1.00000E-04        85624        34171       2            8:45 
   3.39000E+00  1.00000E-04        85767        34221       3            8:46 

  End Simulation
 command: var/13, fun=2.79609431735068020e+001
 command: var/14, fun=9.62562653739973230e+000
 command: var/15, fun=-2.79609431735068020e+001
 command: var/16, fun=-7.93042313222345290e+000
 command: var/17, fun=-2.79609431735068020e+001
 command: var/18, fun=2.79609431735068020e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.39000E+00  1.00000E-04        85767        34221       3            8:46 
   3.39500E+00  1.00000E-04        85911        34271       2            8:47 

  End Simulation
 command: var/13, fun=2.80346279547761410e+001
 command: var/14, fun=1.44569469697302570e+001
 command: var/15, fun=-2.80346279547761410e+001
 command: var/16, fun=-1.09682214165270080e+001
 command: var/17, fun=-2.80346279547761410e+001
 command: var/18, fun=2.80346279547761410e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.39500E+00  1.00000E-04        85911        34271       2            8:47 
   3.40000E+00  1.00000E-04        86060        34321       2            8:48 

  End Simulation
 command: var/13, fun=2.81083718955727380e+001
 command: var/14, fun=1.09491143275222810e+001
 command: var/15, fun=-2.81083718955727380e+001
 command: var/16, fun=-8.12646634370665840e+000
 command: var/17, fun=-2.81083718955727380e+001
 command: var/18, fun=2.81083718955727380e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.40000E+00  1.00000E-04        86060        34321       2            8:48 
   3.40500E+00  1.00000E-04        86206        34371       2            8:49 

  End Simulation
 command: var/13, fun=2.81821747972813910e+001
 command: var/14, fun=-1.14653920885603980e+000
 command: var/15, fun=-2.81821747972813910e+001
 command: var/16, fun=-3.22873404567985080e+000
 command: var/17, fun=-2.81821747972813910e+001
 command: var/18, fun=2.81821747972813910e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.40500E+00  1.00000E-04        86206        34371       2            8:49 
   3.41000E+00  1.00000E-04        86355        34421       2            8:50 

  End Simulation
 command: var/13, fun=2.82560364611281050e+001
 command: var/14, fun=-5.72792376714724580e+000
 command: var/15, fun=-2.82560364611281050e+001
 command: var/16, fun=-2.03810555318268280e-001
 command: var/17, fun=-2.82560364611281050e+001
 command: var/18, fun=2.82560364611281050e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.41000E+00  1.00000E-04        86355        34421       2            8:50 
   3.41500E+00  1.00000E-04        86531        34480       2            8:51 

  End Simulation
 command: var/13, fun=2.83299566881806190e+001
 command: var/14, fun=3.47755567259890070e+000
 command: var/15, fun=-2.83299566881806190e+001
 command: var/16, fun=-4.47240360470599190e+000
 command: var/17, fun=-2.83299566881806190e+001
 command: var/18, fun=2.83299566881806190e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.41500E+00  1.00000E-04        86531        34480       2            8:51 
   3.42000E+00  1.00000E-04        86679        34530       3            8:52 

  End Simulation
 command: var/13, fun=2.84039352793489460e+001
 command: var/14, fun=5.60921560747880130e+000
 command: var/15, fun=-2.84039352793489460e+001
 command: var/16, fun=-4.48091800965057360e+000
 command: var/17, fun=-2.84039352793489460e+001
 command: var/18, fun=2.84039352793489460e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.42000E+00  1.00000E-04        86679        34530       3            8:52 
   3.42500E+00  1.00000E-04        86829        34580       3            8:53 

  End Simulation
 command: var/13, fun=2.84779720353859000e+001
 command: var/14, fun=-2.44314623224116500e+000
 command: var/15, fun=-2.84779720353859000e+001
 command: var/16, fun=-2.27191097258058590e+000
 command: var/17, fun=-2.84779720353859000e+001
 command: var/18, fun=2.84779720353859000e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.42500E+00  1.00000E-04        86829        34580       3            8:53 
   3.43000E+00  1.00000E-04        86998        34634       3            8:54 

  End Simulation
 command: var/13, fun=2.85520667568876510e+001
 command: var/14, fun=6.85197114517135740e+000
 command: var/15, fun=-2.85520667568876510e+001
 command: var/16, fun=-5.23414068952789260e+000
 command: var/17, fun=-2.85520667568876510e+001
 command: var/18, fun=2.85520667568876510e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.43000E+00  1.00000E-04        86998        34634       3            8:54 
   3.43500E+00  1.00000E-04        87148        34684       3            8:55 

  End Simulation
 command: var/13, fun=2.86262192442942370e+001
 command: var/14, fun=8.78382939515803150e+000
 command: var/15, fun=-2.86262192442942370e+001
 command: var/16, fun=-6.25927683917157650e+000
 command: var/17, fun=-2.86262192442942370e+001
 command: var/18, fun=2.86262192442942370e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.43500E+00  1.00000E-04        87148        34684       3            8:55 
   3.44000E+00  1.00000E-04        87297        34734       2            8:56 

  End Simulation
 command: var/13, fun=2.87004292978901180e+001
 command: var/14, fun=8.25243228691104140e+000
 command: var/15, fun=-2.87004292978901180e+001
 command: var/16, fun=-5.71518948222653390e+000
 command: var/17, fun=-2.87004292978901180e+001
 command: var/18, fun=2.87004292978901180e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.44000E+00  1.00000E-04        87297        34734       2            8:56 
   3.44500E+00  1.00000E-04        87467        34793       2            8:57 

  End Simulation
 command: var/13, fun=2.87746967178047050e+001
 command: var/14, fun=8.94547099018822140e+000
 command: var/15, fun=-2.87746967178047050e+001
 command: var/16, fun=-6.18402057183311980e+000
 command: var/17, fun=-2.87746967178047050e+001
 command: var/18, fun=2.87746967178047050e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.44500E+00  1.00000E-04        87467        34793       2            8:57 
   3.45000E+00  1.00000E-04        87614        34843       3            8:57 

  End Simulation
 command: var/13, fun=2.88490213040129290e+001
 command: var/14, fun=8.56973798504128760e+000
 command: var/15, fun=-2.88490213040129290e+001
 command: var/16, fun=-5.79414089114814960e+000
 command: var/17, fun=-2.88490213040129290e+001
 command: var/18, fun=2.88490213040129290e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.45000E+00  1.00000E-04        87614        34843       3            8:57 
   3.45500E+00  1.00000E-04        87776        34898       1            8:58 

  End Simulation
 command: var/13, fun=2.89234028563357270e+001
 command: var/14, fun=1.06082073862420900e-001
 command: var/15, fun=-2.89234028563357270e+001
 command: var/16, fun=-3.39306528848611500e+000
 command: var/17, fun=-2.89234028563357270e+001
 command: var/18, fun=2.89234028563357270e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.45500E+00  1.00000E-04        87776        34898       1            8:58 
   3.46000E+00  1.00000E-04        87925        34948       3            8:59 

  End Simulation
 command: var/13, fun=2.89978411744406190e+001
 command: var/14, fun=6.86467404316141390e+000
 command: var/15, fun=-2.89978411744406190e+001
 command: var/16, fun=-4.65809918778669640e+000
 command: var/17, fun=-2.89978411744406190e+001
 command: var/18, fun=2.89978411744406190e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.46000E+00  1.00000E-04        87925        34948       3            8:59 
   3.46500E+00  1.00000E-04        88102        35007       4            9:00 

  End Simulation
 command: var/13, fun=2.90723360578422360e+001
 command: var/14, fun=5.00014916260960530e+000
 command: var/15, fun=-2.90723360578422360e+001
 command: var/16, fun=-3.58824317580216380e+000
 command: var/17, fun=-2.90723360578422360e+001
 command: var/18, fun=2.90723360578422360e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.46500E+00  1.00000E-04        88102        35007       4            9:00 
   3.47000E+00  1.00000E-04        88276        35066       3            9:01 

  End Simulation
 command: var/13, fun=2.91468873059028690e+001
 command: var/14, fun=-8.05467301602639130e-001
 command: var/15, fun=-2.91468873059028690e+001
 command: var/16, fun=-2.77570315772972490e+000
 command: var/17, fun=-2.91468873059028690e+001
 command: var/18, fun=2.91468873059028690e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.47000E+00  1.00000E-04        88276        35066       3            9:01 
   3.47500E+00  1.00000E-04        88426        35116       2            9:02 

  End Simulation
 command: var/13, fun=2.92214947178329790e+001
 command: var/14, fun=1.98309665074242750e+001
 command: var/15, fun=-2.92214947178329790e+001
 command: var/16, fun=-1.38081323847983750e+001
 command: var/17, fun=-2.92214947178329790e+001
 command: var/18, fun=2.92214947178329790e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.47500E+00  1.00000E-04        88426        35116       2            9:02 
   3.48000E+00  1.00000E-04        88601        35175       3            9:03 

  End Simulation
 command: var/13, fun=2.92961580926917870e+001
 command: var/14, fun=1.33702261637948400e+001
 command: var/15, fun=-2.92961580926917870e+001
 command: var/16, fun=-8.29600034335091330e+000
 command: var/17, fun=-2.92961580926917870e+001
 command: var/18, fun=2.92961580926917870e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.48000E+00  1.00000E-04        88601        35175       3            9:03 
   3.48500E+00  1.00000E-04        88750        35225       3            9:04 

  End Simulation
 command: var/13, fun=2.93708772293877690e+001
 command: var/14, fun=8.59065897130270880e+000
 command: var/15, fun=-2.93708772293877690e+001
 command: var/16, fun=-5.02606517495483280e+000
 command: var/17, fun=-2.93708772293877690e+001
 command: var/18, fun=2.93708772293877690e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.48500E+00  1.00000E-04        88750        35225       3            9:04 
   3.49000E+00  1.00000E-04        88927        35284       3            9:05 

  End Simulation
 command: var/13, fun=2.94456519266792400e+001
 command: var/14, fun=-8.26466152922206200e+000
 command: var/15, fun=-2.94456519266792400e+001
 command: var/16, fun=3.19914513196168790e+000
 command: var/17, fun=-2.94456519266792400e+001
 command: var/18, fun=2.94456519266792400e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.49000E+00  1.00000E-04        88927        35284       3            9:05 
   3.49500E+00  1.00000E-04        89067        35334       3            9:06 

  End Simulation
 command: var/13, fun=2.95204819831748400e+001
 command: var/14, fun=-4.71725098227570960e+000
 command: var/15, fun=-2.95204819831748400e+001
 command: var/16, fun=4.89898754740561090e-002
 command: var/17, fun=-2.95204819831748400e+001
 command: var/18, fun=2.95204819831748400e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.49500E+00  1.00000E-04        89067        35334       3            9:06 
   3.50000E+00  1.00000E-04        89212        35384       2            9:07 

  End Simulation
 command: var/13, fun=2.95953671973341450e+001
 command: var/14, fun=8.63472285062552560e+000
 command: var/15, fun=-2.95953671973341450e+001
 command: var/16, fun=-5.68943720111549570e+000
 command: var/17, fun=-2.95953671973341450e+001
 command: var/18, fun=2.95953671973341450e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.50000E+00  1.00000E-04        89212        35384       2            9:07 
   3.50500E+00  1.00000E-04        89362        35434       2            9:07 

  End Simulation
 command: var/13, fun=2.96703073674681410e+001
 command: var/14, fun=1.58285783185972960e+001
 command: var/15, fun=-2.96703073674681410e+001
 command: var/16, fun=-1.05009632554579560e+001
 command: var/17, fun=-2.96703073674681410e+001
 command: var/18, fun=2.96703073674681410e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.50500E+00  1.00000E-04        89362        35434       2            9:07 
   3.51000E+00  1.00000E-04        89539        35493       2            9:08 

  End Simulation
 command: var/13, fun=2.97453022917398290e+001
 command: var/14, fun=-1.34605816981465740e+000
 command: var/15, fun=-2.97453022917398290e+001
 command: var/16, fun=-1.37440022122863860e+000
 command: var/17, fun=-2.97453022917398290e+001
 command: var/18, fun=2.97453022917398290e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.51000E+00  1.00000E-04        89539        35493       2            9:08 
   3.51500E+00  1.00000E-04        89685        35543       3            9:09 

  End Simulation
 command: var/13, fun=2.98203517681647340e+001
 command: var/14, fun=7.62211258714728770e+000
 command: var/15, fun=-2.98203517681647340e+001
 command: var/16, fun=-4.56504354272091730e+000
 command: var/17, fun=-2.98203517681647340e+001
 command: var/18, fun=2.98203517681647340e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.51500E+00  1.00000E-04        89685        35543       3            9:09 
   3.52000E+00  1.00000E-04        89833        35593       3            9:10 

  End Simulation
 command: var/13, fun=2.98954555946114300e+001
 command: var/14, fun=2.21614473073025420e+001
 command: var/15, fun=-2.98954555946114300e+001
 command: var/16, fun=-1.50081123562200900e+001
 command: var/17, fun=-2.98954555946114300e+001
 command: var/18, fun=2.98954555946114300e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.52000E+00  1.00000E-04        89833        35593       3            9:10 
   3.52500E+00  1.00000E-04        89979        35643       3            9:11 

  End Simulation
 command: var/13, fun=2.99706135688021400e+001
 command: var/14, fun=1.18445019581113180e+001
 command: var/15, fun=-2.99706135688021400e+001
 command: var/16, fun=-6.69227058466438950e+000
 command: var/17, fun=-2.99706135688021400e+001
 command: var/18, fun=2.99706135688021400e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.52500E+00  1.00000E-04        89979        35643       3            9:11 
   3.53000E+00  1.00000E-04        90154        35702       2            9:12 

  End Simulation
 command: var/13, fun=3.00458254883132480e+001
 command: var/14, fun=1.28532756753705930e+001
 command: var/15, fun=-3.00458254883132480e+001
 command: var/16, fun=-7.87551242580465870e+000
 command: var/17, fun=-3.00458254883132480e+001
 command: var/18, fun=3.00458254883132480e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.53000E+00  1.00000E-04        90154        35702       2            9:12 
   3.53500E+00  1.00000E-04        90304        35752       3            9:13 

  End Simulation
 command: var/13, fun=3.01210911505758180e+001
 command: var/14, fun=-3.85944745692299970e+000
 command: var/15, fun=-3.01210911505758180e+001
 command: var/16, fun=8.14334155254118790e-001
 command: var/17, fun=-3.01210911505758180e+001
 command: var/18, fun=3.01210911505758180e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.53500E+00  1.00000E-04        90304        35752       3            9:13 
   3.54000E+00  1.00000E-04        90481        35811       2            9:14 

  End Simulation
 command: var/13, fun=3.01964103528762140e+001
 command: var/14, fun=4.09652405035294990e+000
 command: var/15, fun=-3.01964103528762140e+001
 command: var/16, fun=-2.29861150811617550e+000
 command: var/17, fun=-3.01964103528762140e+001
 command: var/18, fun=3.01964103528762140e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.54000E+00  1.00000E-04        90481        35811       2            9:14 
   3.54500E+00  1.00000E-04        90631        35861       3            9:15 

  End Simulation
 command: var/13, fun=3.02717828923565510e+001
 command: var/14, fun=1.10785109908354580e+001
 command: var/15, fun=-3.02717828923565510e+001
 command: var/16, fun=-6.61455657704193540e+000
 command: var/17, fun=-3.02717828923565510e+001
 command: var/18, fun=3.02717828923565510e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.54500E+00  1.00000E-04        90631        35861       3            9:15 
   3.55000E+00  1.00000E-04        90781        35911       2            9:15 

  End Simulation
 command: var/13, fun=3.03472085660153250e+001
 command: var/14, fun=2.15715873108600960e+001
 command: var/15, fun=-3.03472085660153250e+001
 command: var/16, fun=-1.41141490952621260e+001
 command: var/17, fun=-3.03472085660153250e+001
 command: var/18, fun=3.03472085660153250e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.55000E+00  1.00000E-04        90781        35911       2            9:15 
   3.55500E+00  1.00000E-04        90931        35961       3            9:16 

  End Simulation
 command: var/13, fun=3.04226871707079060e+001
 command: var/14, fun=1.60580071190407490e+001
 command: var/15, fun=-3.04226871707079060e+001
 command: var/16, fun=-9.38637971463484710e+000
 command: var/17, fun=-3.04226871707079060e+001
 command: var/18, fun=3.04226871707079060e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.55500E+00  1.00000E-04        90931        35961       3            9:16 
   3.56000E+00  1.00000E-04        91084        36011       2            9:17 

  End Simulation
 command: var/13, fun=3.04982185031471290e+001
 command: var/14, fun=2.12245894122311750e+001
 command: var/15, fun=-3.04982185031471290e+001
 command: var/16, fun=-1.33035210987768340e+001
 command: var/17, fun=-3.04982185031471290e+001
 command: var/18, fun=3.04982185031471290e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.56000E+00  1.00000E-04        91084        36011       2            9:17 
   3.56500E+00  1.00000E-04        91237        36061       3            9:18 

  End Simulation
 command: var/13, fun=3.05738023599037910e+001
 command: var/14, fun=2.36508221725183710e+001
 command: var/15, fun=-3.05738023599037910e+001
 command: var/16, fun=-1.47534718029648000e+001
 command: var/17, fun=-3.05738023599037910e+001
 command: var/18, fun=3.05738023599037910e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.56500E+00  1.00000E-04        91237        36061       3            9:18 
   3.57000E+00  1.00000E-04        91468        36138       2            9:19 

  End Simulation
 command: var/13, fun=2.93157298852942210e+001
 command: var/14, fun=-4.15659500577245490e-001
 command: var/15, fun=-3.06494385374072240e+001
 command: var/16, fun=-2.98494200337141750e-001
 command: var/17, fun=-3.06494385374072240e+001
 command: var/18, fun=3.06494385374072240e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.57000E+00  1.00000E-04        91468        36138       2            9:19 
   3.57500E+00  1.00000E-04        91644        36197       2            9:20 

  End Simulation
 command: var/13, fun=3.07251268319458820e+001
 command: var/14, fun=5.72487251787682270e+000
 command: var/15, fun=-3.07251268319458820e+001
 command: var/16, fun=-1.82273695114077450e+000
 command: var/17, fun=-3.07251268319458820e+001
 command: var/18, fun=3.07251268319458820e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.57500E+00  1.00000E-04        91644        36197       2            9:20 
   3.58000E+00  1.00000E-04        91820        36256       2            9:21 

  End Simulation
 command: var/13, fun=3.08008670396677890e+001
 command: var/14, fun=1.20641702549821710e+001
 command: var/15, fun=-3.08008670396677890e+001
 command: var/16, fun=-6.63627026862893480e+000
 command: var/17, fun=-3.08008670396677890e+001
 command: var/18, fun=3.08008670396677890e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.58000E+00  1.00000E-04        91820        36256       2            9:21 
   3.58500E+00  1.00000E-04        91969        36306       2            9:22 

  End Simulation
 command: var/13, fun=3.08766589565812030e+001
 command: var/14, fun=6.84157593507649860e+000
 command: var/15, fun=-3.08766589565812030e+001
 command: var/16, fun=-2.25027761608214940e+000
 command: var/17, fun=-3.08766589565812030e+001
 command: var/18, fun=3.08766589565812030e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.58500E+00  1.00000E-04        91969        36306       2            9:22 
   3.59000E+00  1.00000E-04        92119        36356       3            9:23 

  End Simulation
 command: var/13, fun=3.09525023785551030e+001
 command: var/14, fun=7.91802781520874270e+000
 command: var/15, fun=-3.09525023785551030e+001
 command: var/16, fun=-3.31114605245663320e+000
 command: var/17, fun=-3.09525023785551030e+001
 command: var/18, fun=3.09525023785551030e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.59000E+00  1.00000E-04        92119        36356       3            9:23 
   3.59500E+00  1.00000E-04        92291        36410       2            9:24 

  End Simulation
 command: var/13, fun=2.89601075099404140e+001
 command: var/14, fun=-4.65583515758902240e+000
 command: var/15, fun=-3.10283971013197370e+001
 command: var/16, fun=2.46712126311593890e+000
 command: var/17, fun=-3.10283971013197370e+001
 command: var/18, fun=3.10283971013197370e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.59500E+00  1.00000E-04        92291        36410       2            9:24 
   3.60000E+00  1.00000E-04        92441        36460       2            9:25 

  End Simulation
 command: var/13, fun=3.11043429204671860e+001
 command: var/14, fun=1.80729705258333410e+001
 command: var/15, fun=-3.11043429204671860e+001
 command: var/16, fun=-1.14291091882250380e+001
 command: var/17, fun=-3.11043429204671860e+001
 command: var/18, fun=3.11043429204671860e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.60000E+00  1.00000E-04        92441        36460       2            9:25 
   3.60500E+00  1.00000E-04        92618        36519       3            9:26 

  End Simulation
 command: var/13, fun=3.11803396314519150e+001
 command: var/14, fun=6.31840798999836830e+000
 command: var/15, fun=-3.11803396314519150e+001
 command: var/16, fun=-1.58898956865623720e+000
 command: var/17, fun=-3.11803396314519150e+001
 command: var/18, fun=3.11803396314519150e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.60500E+00  1.00000E-04        92618        36519       3            9:26 
   3.61000E+00  1.00000E-04        92768        36569       3            9:27 

  End Simulation
 command: var/13, fun=2.87404218044981550e+001
 command: var/14, fun=-4.11027694714941650e+000
 command: var/15, fun=-3.12563870295913270e+001
 command: var/16, fun=2.02396836177775220e+000
 command: var/17, fun=-3.12563870295913270e+001
 command: var/18, fun=3.12563870295913270e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.61000E+00  1.00000E-04        92768        36569       3            9:27 
   3.61500E+00  1.00000E-04        92918        36619       3            9:28 

  End Simulation
 command: var/13, fun=2.83046027066730480e+001
 command: var/14, fun=-1.51108940483237930e+000
 command: var/15, fun=-3.13324849100662950e+001
 command: var/16, fun=-2.43759337170582680e-001
 command: var/17, fun=-3.13324849100662950e+001
 command: var/18, fun=3.13324849100662950e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.61500E+00  1.00000E-04        92918        36619       3            9:28 
   3.62000E+00  1.00000E-04        93095        36678       3            9:29 

  End Simulation
 command: var/13, fun=3.14086330679217550e+001
 command: var/14, fun=6.93386659078965730e+000
 command: var/15, fun=-3.14086330679217550e+001
 command: var/16, fun=-2.68888842853230380e+000
 command: var/17, fun=-3.14086330679217550e+001
 command: var/18, fun=3.14086330679217550e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.62000E+00  1.00000E-04        93095        36678       3            9:29 
   3.62500E+00  1.00000E-04        93245        36728       2            9:30 

  End Simulation
 command: var/13, fun=3.14848312980671960e+001
 command: var/14, fun=1.21854680518431290e+001
 command: var/15, fun=-3.14848312980671960e+001
 command: var/16, fun=-6.60849724659259330e+000
 command: var/17, fun=-3.14848312980671960e+001
 command: var/18, fun=3.14848312980671960e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.62500E+00  1.00000E-04        93245        36728       2            9:30 
   3.63000E+00  1.00000E-04        93449        36796       2            9:31 

  End Simulation
 command: var/13, fun=3.15610793952772680e+001
 command: var/14, fun=1.18795118382701880e+001
 command: var/15, fun=-3.15610793952772680e+001
 command: var/16, fun=-6.11129402511780830e+000
 command: var/17, fun=-3.15610793952772680e+001
 command: var/18, fun=3.15610793952772680e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.63000E+00  1.00000E-04        93449        36796       2            9:31 
   3.63500E+00  1.00000E-04        93599        36846       3            9:32 

  End Simulation
 command: var/13, fun=3.16373771541923080e+001
 command: var/14, fun=5.08196817259209420e+000
 command: var/15, fun=-3.16373771541923080e+001
 command: var/16, fun=-7.63426847048687460e-001
 command: var/17, fun=-3.16373771541923080e+001
 command: var/18, fun=3.16373771541923080e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.63500E+00  1.00000E-04        93599        36846       3            9:32 
   3.64000E+00  1.00000E-04        93748        36896       2            9:33 

  End Simulation
 command: var/13, fun=3.17137243693188960e+001
 command: var/14, fun=7.94700090975903530e+000
 command: var/15, fun=-3.17137243693188960e+001
 command: var/16, fun=-3.18121681700487670e+000
 command: var/17, fun=-3.17137243693188960e+001
 command: var/18, fun=3.17137243693188960e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.64000E+00  1.00000E-04        93748        36896       2            9:33 
   3.64500E+00  1.00000E-04        93898        36946       3            9:34 

  End Simulation
 command: var/13, fun=3.17901208350304220e+001
 command: var/14, fun=1.47508422836720520e+001
 command: var/15, fun=-3.17901208350304220e+001
 command: var/16, fun=-8.26923076473356210e+000
 command: var/17, fun=-3.17901208350304220e+001
 command: var/18, fun=3.17901208350304220e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.64500E+00  1.00000E-04        93898        36946       3            9:34 
   3.65000E+00  1.00000E-04        94048        36996       3            9:35 

  End Simulation
 command: var/13, fun=3.18665663455676270e+001
 command: var/14, fun=1.36048931843253340e+001
 command: var/15, fun=-3.18665663455676270e+001
 command: var/16, fun=-7.07447325509104900e+000
 command: var/17, fun=-3.18665663455676270e+001
 command: var/18, fun=3.18665663455676270e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.65000E+00  1.00000E-04        94048        36996       3            9:35 
   3.65500E+00  1.00000E-04        94197        37046       3            9:36 

  End Simulation
 command: var/13, fun=3.19430606950391360e+001
 command: var/14, fun=5.46840023679298250e+000
 command: var/15, fun=-3.19430606950391360e+001
 command: var/16, fun=-7.64351688870036020e-001
 command: var/17, fun=-3.19430606950391360e+001
 command: var/18, fun=3.19430606950391360e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.65500E+00  1.00000E-04        94197        37046       3            9:36 
   3.66000E+00  1.00000E-04        94346        37096       3            9:37 

  End Simulation
 command: var/13, fun=2.84047842160303430e+001
 command: var/14, fun=-3.43215340807358560e+000
 command: var/15, fun=-3.20196036774220620e+001
 command: var/16, fun=1.87324283144412230e+000
 command: var/17, fun=-3.20196036774220620e+001
 command: var/18, fun=3.20196036774220620e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.66000E+00  1.00000E-04        94346        37096       3            9:37 
   3.66500E+00  1.00000E-04        94495        37146       3            9:38 

  End Simulation
 command: var/13, fun=3.20961950865625310e+001
 command: var/14, fun=1.49114431560356720e+001
 command: var/15, fun=-3.20961950865625310e+001
 command: var/16, fun=-8.57003394133772820e+000
 command: var/17, fun=-3.20961950865625310e+001
 command: var/18, fun=3.20961950865625310e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.66500E+00  1.00000E-04        94495        37146       3            9:38 
   3.67000E+00  1.00000E-04        94645        37196       3            9:39 

  End Simulation
 command: var/13, fun=3.21728347161762330e+001
 command: var/14, fun=1.24704762942223010e+001
 command: var/15, fun=-3.21728347161762330e+001
 command: var/16, fun=-6.20002336121526730e+000
 command: var/17, fun=-3.21728347161762330e+001
 command: var/18, fun=3.21728347161762330e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.67000E+00  1.00000E-04        94645        37196       3            9:39 
   3.67500E+00  1.00000E-04        94817        37250       3            9:40 

  End Simulation
 command: var/13, fun=3.22495223598489820e+001
 command: var/14, fun=7.26008593126843850e+000
 command: var/15, fun=-3.22495223598489820e+001
 command: var/16, fun=-2.21295398657022170e+000
 command: var/17, fun=-3.22495223598489820e+001
 command: var/18, fun=3.22495223598489820e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.67500E+00  1.00000E-04        94817        37250       3            9:40 
   3.68000E+00  1.00000E-04        94967        37300       3            9:41 

  End Simulation
 command: var/13, fun=3.23262578110372870e+001
 command: var/14, fun=4.21472591704784080e+000
 command: var/15, fun=-3.23262578110372870e+001
 command: var/16, fun=8.49479426975986580e-002
 command: var/17, fun=-3.23262578110372870e+001
 command: var/18, fun=3.23262578110372870e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.68000E+00  1.00000E-04        94967        37300       3            9:41 
   3.68500E+00  1.00000E-04        95144        37359       2            9:42 

  End Simulation
 command: var/13, fun=3.24030408630688880e+001
 command: var/14, fun=8.54382890573671540e+000
 command: var/15, fun=-3.24030408630688880e+001
 command: var/16, fun=-3.36810579883630280e+000
 command: var/17, fun=-3.24030408630688880e+001
 command: var/18, fun=3.24030408630688880e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.68500E+00  1.00000E-04        95144        37359       2            9:42 
   3.69000E+00  1.00000E-04        95294        37409       3            9:43 

  End Simulation
 command: var/13, fun=2.88057484652473230e+001
 command: var/14, fun=-9.32035544123778510e+000
 command: var/15, fun=-3.24798713091433270e+001
 command: var/16, fun=6.76842602870339680e+000
 command: var/17, fun=-3.24798713091433270e+001
 command: var/18, fun=3.24798713091433270e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.69000E+00  1.00000E-04        95294        37409       3            9:43 
   3.69500E+00  1.00000E-04        95443        37459       2            9:44 

  End Simulation
 command: var/13, fun=3.25567489423325040e+001
 command: var/14, fun=6.72789308618684420e+000
 command: var/15, fun=-3.25567489423325040e+001
 command: var/16, fun=-2.44786359758250430e+000
 command: var/17, fun=-3.25567489423325040e+001
 command: var/18, fun=3.25567489423325040e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.69500E+00  1.00000E-04        95443        37459       2            9:44 
   3.70000E+00  1.00000E-04        95620        37518       3            9:45 

  End Simulation
 command: var/13, fun=3.26336735555811970e+001
 command: var/14, fun=9.54853949302387050e+000
 command: var/15, fun=-3.26336735555811970e+001
 command: var/16, fun=-4.33945406227659800e+000
 command: var/17, fun=-3.26336735555811970e+001
 command: var/18, fun=3.26336735555811970e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.70000E+00  1.00000E-04        95620        37518       3            9:45 
   3.70500E+00  1.00000E-04        95797        37577       2            9:46 

  End Simulation
 command: var/13, fun=3.27106449417077130e+001
 command: var/14, fun=6.73731492430362170e+000
 command: var/15, fun=-3.27106449417077130e+001
 command: var/16, fun=-2.02187826231834620e+000
 command: var/17, fun=-3.27106449417077130e+001
 command: var/18, fun=3.27106449417077130e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.70500E+00  1.00000E-04        95797        37577       2            9:46 
   3.71000E+00  1.00000E-04        95973        37636       3            9:47 

  End Simulation
 command: var/13, fun=2.77598040247580930e+001
 command: var/14, fun=-2.92248498377055240e+000
 command: var/15, fun=-3.27876628934043100e+001
 command: var/16, fun=1.47376480062669770e+000
 command: var/17, fun=-3.27876628934043100e+001
 command: var/18, fun=3.27876628934043100e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.71000E+00  1.00000E-04        95973        37636       3            9:47 
   3.71500E+00  1.00000E-04        96123        37686       2            9:48 

  End Simulation
 command: var/13, fun=3.28647272032379120e+001
 command: var/14, fun=9.27935377124379280e+000
 command: var/15, fun=-3.28647272032379120e+001
 command: var/16, fun=-4.31290347028803290e+000
 command: var/17, fun=-3.28647272032379120e+001
 command: var/18, fun=3.28647272032379120e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.71500E+00  1.00000E-04        96123        37686       2            9:48 
   3.72000E+00  1.00000E-04        96273        37736       2            9:49 

  End Simulation
 command: var/13, fun=3.29418376636505100e+001
 command: var/14, fun=6.52528956528804380e+000
 command: var/15, fun=-3.29418376636505100e+001
 command: var/16, fun=-1.81400399602038350e+000
 command: var/17, fun=-3.29418376636505100e+001
 command: var/18, fun=3.29418376636505100e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.72000E+00  1.00000E-04        96273        37736       2            9:49 
   3.72500E+00  1.00000E-04        96423        37786       2            9:49 

  End Simulation
 command: var/13, fun=3.30189940669598410e+001
 command: var/14, fun=1.48896225594163990e+001
 command: var/15, fun=-3.30189940669598410e+001
 command: var/16, fun=-8.51809807633119400e+000
 command: var/17, fun=-3.30189940669598410e+001
 command: var/18, fun=3.17262722604743850e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.72500E+00  1.00000E-04        96423        37786       2            9:49 
   3.73000E+00  1.00000E-04        96570        37836       3            9:50 

  End Simulation
 command: var/13, fun=3.30961962053598950e+001
 command: var/14, fun=1.00541105891051480e+001
 command: var/15, fun=-3.30961962053598950e+001
 command: var/16, fun=-4.29803443467558650e+000
 command: var/17, fun=-3.30961962053598950e+001
 command: var/18, fun=3.30961962053598950e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.73000E+00  1.00000E-04        96570        37836       3            9:50 
   3.73500E+00  1.00000E-04        96720        37886       2            9:51 

  End Simulation
 command: var/13, fun=2.79042710673715640e+001
 command: var/14, fun=-5.71681694237346960e+000
 command: var/15, fun=-3.31734438709214960e+001
 command: var/16, fun=4.10617779052366320e+000
 command: var/17, fun=-3.31734438709214960e+001
 command: var/18, fun=3.31734438709214960e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.73500E+00  1.00000E-04        96720        37886       2            9:51 
   3.74000E+00  1.00000E-04        96897        37945       3            9:52 

  End Simulation
 command: var/13, fun=2.77996108335873300e+001
 command: var/14, fun=-7.18762377032261580e+000
 command: var/15, fun=-3.32507368555928120e+001
 command: var/16, fun=4.90413553659262200e+000
 command: var/17, fun=-3.32507368555928120e+001
 command: var/18, fun=3.32507368555928120e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.74000E+00  1.00000E-04        96897        37945       3            9:52 
   3.74500E+00  1.00000E-04        97107        38012       3            9:53 

  End Simulation
 command: var/13, fun=3.33280749511999940e+001
 command: var/14, fun=1.66712555475456710e+000
 command: var/15, fun=-3.33280749511999940e+001
 command: var/16, fun=7.04151698475905420e-001
 command: var/17, fun=-3.33280749511999940e+001
 command: var/18, fun=3.33280749511999940e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.74500E+00  1.00000E-04        97107        38012       3            9:53 
   3.75000E+00  1.00000E-04        97257        38062       3            9:54 

  End Simulation
 command: var/13, fun=2.91359990146238060e+001
 command: var/14, fun=-1.90856181785885890e+001
 command: var/15, fun=-3.34054579494476660e+001
 command: var/16, fun=1.43098291584453500e+001
 command: var/17, fun=-3.34054579494476660e+001
 command: var/18, fun=3.34054579494476660e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.75000E+00  1.00000E-04        97257        38062       3            9:54 
   3.75500E+00  1.00000E-04        97439        38116       3            9:55 

  End Simulation
 command: var/13, fun=3.34828856419195380e+001
 command: var/14, fun=2.76035256826130970e+000
 command: var/15, fun=-3.34828856419195380e+001
 command: var/16, fun=2.91620321730363950e-001
 command: var/17, fun=-3.34828856419195380e+001
 command: var/18, fun=3.34828856419195380e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.75500E+00  1.00000E-04        97439        38116       3            9:55 
   3.76000E+00  1.00000E-04        97630        38180       2            9:56 

  End Simulation
 command: var/13, fun=3.35603578200789200e+001
 command: var/14, fun=1.39666006382698990e+001
 command: var/15, fun=-3.35603578200789200e+001
 command: var/16, fun=-8.20789065767524480e+000
 command: var/17, fun=-3.35603578200789200e+001
 command: var/18, fun=3.06789216342601530e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.76000E+00  1.00000E-04        97630        38180       2            9:56 
   3.76500E+00  1.00000E-04        97779        38230       3            9:57 

  End Simulation
 command: var/13, fun=3.36378742752693330e+001
 command: var/14, fun=1.02687296830717260e+001
 command: var/15, fun=-3.36378742752693330e+001
 command: var/16, fun=-4.78083488072767620e+000
 command: var/17, fun=-3.36378742752693330e+001
 command: var/18, fun=3.23299607320553190e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.76500E+00  1.00000E-04        97779        38230       3            9:57 
   3.77000E+00  1.00000E-04        97927        38280       3            9:58 

  End Simulation
 command: var/13, fun=3.37154347987150370e+001
 command: var/14, fun=1.49666360162984340e+001
 command: var/15, fun=-3.37154347987150370e+001
 command: var/16, fun=-8.47846569131389670e+000
 command: var/17, fun=-3.37154347987150370e+001
 command: var/18, fun=3.05014695257167150e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.77000E+00  1.00000E-04        97927        38280       3            9:58 
   3.77500E+00  1.00000E-04        98075        38330       4            9:59 

  End Simulation
 command: var/13, fun=3.37930391815215930e+001
 command: var/14, fun=1.46563913905993100e+001
 command: var/15, fun=-3.37930391815215930e+001
 command: var/16, fun=-7.96191204525475000e+000
 command: var/17, fun=-3.37930391815215930e+001
 command: var/18, fun=3.07202069012809820e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.77500E+00  1.00000E-04        98075        38330       4            9:59 
   3.78000E+00  1.00000E-04        98278        38388       2           10:00 

  End Simulation
 command: var/13, fun=3.38706872146764440e+001
 command: var/14, fun=4.08939438895053000e+000
 command: var/15, fun=-3.38706872146764440e+001
 command: var/16, fun=6.52843241180534720e-001
 command: var/17, fun=-3.38706872146764440e+001
 command: var/18, fun=3.38706872146764440e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.78000E+00  1.00000E-04        98278        38388       2           10:00 
   3.78500E+00  1.00000E-04        98454        38447       2           10:01 

  End Simulation
 command: var/13, fun=3.33417526985058360e+001
 command: var/14, fun=2.44930247811387860e+001
 command: var/15, fun=-3.39483786890494770e+001
 command: var/16, fun=-1.60532198260520470e+001
 command: var/17, fun=-3.39483786890494770e+001
 command: var/18, fun=2.68080155803517610e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.78500E+00  1.00000E-04        98454        38447       2           10:01 
   3.79000E+00  1.00000E-04        98604        38497       3           10:02 

  End Simulation
 command: var/13, fun=3.40261133953935510e+001
 command: var/14, fun=6.01899647300708020e+000
 command: var/15, fun=-3.40261133953935510e+001
 command: var/16, fun=-3.98544013934754750e-001
 command: var/17, fun=-3.40261133953935510e+001
 command: var/18, fun=3.40261133953935510e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.79000E+00  1.00000E-04        98604        38497       3           10:02 
   3.79500E+00  1.00000E-04        98754        38547       3           10:03 

  End Simulation
 command: var/13, fun=2.02054188888998600e+001
 command: var/14, fun=3.41038911243451180e+001
 command: var/15, fun=-3.41038911243451180e+001
 command: var/16, fun=-3.41038911243451180e+001
 command: var/17, fun=-3.41038911243451180e+001
 command: var/18, fun=3.02151812248108060e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.79500E+00  1.00000E-04        98754        38547       3           10:03 
   3.80000E+00  1.00000E-04        98925        38601       2           10:04 

  End Simulation
 command: var/13, fun=3.34951136011017990e+001
 command: var/14, fun=2.51234855046030920e+001
 command: var/15, fun=-3.41817116664247540e+001
 command: var/16, fun=-1.51748582942967460e+001
 command: var/17, fun=-3.41817116664247540e+001
 command: var/18, fun=2.75530588609637020e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.80000E+00  1.00000E-04        98925        38601       2           10:04 
   3.80500E+00  1.00000E-04        99156        38678       2           10:05 

  End Simulation
 command: var/13, fun=2.72128042456307180e+001
 command: var/14, fun=-7.83380533280859210e+000
 command: var/15, fun=-3.42595748120377050e+001
 command: var/16, fun=6.91613014068822630e+000
 command: var/17, fun=-3.42595748120377050e+001
 command: var/18, fun=3.42595748120377050e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.80500E+00  1.00000E-04        99156        38678       2           10:05 
   3.81000E+00  1.00000E-04        99306        38728       3           10:06 

  End Simulation
 command: var/13, fun=3.43374803514744900e+001
 command: var/14, fun=3.19742889820782810e+000
 command: var/15, fun=-3.43374803514744900e+001
 command: var/16, fun=1.34614900272865560e+000
 command: var/17, fun=-3.43374803514744900e+001
 command: var/18, fun=3.43143477803297830e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.81000E+00  1.00000E-04        99306        38728       3           10:06 
   3.81500E+00  1.00000E-04        99456        38778       3           10:07 

  End Simulation
 command: var/13, fun=3.35782504559507940e+001
 command: var/14, fun=1.26958420449292290e+001
 command: var/15, fun=-3.44154280749114390e+001
 command: var/16, fun=-6.08830488850923770e+000
 command: var/17, fun=-3.44154280749114390e+001
 command: var/18, fun=3.09613579862496590e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.81500E+00  1.00000E-04        99456        38778       3           10:07 
   3.82000E+00  1.00000E-04        99605        38828       3           10:08 

  End Simulation
 command: var/13, fun=2.63173784064302300e+001
 command: var/14, fun=-4.56565806080817090e+000
 command: var/15, fun=-3.44934177724112770e+001
 command: var/16, fun=4.01791659929555940e+000
 command: var/17, fun=-3.44934177724112770e+001
 command: var/18, fun=3.44934177724112770e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.82000E+00  1.00000E-04        99605        38828       3           10:08 
   3.82500E+00  1.00000E-04        99780        38887       2           10:09 

  End Simulation
 command: var/13, fun=2.60258804683434380e+001
 command: var/14, fun=-4.45149903300595100e+000
 command: var/15, fun=-3.45714492339236660e+001
 command: var/16, fun=3.51234117021542410e+000
 command: var/17, fun=-3.45714492339236660e+001
 command: var/18, fun=3.45714492339236660e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.82500E+00  1.00000E-04        99780        38887       2           10:09 
   3.83000E+00  1.00000E-04        99930        38937       3           10:10 

  End Simulation
 command: var/13, fun=3.44099063859692510e+001
 command: var/14, fun=2.84534536245584090e+000
 command: var/15, fun=-3.46495222492858020e+001
 command: var/16, fun=1.77789748506087950e+000
 command: var/17, fun=-3.46495222492858020e+001
 command: var/18, fun=3.36733740352553000e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.83000E+00  1.00000E-04        99930        38937       3           10:10 
   3.83500E+00  1.00000E-04       100106        38996       3           10:11 

  End Simulation
 command: var/13, fun=3.44384754121838200e+001
 command: var/14, fun=3.02337907337365760e+000
 command: var/15, fun=-3.47276366082229440e+001
 command: var/16, fun=1.67633279341573350e+000
 command: var/17, fun=-3.47276366082229440e+001
 command: var/18, fun=3.34197855582704760e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.83500E+00  1.00000E-04       100106        38996       3           10:11 
   3.84000E+00  1.00000E-04       100256        39046       2           10:12 

  End Simulation
 command: var/13, fun=2.97680498678154780e+001
 command: var/14, fun=-7.26252733971008310e-001
 command: var/15, fun=-3.48057921003490310e+001
 command: var/16, fun=2.25774662570739130e+000
 command: var/17, fun=-3.48057921003490310e+001
 command: var/18, fun=3.48057921003490310e+001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.84000E+00  1.00000E-04       100256        39046       2           10:12 
   3.84500E+00  1.00000E-04       100432        39105       3           10:13 

  End Simulation


Finished -----
Elapsed time = 1246.80s,  CPU time = 613.52s,  49.21%
