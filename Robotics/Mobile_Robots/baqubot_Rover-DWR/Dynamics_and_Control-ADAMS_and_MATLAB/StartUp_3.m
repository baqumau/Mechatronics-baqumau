% Start Up:
clc, clear
% Nonlinear Model:
Bot_2
% adams_sys
% Control system:
Control_Schematic_3
Ts=1/1000;
%% Control System of Angular Velocity:
% Parameters of baqubot:
J=300.3137;                %[kg*mm^2], Mass moment of inertia of the right and left wheels.
R=50;                      %[mm], Radius of the right and left wheels.
Mt=1.715;                  %[kg], Total mass of the robot.
b=156;                     %[mm], Distance between both wheels.
Kappa=1/(J+(Mt*(R^2))/3);  %[--], Coefficient.
% Sliding mode design:
l0=4;
v0=1;
eps=.1;
% Tracking differentiator:
r=520; h=.05; d=r*h; d0=d*h;
Atd=[1 Ts 0;0 1 0;0 0 0];
Btd=[0 Ts 1]';
Ctd=eye(3);
Dtd=[0 0 0]';
TD=ss(Atd,Btd,Ctd,Dtd,Ts);
% Filter:
Fz=c2d(tf(1200,[1 1200]),Ts,'tustin');
%% Path tracking:
desired_path=My_paths(2,Ts);