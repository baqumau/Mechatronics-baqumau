function [sys,x0,str,ts,simStateCompliance] = HGO_2_vR2014a(t,x,u,flag,par)
%SFUNTMPL General MATLAB S-Function Template
%   With MATLAB S-functions, you can define you own ordinary differential
%   equations (ODEs), discrete system equations, and/or just about
%   any type of algorithm to be used within a Simulink block diagram.
%
%   The general form of an MATLAB S-function syntax is:
%       [SYS,X0,STR,TS,SIMSTATECOMPLIANCE] = SFUNC(T,X,U,FLAG,P1,...,Pn)
%
%   What is returned by SFUNC at a given point in time, T, depends on the
%   value of the FLAG, the current state vector, X, and the current
%   input vector, U.
%
%   FLAG   RESULT             DESCRIPTION
%   -----  ------             --------------------------------------------
%   0      [SIZES,X0,STR,TS]  Initialization, return system sizes in SYS,
%                             initial state in X0, state ordering strings
%                             in STR, and sample times in TS.
%   1      DX                 Return continuous state derivatives in SYS.
%   2      DS                 Update discrete states SYS = X(n+1)
%   3      Y                  Return outputs in SYS.
%   4      TNEXT              Return next time hit for variable step sample
%                             time in SYS.
%   5                         Reserved for future (root finding).
%   9      []                 Termination, perform any cleanup SYS=[].
%
%
%   The state vectors, X and X0 consists of continuous states followed
%   by discrete states.
%
%   Optional parameters, P1,...,Pn can be provided to the S-function and
%   used during any FLAG operation.
%
%   When SFUNC is called with FLAG = 0, the following information
%   should be returned:
%
%      SYS(1) = Number of continuous states.
%      SYS(2) = Number of discrete states.
%      SYS(3) = Number of outputs.
%      SYS(4) = Number of inputs.
%               Any of the first four elements in SYS can be specified
%               as -1 indicating that they are dynamically sized. The
%               actual length for all other flags will be equal to the
%               length of the input, U.
%      SYS(5) = Reserved for root finding. Must be zero.
%      SYS(6) = Direct feedthrough flag (1=yes, 0=no). The s-function
%               has direct feedthrough if U is used during the FLAG=3
%               call. Setting this to 0 is akin to making a promise that
%               U will not be used during FLAG=3. If you break the promise
%               then unpredictable results will occur.
%      SYS(7) = Number of sample times. This is the number of rows in TS.
%
%
%      X0     = Initial state conditions or [] if no states.
%
%      STR    = State ordering strings which is generally specified as [].
%
%      TS     = An m-by-2 matrix containing the sample time
%               (period, offset) information. Where m = number of sample
%               times. The ordering of the sample times must be:
%
%               TS = [0      0,      : Continuous sample time.
%                     0      1,      : Continuous, but fixed in minor step
%                                      sample time.
%                     PERIOD OFFSET, : Discrete sample time where
%                                      PERIOD > 0 & OFFSET < PERIOD.
%                     -2     0];     : Variable step discrete sample time
%                                      where FLAG=4 is used to get time of
%                                      next hit.
%
%               There can be more than one sample time providing
%               they are ordered such that they are monotonically
%               increasing. Only the needed sample times should be
%               specified in TS. When specifying more than one
%               sample time, you must check for sample hits explicitly by
%               seeing if
%                  abs(round((T-OFFSET)/PERIOD) - (T-OFFSET)/PERIOD)
%               is within a specified tolerance, generally 1e-8. This
%               tolerance is dependent upon your model's sampling times
%               and simulation time.
%
%               You can also specify that the sample time of the S-function
%               is inherited from the driving block. For functions which
%               change during minor steps, this is done by
%               specifying SYS(7) = 1 and TS = [-1 0]. For functions which
%               are held during minor steps, this is done by specifying
%               SYS(7) = 1 and TS = [-1 1].
%
%      SIMSTATECOMPLIANCE = Specifices how to handle this block when saving and
%                           restoring the complete simulation state of the
%                           model. The allowed values are: 'DefaultSimState',
%                           'HasNoSimState' or 'DisallowSimState'. If this value
%                           is not speficified, then the block's compliance with
%                           simState feature is set to 'UknownSimState'.


%   Copyright 1990-2010 The MathWorks, Inc.

%
% The following outlines the general structure of an S-function.
%
switch flag,

  %%%%%%%%%%%%%%%%%%
  % Initialization %
  %%%%%%%%%%%%%%%%%%
  case 0,
    [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes(par);

  %%%%%%%%%%%%%%%
  % Derivatives %
  %%%%%%%%%%%%%%%
  case 1,
    sys=mdlDerivatives(t,x,u,par);

  %%%%%%%%%%
  % Update %
  %%%%%%%%%%
  case 2,
    sys=mdlUpdate(t,x,u,par);

  %%%%%%%%%%%
  % Outputs %
  %%%%%%%%%%%
  case 3,
    sys=mdlOutputs(t,x,u,par);

  %%%%%%%%%%%%%%%%%%%%%%%
  % GetTimeOfNextVarHit %
  %%%%%%%%%%%%%%%%%%%%%%%
  case 4,
    sys=mdlGetTimeOfNextVarHit(t,x,u);

  %%%%%%%%%%%%%
  % Terminate %
  %%%%%%%%%%%%%
  case 9,
    sys=mdlTerminate(t,x,u);

  %%%%%%%%%%%%%%%%%%%%
  % Unexpected flags %
  %%%%%%%%%%%%%%%%%%%%
  otherwise
    DAStudio.error('Simulink:blocks:unhandledFlag', num2str(flag));

end

% end sfuntmpl

%
%=============================================================================
% mdlInitializeSizes
% Return the sizes, initial conditions, and sample times for the S-function.
%=============================================================================
%
function [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes(par)

%
% call simsizes for a sizes structure, fill it in and convert it to a
% sizes array.
%
% Note that in this example, the values are hard coded.  This is not a
% recommended practice as the characteristics of the block are typically
% defined by the S-function parameters.
%
sizes = simsizes;

sizes.NumContStates  = 0;
sizes.NumDiscStates  = 36;
sizes.NumOutputs     = 18;
sizes.NumInputs      = 12;
sizes.DirFeedthrough = 0;
sizes.NumSampleTimes = 1;   % at least one sample time is needed

sys = simsizes(sizes);

%
% initialize the initial conditions
%
x0  = [[par.xc_0 par.yc_0 par.phc_0 par.d_0 par.th1_0 par.th2_0] [par.xc_0 par.yc_0 par.phc_0 par.d_0 par.th1_0 par.th2_0] zeros(1,6) zeros(1,6) zeros(1,6) zeros(1,6)]';

%
% str is always an empty matrix
%
str = [];

%
% initialize the array of sample times
%
ts  = [0 0];

% Specify the block simStateCompliance. The allowed values are:
%    'UnknownSimState', < The default setting; warn and assume DefaultSimState
%    'DefaultSimState', < Same sim state as a built-in block
%    'HasNoSimState',   < No sim state
%    'DisallowSimState' < Error out when saving or restoring the model sim state
simStateCompliance = 'UnknownSimState';

% end mdlInitializeSizes

%
%=============================================================================
% mdlDerivatives
% Return the derivatives for the continuous states.
%=============================================================================
%
function sys=mdlDerivatives(t,x,u,par)

sys = [];

% end mdlDerivatives

%
%=============================================================================
% mdlUpdate
% Handle discrete state updates, sample time hits, and major time step
% requirements.
%=============================================================================
%
function sys=mdlUpdate(t,x,u,par)

sys(1:6,1) = x(19:24,1) + (par.alpha_1/par.err)*(u(7:12,1) - x(7:12));
sys(7:12,1) = (par.Ts/2)*(sys(1:6,1) + x(1:6,1)) + x(7:12,1);
%--------------------------------------------------------------------------
D1 = diag([par.m_1 + (1.5*par.jw_1/(par.r_1^2)), par.m_1 + (1.5*par.jw_1/(par.r_1^2)), par.jr_1 + (3*par.jw_1*(par.l_1^2))/(par.r_1^2)]);
D2 = diag([par.m_2 + (1.5*par.jw_2/(par.r_2^2)), par.m_2 + (1.5*par.jw_2/(par.r_2^2)), par.jr_2 + (3*par.jw_2*(par.l_2^2))/(par.r_2^2)]);
D = [D1 zeros(3,3);zeros(3,3) D2];
%--------------------------------------------------------------------------
Jin_c = [1, 0,  x(10)*cos(x(9)),  sin(x(9)), 0, 0;...
         0, 1, -x(10)*sin(x(9)),  cos(x(9)), 0, 0;...
         0, 0,                1,          0, 1, 0;...
         1, 0, -x(10)*cos(x(9)), -sin(x(9)), 0, 0;...
         0, 1,  x(10)*sin(x(9)), -cos(x(9)), 0, 0;...
         0, 0,                1,          0, 0, 1];
%--------------------------------------------------------------------------
Lambda_c = Jin_c'*D*Jin_c;
%--------------------------------------------------------------------------
H1_dc = (3*par.jw_1/(2*par.r_1^2))*(x(21)+x(23))*[0 1 0;-1 0 0;0 0 0];
H2_dc = (3*par.jw_2/(2*par.r_2^2))*(x(21)+x(24))*[0 1 0;-1 0 0;0 0 0];
H_dc = [H1_dc zeros(3,3);zeros(3,3) H2_dc];
%--------------------------------------------------------------------------
dJ_dc_c = [                                                     0,                                                      0, 0,                                                      0,                                                      0, 0;...
                                                                0,                                                      0, 0,                                                      0,                                                      0, 0;...
           -(x(10)*sin(x(9))*x(21) + x(22)*cos(x(9)))/(2*x(10)^2), -(x(10)*cos(x(9))*x(21) - x(22)*sin(x(9)))/(2*x(10)^2), 0,  (x(10)*sin(x(9))*x(21) + x(22)*cos(x(9)))/(2*x(10)^2),  (x(10)*cos(x(9))*x(21) - x(22)*sin(x(9)))/(2*x(10)^2), 0;...
                                            (1/2)*cos(x(9))*x(21),                                 -(1/2)*sin(x(9))*x(21), 0,                                 -(1/2)*cos(x(9))*x(21),                                  (1/2)*sin(x(9))*x(21), 0;...
            (x(10)*sin(x(9))*x(21) + x(22)*cos(x(9)))/(2*x(10)^2),  (x(10)*cos(x(9))*x(21) - x(22)*sin(x(9)))/(2*x(10)^2), 0, -(x(10)*sin(x(9))*x(21) + x(22)*cos(x(9)))/(2*x(10)^2), -(x(10)*cos(x(9))*x(21) - x(22)*sin(x(9)))/(2*x(10)^2), 0;...
            (x(10)*sin(x(9))*x(21) + x(22)*cos(x(9)))/(2*x(10)^2),  (x(10)*cos(x(9))*x(21) - x(22)*sin(x(9)))/(2*x(10)^2), 0, -(x(10)*sin(x(9))*x(21) + x(22)*cos(x(9)))/(2*x(10)^2), -(x(10)*cos(x(9))*x(21) - x(22)*sin(x(9)))/(2*x(10)^2), 0];
%--------------------------------------------------------------------------
B1 = (1/par.r_1)*[-sin(par.delta_1 + x(11) + x(9)), -sin(par.delta_1 - x(11) - x(9)), cos(x(11) + x(9));...
                   cos(par.delta_1 + x(11) + x(9)), -cos(par.delta_1 - x(11) - x(9)), sin(x(11) + x(9));...
                                           par.l_1,                          par.l_1,           par.l_1];
B2 = (1/par.r_2)*[-sin(par.delta_2 + x(12) + x(9)), -sin(par.delta_2 - x(12) - x(9)), cos(x(12) + x(9));...
                   cos(par.delta_2 + x(12) + x(9)), -cos(par.delta_2 - x(12) - x(9)), sin(x(12) + x(9));...
                                           par.l_2,                          par.l_2,           par.l_2];
B_c = [B1 zeros(3,3);zeros(3,3) B2];
%--------------------------------------------------------------------------
sys(13:18,1) = dJ_dc_c*Jin_c*x(19:24,1) - Lambda_c\Jin_c'*H_dc*Jin_c*x(19:24,1) + Lambda_c\Jin_c'*B_c*(1e3*u(1:6)) + (par.alpha_2/par.err^2)*(u(7:12,1) - x(7:12)) + x(31:36);
sys(19:24,1) = (par.Ts/2)*(sys(13:18,1) + x(13:18,1)) + x(19:24,1);
sys(25:30,1) = (par.alpha_3/par.err^3)*(u(7:12,1) - x(7:12));
sys(31:36,1) = (par.Ts/2)*(sys(25:30,1) + x(25:30,1)) + x(31:36,1);

% end mdlUpdate

%
%=============================================================================
% mdlOutputs
% Return the block outputs.
%=============================================================================
%
function sys=mdlOutputs(t,x,u,par)

sys(1:6,1) = x(7:12,1);
sys(7:12,1) = x(19:24,1);
sys(13:18,1) = x(31:36,1);

% end mdlOutputs

%
%=============================================================================
% mdlGetTimeOfNextVarHit
% Return the time of the next hit for this block.  Note that the result is
% absolute time.  Note that this function is only used when you specify a
% variable discrete-time sample time [-2 0] in the sample time array in
% mdlInitializeSizes.
%=============================================================================
%
function sys=mdlGetTimeOfNextVarHit(t,x,u)

sampleTime = 1;    %  Example, set the next hit to be one second later.
sys = t + sampleTime;

% end mdlGetTimeOfNextVarHit

%
%=============================================================================
% mdlTerminate
% Perform any end of simulation tasks.
%=============================================================================
%
function sys=mdlTerminate(t,x,u)

sys = [];

% end mdlTerminate