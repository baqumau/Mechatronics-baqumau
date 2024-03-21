function [oT1,oT2,oT3,oT4,oT5,oT6,oTh] = CD_ABBIRB140(Thetas,d)
%Funci�n que calcula la cinem�tica directa del robot ABB IRB-140.
%T = CD_ABBIRB140(Thetas,d) -- Calcula la matriz de transformaci�n
%homogenea a partir de los 6 �ngulos "Th1 - Th6" del manipulador.
%Ingres�ndole como entrada a esta funci�n, los 6 �ngulos "Th1 - Th6" de
%cada articulaci�n y la distancia "d" de la mu�eca del robot hasta el punto
%de contacto del gripper.
%
%� Copyright Ing. Mauro Baquero-Su�rez. Universidad Nacional de Colombia -- 2012.
L0=70; L1=352; L2=360; L3=254; L4=126; L5=65;
S0n=[0 0 0;0 L0 L1;0 L0 L1+L2;0 L0+L3 L1+L2;0 L0+L3+L4 L1+L2;0 L0+L3+L4+L5 L1+L2];
Th1=Thetas(1,1); Th2=Thetas(1,2); Th3=Thetas(1,3);
Th4=Thetas(1,4); Th5=Thetas(1,5); Th6=Thetas(1,6);
A1 =[cos(Th1), -sin(Th1), 0, 0;
     sin(Th1),  cos(Th1), 0, 0;
            0,         0, 1, 0;
            0,         0, 0, 1];
%-------------------------------------------------------
A2 =[1,        0,         0,                              0;
     0, cos(Th2), -sin(Th2), L0 - L0*cos(Th2) + L1*sin(Th2);
     0, sin(Th2),  cos(Th2), L1 - L1*cos(Th2) - L0*sin(Th2);
     0,        0,         0,                              1];
%-------------------------------------------------------
A3 =[1,        0,         0,                                        0;
     0, cos(Th3), -sin(Th3),   sin(Th3)*(L1 + L2) - L0*(cos(Th3) - 1);
     0, sin(Th3),  cos(Th3), - (cos(Th3) - 1)*(L1 + L2) - L0*sin(Th3);
     0,        0,         0,                                        1];
%-------------------------------------------------------
A4=[cos(Th4), 0, sin(Th4),       -sin(Th4)*(L1 + L2);
           0, 1,        0,                         0;
   -sin(Th4), 0, cos(Th4), -(cos(Th4) - 1)*(L1 + L2);
           0, 0,        0,                         1];
%-------------------------------------------------------
A5=[ 1,        0,         0,                                                    0;
     0, cos(Th5), -sin(Th5),   sin(Th5)*(L1 + L2) - (cos(Th5) - 1)*(L0 + L3 + L4);
     0, sin(Th5),  cos(Th5), - sin(Th5)*(L0 + L3 + L4) - (cos(Th5) - 1)*(L1 + L2);
     0,        0,         0,                                                    1];
%-------------------------------------------------------
A6=[cos(Th6), 0, sin(Th6),       -sin(Th6)*(L1 + L2);
           0, 1,        0,                         0;
   -sin(Th6), 0, cos(Th6), -(cos(Th6) - 1)*(L1 + L2);
           0, 0,        0,                         1];
%-------------------------------------------------------
%Posici�n de referencia de la mu�eca:
Q0=[0 L0+L3+L4+L5 L1+L2 1]';
%Orientaci�n de referencia de la mu�eca:
u0=[0,0,1]';
v0=[1,0,0]';
w0=[0,1,0]';
Rh0=[u0 v0 w0];
%Localizaci�n final de la mu�eca:
Ahn=A1*A2*A3*A4*A5*A6; %Matriz de transformaci�n de tornillo de la mu�eca
Q=Ahn*Q0; %Posici�n de la mu�eca
Rh=Ahn(1:3,1:3)*Rh0; %Matriz de rotaci�n de la mu�eca
Ap=A1; %Matriz A1 vista en el sistema de referencia 0.
ApruebaA=Ap;
Rhz=eye(3);
or1=Ap*[S0n(1,:) 1]';
Ap=Ap*A2; %Matriz A2 vista en el sistema de referencia 0.
Aprueba=Ap;
Rhx=[[0 1 0]' [0 0 1]' [1 0 0]'];
or2=Ap*[S0n(2,:) 1]';
Ap=Ap*A3; %Matriz A3 vista en el sistema de referencia 0.
Aprueba2=Ap;
Rht=[[0 1 0]' [0 0 1]' [1 0 0]'];
or3=Ap*[S0n(3,:) 1]';
Ap=Ap*A4; %Matriz A4 vista en el sistema de referencia 0.
Aprueba3=Ap;
Rhu=[[0 0 1]' [1 0 0]' [0 1 0]'];
or4=Ap*[S0n(4,:) 1]';
Ap=Ap*A5; %Matriz A5 vista en el sistema de referencia 0.
Aprueba4=Ap;
Rhv=[[0 1 0]' [0 0 1]' [1 0 0]'];
or5=Ap*[S0n(5,:) 1]';
Ap=Ap*A6; %Matriz A6 vista en el sistema de referencia 0.
or6=Ap*Q0;
%Herramienta del robot:
oTh=[Rh Q(1:3,1); 0 0 0 1]*[eye(3) [0 0 d]';0 0 0 1]; %Matriz De Transformaci�n de la herramienta vista en la base
%Matrices de transformaci�n homogenea de cada articulaci�n con respecto a
%la base:
oT1=[ApruebaA(1:3,1:3)*Rhz or1(1:3,1); 0 0 0 1];
oT2=[Aprueba(1:3,1:3)*Rhx or2(1:3,1); 0 0 0 1];
oT3=[Aprueba2(1:3,1:3)*Rht or3(1:3,1); 0 0 0 1];
oT4=[Aprueba3(1:3,1:3)*Rhu or4(1:3,1); 0 0 0 1];
oT5=[Aprueba4(1:3,1:3)*Rhv or5(1:3,1); 0 0 0 1];
oT6=[Rh Q(1:3,1);0 0 0 1];