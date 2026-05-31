% Start Up:
clc, clear
% Nonlinear Model:
Bot_2
% adams_sys
% Control system:
Control_Schematic_2
Ts=1/1000;
%% Control System of Angular Velocity:
% Parameters of baqubot:
J=300.3137;          %[kg*mm^2], Mass moment of inertia of the right and left wheels.
R=50;                %[mm], Radius of the right and left wheels.
Mt=1.715;            %[kg], Total mass of the robot.
b=156;               %[mm], Distance between both wheels.
Rho=J+(Mt*(R^2))/3;  %[--], Coefficient.
% Observer design:
Amod=[0 1 0 0 0;0 0 1 0 0;0 0 0 1 0;0 0 0 0 1;0 0 0 0 0];
Bmod=[1/Rho 0 0 0 0]';
Cmod=[1 0 0 0 0];
Dmod=0;
[PolyObs,Poles_Obs]=charatioass(5,3,20,3);
Lobs=place(Amod',Cmod',Poles_Obs);
q=diag([50 5000 150 150 50]);
r=0.01;
Kobs=lqr(Amod',Cmod',q,r);
Aobs=Amod-(Lobs'*Cmod);
Bobs=[Bmod Lobs'];
Cobs=[Cmod;[0 1 0 0 0]];
Dobs=zeros(2,2);
Obs=ss(Aobs,Bobs,Cobs,Dobs);
Obz=c2d(Obs,Ts,'tustin');
% Control law design:
[PolyCon,Poles_Con]=charatioass(2,1.8,20,4.1);
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
% Filter:
Fz=c2d(tf(1200,[1 1200]),Ts,'tustin');
% Orientation PID Controller:
K2=.7;
K3=1.5;
%% Path tracking:
desired_path=My_paths(2,Ts);