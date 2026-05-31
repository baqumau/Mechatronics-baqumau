% Start Up:
clc, clear
% Nonlinear Model:
Bot
% adams_sys
% Control system:
Control_Schematic_1
Ts=1/1000;
%% Control System of Angular Velocity:
% Parameters of baqubot:
J=300.3137;         %[kg*mm^2], Mass moment of inertia of the right and left wheels.
R=50;               %[mm], Radius of the right and left wheels.
Mt=.74;             %[kg], Total mass of the robot.
b=156;              %[mm], Distance between both wheels.
rho=J+(Mt*(R^2))/3; %[--], Coefficient.
% Observer design:
Amod=[0 -1/rho 0;0 0 1;0 0 0];
Bmod=[1/rho 0 0]';
Cmod=[1 0 0];
Dmod=0;
[PolyObs,Poles_Obs]=charatioass(3,.15,20,3.1);
Lobs=place(Amod',Cmod',Poles_Obs);
q=diag([60 700 4500]);
r=0.01;
Kobs=lqr(Amod',Cmod',q,r);
Aobs=Amod-(Kobs'*Cmod);
Bobs=[Bmod Kobs'];
Cobs=[Cmod;[0 1 0]];
Dobs=[zeros(2,2)];
Obs=ss(Aobs,Bobs,Cobs,Dobs);
Obz=c2d(Obs,Ts,'tustin');
% Control law design:
[PolyCon,Poles_Con]=charatioass(2,.28,20,2.6);
K1=PolyCon(1,2);
K0=PolyCon(1,3);
Ka=K0/sqrt(K1); %Anti-Windup Gain.
% Tracking differentiator:
r=820; h=.02; d=r*h; d0=d*h;
Atd=[1 Ts 0;0 1 0;0 0 0];
Btd=[0 Ts 1]';
Ctd=eye(3);
Dtd=[0 0 0]';
TD=ss(Atd,Btd,Ctd,Dtd,Ts);
%% Path tracking:
desired_path=My_paths(1,Ts);