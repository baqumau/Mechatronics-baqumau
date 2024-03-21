% Start Up:
clc, clear
% Nonlinear Model:
Bot_2
% adams_sys
% Control system:
Control_Schematic_4
Ts=1/1000;
%% Control System of Angular Velocity:
% Parameters of baqubot:
J=300.3137;                %[kg*mm^2], Mass moment of inertia of the right and left wheels.
R=50;                      %[mm], Radius of the right and left wheels.
Mt=1.715;                  %[kg], Total mass of the robot.
b=156;                     %[mm], Distance between both wheels.
Kappa=1/(J+(Mt*(R^2))/3);  %[--], Coefficient.
% Lyapunov re-design:
K1=1;
K2=2;
B=[0 Kappa]';
H=[0 -K1 -K1 0;1 -K2 0 -K1;1 0 -K2 -K1;0 1 1 -2*K2];
J=[-.1 0 0 -.1]';
L=H\J;
P=[L(1,1) L(2,1);L(3,1) L(4,1)];
eps=.5;
% Tracking differentiator:
r=820; h=.015; d=r*h; d0=d*h;
Atd=[1 Ts 0;0 1 0;0 0 0];
Btd=[0 Ts 1]';
Ctd=eye(3);
Dtd=[0 0 0]';
TD=ss(Atd,Btd,Ctd,Dtd,Ts);
% Filter:
Fz=c2d(tf(10,[1 10]),Ts,'tustin');
% Disturbance observer design:
Amod=[0 1 0 0 0;0 0 Kappa 0 0;0 0 0 1 0;0 0 0 0 1;0 0 0 0 0];
Bmod=[B' 0 0 0]';
Mmod=[0 -1 0 0 0]';
Cmod=[1 0 0 0 0];
Dmod=0;
[PolyObs,Poles_Obs]=charatioass(5,3,20,3);
Lobs=place(Amod',Cmod',Poles_Obs);
q=diag([50 5000 150 150 50]);
r=0.01;
Kobs=lqr(Amod',Cmod',q,r);
Aobs=Amod-(Lobs'*Cmod);
Bobs=[Bmod Mmod Lobs'];
Cobs=[1 0 0 0 0;0 0 1 0 0];
Dobs=zeros(2,3);
Obs=ss(Aobs,Bobs,Cobs,Dobs);
Obz=c2d(Obs,Ts,'tustin');
%% Path tracking:
desired_path=My_paths(2,Ts);