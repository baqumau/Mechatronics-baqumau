% Start Up:
clc, clear all
clear functions;
% Loading nonlinear Adams model:
twoRobotsPlant_1_v2015
% adams_sys
% Loading control system 2 (SMC-CS):
conSys_2robots_4_vR2014a
Ts = 1/200;                                                                 %Sample time.
%% Mechanical and Physical Properties:
% Parameters of Omnibot 1:
par.delta_1 = pi/6;                                                         %[rad], Wheels 1 and 2 are placed at this angle, with respect to y_m axis.
par.l_1 = 146;                                                              %[mm], Distance between the vehicle's center and the center of mass of each wheel.
par.jw_1 = 265.7;                                                           %[kg*mm^2], Mass moment of inertia of each omnidirectional wheel.
par.jr_1 = 26640.6;                                                         %[kg*mm^2], Mass moment of inertia of robot along the rotational center of the robot.
par.r_1 = 50;                                                               %[mm], Radius of each omnidirectional wheel.
par.m_1 = 2.5;                                                              %[kg], Total mass of the robot.
par.phi_01 = pi;                                                            %[rad], Initial orientation angle.
par.x_01 = 10.75e3;                                                         %[mm], Initial distance along x axis.
par.y_01 = 10e3;                                                            %[mm], Initial distance along y axis.
par.x0_r1 = [par.x_01 par.y_01 par.phi_01 0 0 0]';
par.q0_r1 = par.x0_r1(1:3,1);
% Parameters of Omnibot 2:
par.delta_2 = pi/6;                                                         %[rad], Wheels 1 and 2 are placed at this angle, with respect to y_m axis.
par.l_2 = 146;                                                              %[mm], Distance between the vehicle's center and the center of mass of each wheel.
par.jw_2 = 265.7;                                                           %[kg*mm^2], Mass moment of inertia of each omnidirectional wheel.
par.jr_2 = 26640.6;                                                         %[kg*mm^2], Mass moment of inertia of robot along the rotational center of the robot.
par.r_2 = 50;                                                               %[mm], Radius of each omnidirectional wheel.
par.m_2 = 2.5;                                                              %[kg], Total mass of the robot.
par.phi_02 = pi;                                                            %[rad], Initial orientation angle.
par.x_02 = 9.25e3;                                                          %[mm], Initial distance along x axis.
par.y_02 = 10e3;                                                            %[mm], Initial distance along y axis.
par.x0_r2 = [par.x_02 par.y_02 par.phi_02 0 0 0]';
par.q0_r2 = par.x0_r2(1:3,1);
% Initial conditions for 2-robot cluster system (Cluster specification 02):
par.xc_0 = (par.x0_r1(1) + par.x0_r2(1))/2;
par.yc_0 = (par.x0_r1(2) + par.x0_r2(2))/2;
par.phc_0 = atan2(par.x0_r1(1) - par.x0_r2(1),par.x0_r1(2) - par.x0_r2(2));
par.d_0 = (1/2)*sqrt((par.x0_r1(1) - par.x0_r2(1))^2 + (par.x0_r1(2) - par.x0_r2(2))^2);
par.th1_0 = par.x0_r1(3) + par.phc_0;
par.th2_0 = par.x0_r2(3) + par.phc_0;
%--------------------------------------------------------------------------
par.x0_c  = [par.xc_0 par.yc_0 par.phc_0 par.d_0 par.th1_0 par.th2_0 0 0 0 0 0 0]';
% sample time:
par.Ts = Ts;                                                                % Saving sample time for s-functions.
par.Ts_2 = Ts/2;                                                            % Half sample time.
Fz = c2d(tf(1,[.273 1]),Ts,'tustin');                                       % Discrte filter.
%% Path tracking:
desired_path = My_paths(37,Ts);
% Initial conditions for references builder:
xc_0 = 13e+03; yc_0 = 13e+03; thc_0 = atan2(1/25,1/12.5) + pi/2; d_0 = 200;
x1_0 = 13.1789e+03; y1_0 = 12.9106e+03; th1_0 = -atan2(1/25,1/12.5);
x2_0 = 12.8211e+03; y2_0 = 13.0894e+03; th2_0 = -atan2(1/25,1/12.5);
% % With Cluster space references 1:
% o1r_0 = 0; o2r_0 = 0; do1r_0 = 0; do2r_0 = 0;
% With Cluster space references 2:
dxc_0 = 2000/25; dyc_0 = 2000/12.5; dthc_0 = 0; dd_0 = 0; dph1_0 = 0; dph2_0 = 0;
o1r_0 = th1_0; o2r_0 = th2_0; do1r_0 = 0; do2r_0 = 0;
%-----------------------------------
dx1r_0 = dxc_0 + sin(thc_0)*dd_0 + d_0*cos(thc_0)*dthc_0;
dy1r_0 = dyc_0 + cos(thc_0)*dd_0 - d_0*sin(thc_0)*dthc_0;
dx2r_0 = dxc_0 - sin(thc_0)*dd_0 - d_0*cos(thc_0)*dthc_0;
dy2r_0 = dyc_0 - cos(thc_0)*dd_0 + d_0*sin(thc_0)*dthc_0;
%--------------------------------------------------------------------------
par.x0_c_ref  = [xc_0 yc_0 thc_0 d_0 (th1_0+thc_0) (th2_0+thc_0) dxc_0 dyc_0 dthc_0 dd_0 dph1_0 dph2_0]';
par.q0r_r1 = [x1_0 y1_0 th1_0]';
par.q0r_r2 = [x2_0 y2_0 th2_0]';
%% Tracking differentiator:
rt=820; ht=.02; dt=rt*ht; d0t=dt*ht;
Atd=[1 Ts 0;0 1 0;0 0 0];
Btd=[0 Ts 1]';
Ctd=eye(3);
Dtd=[0 0 0]';
TD=ss(Atd,Btd,Ctd,Dtd,Ts);
%% Parameters for nth-order homogeneous discrete-time differentiator (HDD):
par.L = [30 30 .15 60 .15 .15];
par.lambda = [5.3 14.1 9.8];
%% Characteristic polynomials for High-Gain Observers:
[K1,P1] = charatioass(3,1.1,20,4.5);                                        % Gains and Poles for x_c, y_c and d;
[K2,P2] = charatioass(3,2.0,20,4.5);                                        % Gains and Poles for th_c, th_1 and th_2;
par.alpha_1 = diag([K1(1,2) K1(1,2) K2(1,2) K1(1,2) K2(1,2) K2(1,2)]);
par.alpha_2 = diag([K1(1,3) K1(1,3) K2(1,3) K1(1,3) K2(1,3) K2(1,3)]);
par.alpha_3 = diag([K1(1,4) K1(1,4) K2(1,4) K1(1,4) K2(1,4) K2(1,4)]);
par.err = .42;
%% Sliding mode control:
% Tuning parameters:
par.S_b = [180 180 4*pi/3 150 pi pi]';                                      % Constant for saturate sliding surfaces.
par.N = [55 55 35 55 35 35]';                                               % Constant of derivative filter.
par.NTs = par.N*par.Ts;                                                     % Other constant of derivative filter.
par.Eta = [2.24 2.24 1.96 1.84 6.14 6.14]';                                 % Constant for bounding the sliding surface dynamics.
par.Delta = [1/4 1/20 1/20]';                                               % Constant for bounding the uncertainty model.
par.Rho_1 = (1/8)*ones(3,1)*(par.m_1)*(par.l_1/par.r_1)^2;                  % Constant for bounding the input torque disturbnces in robot 1.
par.Rho_2 = (1/8)*ones(3,1)*(par.m_2)*(par.l_2/par.r_2)^2;                  % Constant for bounding the input torque disturbnces in robot 2.
par.Lambda = diag([2.1432 2.1432 1.8432 2.1432 2.7241 2.7241]);             % Coefficients for sliding surface.
par.dampFacts = diag([1.15 1.15 1.15 1.15 1.01 1.01]);                      % Assign damping factor to the sliding surfaces.
%% Extended Kalman Filters
% EKF_1:
par.b_1 = 87.5*0;                                                           % [mm] Offset for EKF (Position sensor of each vehicle in Adams model is located onto its rotation center).
par.dnu_1 = [.2 .4 .2 .4 .3]';                                              % Input noise bounds.
par.dny_1 = 22;                                                             % Output noise bound.
% EKF_2:
par.b_2 = 87.5*0;                                                           % [mm] Offset for EKF (Position sensor of each vehicle in Adams model is located onto its rotation center).
par.dnu_2 = [.2 .4 .2 .4 .3]';                                              % Input noise bounds.
par.dny_2 = 22;
%% Clutch:
ck = max(abs([par.q0_r1;par.q0_r2] - [par.q0r_r1;par.q0r_r2]))*20/7000 + 6; % Time for cluch.
%% Timer:
% tic
% myobj = sim('startUp_conSys_2robots_2_vR2014a','SrcWorkspace','Current');
% toc
%% Several repetitive operations in the whole control system:
par.oneThird = 1/3;                                                         % Precompute 1/3;
par.twoThird = 2*par.oneThird;                                              % Precompute 2/3;
par.sqrt3_3 = sqrt(3)*par.oneThird;                                         % Precompute sqrt(3)/3;
par.EKFcons01 = par.r_1*par.oneThird;                                       % Precompute constant 1 of EKF 1 (par.r_1/3).
par.EKFcons02 = par.r_1*par.twoThird;                                       % Precompute constant 2 of EKF 1 (2*(par.r_1/3)).
par.EKFcons03 = par.r_1*par.sqrt3_3;                                        % Precompute constant 3 of EKF 1 (par.r_1*sqrt(3)/3).
par.EKFcons04 = par.EKFcons01/par.l_1;                                      % Precompute constant 4 of EKF 1 (par.r_1/(3*par.l_1)).
%-----------------------------------
par.EKFcons05 = par.r_2*par.oneThird;                                       % Precompute constant 5 of EKF 1 (par.r_2/3).
par.EKFcons06 = par.r_2*par.twoThird;                                       % Precompute constant 6 of EKF 1 (2*(par.r_2/3)).
par.EKFcons07 = par.r_2*par.sqrt3_3;                                        % Precompute constant 7 of EKF 1 (par.r_2*sqrt(3)/3).
par.EKFcons08 = par.EKFcons05/par.l_2;                                      % Precompute constant 8 of EKF 1 (par.r_2/(3*par.l_2)).
%-----------------------------------
par.HGOcons01 = par.m_1 + (1.5*par.jw_1/(par.r_1^2));                       % Precompute constant 1 of HGO 1 (par.m_1 + (1.5*par.jw_1/(par.r_1^2))).
par.HGOcons02 = par.jr_1 + (3*par.jw_1*(par.l_1^2))/(par.r_1^2);            % Precompute constant 2 of HGO 1 (par.jr_1 + (3*par.jw_1*(par.l_1^2))/(par.r_1^2)).
par.HGOcons03 = par.HGOcons01 - par.m_1;                                    % Precompute constant 3 of HGO 1 (1.5*par.jw_1/(par.r_1^2)).
par.HGOcons04 = 1/par.r_1;                                                  % Precompute constant 4 of HGO 1 (1/par.r_1).
par.HGOcons05 = par.l_1*par.HGOcons04;                                      % Precompute constant 5 of HGO 1 (par.l_1/par.r_1).
%-----------------------------------
par.HGOcons06 = par.m_2 + (1.5*par.jw_2/(par.r_2^2));                       % Precompute constant 6 of HGO 1 (par.m_2 + (1.5*par.jw_2/(par.r_2^2))).
par.HGOcons07 = par.jr_2 + (3*par.jw_2*(par.l_2^2))/(par.r_2^2);            % Precompute constant 7 of HGO 1 (par.jr_2 + (3*par.jw_2*(par.l_2^2))/(par.r_2^2)).
par.HGOcons08 = par.HGOcons06 - par.m_2;                                    % Precompute constant 8 of HGO 1 (1.5*par.jw_2/(par.r_2^2)).
par.HGOcons09 = 1/par.r_2;                                                  % Precompute constant 9 of HGO 1 (1/par.r_2).
par.HGOcons10 = par.l_2*par.HGOcons09;                                      % Precompute constant 10 of HGO 1 (par.l_2/par.r_2).
%-----------------------------------
par.HGOcons11 = par.alpha_1/par.err;                                        % Precompute constant 11 of HGO 1 (par.alpha_1/par.err).
par.HGOcons12 = par.alpha_2/par.err^2;                                      % Precompute constant 12 of HGO 1 (par.alpha_2/par.err^2).
par.HGOcons13 = par.alpha_3/par.err^3;                                      % Precompute constant 13 of HGO 1 (par.alpha_3/par.err^3).