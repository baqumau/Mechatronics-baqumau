% ABB_IRB140_CD; Programa que calcula la cinemática directa para un robot tipo 
% ABB IRB140 utilizando el método de desplazmientos tornillo sucesivos,
% usa la función TS2MT que calcula la matriz de transformación homogenea por
% desplazmientos tornillo sucesivos.
% ® Copyright Ing. Mauro Baquero. Universidad Nacional de Colombia -- 2012.
clear all
syms L0 L1 L2 L3 L4 L5 Th1 Th2 Th3 Th4 Th5 Th6 real;
S=[0 0 1;1 0 0;1 0 0;0 1 0;1 0 0;0 1 0];
S0=[0 0 0;0 L0 L1;0 L0 L1+L2;0 L0+L3 L1+L2;0 L0+L3+L4 L1+L2;0 L0+L3+L4+L5 L1+L2];
TH=[Th1 Th2 Th3 Th4 Th5 Th6]';
T=[0;0;0;0;0;0];
%Matrices de transformación de tornillo:
A1=simple(TS2MT(S(1,:)',S0(1,:)',TH(1),T(1)));
A2=simple(TS2MT(S(2,:)',S0(2,:)',TH(2),T(2)));
A3=simple(TS2MT(S(3,:)',S0(3,:)',TH(3),T(3)));
A4=simple(TS2MT(S(4,:)',S0(4,:)',TH(4),T(4)));
A5=simple(TS2MT(S(5,:)',S0(5,:)',TH(5),T(5)));
A6=simple(TS2MT(S(6,:)',S0(6,:)',TH(6),T(6)));
Ah=simple(A1*A2*A3*A4*A5*A6);
%%
% Solución cinemática directa:
L0=70; L1=352; L2=360; L3=254; L4=126; L5=65;
%Posición de referencia de la muñeca:
O=[0,0,0]';
Q0=[0 L0+L3+L4+L5 L1+L2 1]';
%Orientación de referencia de la muñeca:
u0=[0,0,1]';
v0=[1,0,0]';
w0=[0,1,0]';
Rh0=[u0 v0 w0];
%Ángulos de articulación
Th1=input('Ángulo theta1(rad)?  ');
Th2=input('Ángulo theta2(rad)?  ');
Th3=input('Ángulo theta3(rad)?  ');
Th4=input('Ángulo theta4(rad)?  ');
Th5=input('Ángulo theta5(rad)?  ');
Th6=input('Ángulo theta6(rad)?  ');
d=input('Distancia entre la Muñeca y el Gripper (d)?  ');
%Localización final de la muñeca:
Ahn=eval(Ah); %Matriz de transformación de tornillo de la muñeca
Q=Ahn*Q0; %Posición de la muñeca
Rh=Ahn(1:3,1:3)*Rh0; %Matriz de rotación de la muñeca
%Matrices de transformación de tornillo:
A1n=eval(A1);
A2n=eval(A2);
A3n=eval(A3);
A4n=eval(A4);
A5n=eval(A5);
A6n=eval(A6);
S0n=eval(S0);
Ap=A1n; %Matriz A1 vista en el sistema de referencia 0.
ApruebaA=Ap;
Rhz=eye(3);
or1=Ap*[S0n(1,:) 1]';
Ap=Ap*A2n; %Matriz A2 vista en el sistema de referencia 0.
Aprueba=Ap;
Rhx=[[0 1 0]' [0 0 1]' [1 0 0]'];
or2=Ap*[S0n(2,:) 1]';
Ap=Ap*A3n; %Matriz A3 vista en el sistema de referencia 0.
Aprueba2=Ap;
Rht=[[0 1 0]' [0 0 1]' [1 0 0]'];
or3=Ap*[S0n(3,:) 1]';
Ap=Ap*A4n; %Matriz A4 vista en el sistema de referencia 0.
Aprueba3=Ap;
Rhu=[[0 0 1]' [1 0 0]' [0 1 0]'];
or4=Ap*[S0n(4,:) 1]';
Ap=Ap*A5n; %Matriz A5 vista en el sistema de referencia 0.
Aprueba4=Ap;
Rhv=[[0 1 0]' [0 0 1]' [1 0 0]'];
or5=Ap*[S0n(5,:) 1]';
Ap=Ap*A6n; %Matriz A6 vista en el sistema de referencia 0.
or6=Ap*Q0;
%Herramienta del robot:
oTh=[Rh Q(1:3,1); 0 0 0 1]*[eye(3) [0 0 d]';0 0 0 1]; %Matriz De Transformación de la herramienta vista en la base
%-----------------------------------------------
% clf
% Observemos el moviemiento de los tres primeros ejes del robot Elbow donde
% se aprecien de mejor forma sus respectivas rotaciones:
Aprue3=[ApruebaA(1:3,1:3)*Rhz or1(1:3,1)/100; 0 0 0 1];
Aprue2=[Aprueba(1:3,1:3)*Rhx or2(1:3,1)/100; 0 0 0 1];
Aprue4=[Aprueba2(1:3,1:3)*Rht or3(1:3,1)/100; 0 0 0 1];
Aprue5=[Aprueba3(1:3,1:3)*Rhu or4(1:3,1)/100; 0 0 0 1];
Aprue6=[Aprueba4(1:3,1:3)*Rhv or5(1:3,1)/100; 0 0 0 1];
Aprue7=[Rh Q(1:3,1)/100;0 0 0 1];
Herr=[Rh oTh(1:3,4)/100;0 0 0 1];
% figure(2)
frame(eye(4),'b',1);
frame(Aprue3,'r',1);
frame(Aprue2,'y',1);
frame(Aprue4,'m',1);
frame(Aprue5,'c',1);
frame(Aprue6,'k',1);
frame(Aprue7,'g',1);
frame(Herr,'g',1); grid