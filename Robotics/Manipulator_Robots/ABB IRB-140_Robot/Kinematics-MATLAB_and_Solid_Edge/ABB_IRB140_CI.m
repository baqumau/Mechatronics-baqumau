% ABB_IRB140_CI; Programa que calcula la cinemática inversa para un robot tipo 
% ABB IRB140 utilizando el método de desplazmientos tornillo sucesivos,
% usa la función TS2MT que calcula la matriz de transformación homogenea por
% desplazmientos tornillo sucesivos.
% ® Copyright Ing. Mauro Baquero. Universidad Nacional de Colombia -- 2012.

syms L0 L1 L2 L3 L4 L5 Th1 Th2 Th3 Th4 Th5 Th6 Uox Uoy Uoz Vox Voy Voz Wox Woy Woz Px Py Pz d real;
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
%Matrices de Rotación:
R1=rotz(Th1);
R2=[[0 1 0]' [0 0 1]' [1 0 0]']*rotz(Th2);
R3=rotz(Th3);
R4=[[0 1 0]' [0 0 1]' [1 0 0]']*rotz(Th4);
R5=[[0 0 1]' [1 0 0]' [0 1 0]']*rotz(Th5);
R6=[[0 1 0]' [0 0 1]' [1 0 0]']*rotz(Th6);
%Comencemos el análisis desde la herramienta del robot:
oRp=[[Uox Uoy Uoz]' [Vox Voy Voz]' [Wox Woy Woz]']; %Matriz de rotación de la herramienta vista en la base
oTp=[oRp [Px Py Pz]';0 0 0 1]; %Matriz de transformación de la herramienta vista en la base
oTm=[[Uox Uoy Uoz]' [Vox Voy Voz]' [Wox Woy Woz]' [Px Py Pz]';0 0 0 1]*[eye(3) [0 0 -d]';0 0 0 1]; %Matriz de transformación de la muñeca vista en la base
xm=[0 0 1]'; ym=[1 0 0]'; zm=[0 1 0]'; oPm_a=simple(Ah*[0 L0+L3+L4+L5 L1+L2 1]');
oTm_a=simple([Ah(1:3,1:3)*[xm ym zm] oPm_a(1:3);0 0 0 1]); %Matriz de transformación de la muñeca vista en la base
oTp_a=oTm_a*[eye(3) [0 0 d]';0 0 0 1]; %Matriz de transformación de la herramienta vista en la base
oP4_a=simple(A1*A2*A3*A4*A5*[0 L0+L3+L4 L1+L2 1]'); %Posición de la articulación antes de la muñeca vista en la base
oTm*[eye(3) [0 0 -L5]';0 0 0 1];
oP4=ans(1:3,4);  %Posición de la articulación antes de la muñeca vista en la base
A1_5=A1*A2*A3*A4*A5; x4=[0 1 0]'; y4=[0 0 1]'; z4=[1 0 0]';
oT4_a=simple([A1_5(1:3,1:3)*[x4 y4 z4] oP4_a(1:3);0 0 0 1]);  %Matriz de transformación de la articulación antes de la muñeca vista en la base
d1=simple(((L3*cos(Th2 + Th3) + L4*cos(Th2 + Th3) - L2*sin(Th2))^2)+(L3*sin(Th2 + Th3) + L4*sin(Th2 + Th3) + L2*cos(Th2))^2);
A1_4=A1*A2*A3*A4; x3=[0 0 1]'; y3=[1 0 0]'; z3=[0 1 0]'; oP3_a=A1_4*[0 L0+L3 L1+L2 1]';
oT3_a=[A1_4(1:3,1:3)*[x3 y3 z3] oP3_a(1:3);0 0 0 1];
%Operación Matemática del Robot Stanford (2.178)
X=simple(R4*R5*R6);
Xa=simple(inv(R3)*inv(R2)*inv(R1)*oRp);
%Con las matrices anteriores sacamos los 6 ángulos del Manipulador. Ahora
%resolvamos el problema numericamente.
%Matriz de transformación del gripper:
%oTh=input('Matriz de Transformación de la Herramienta..?  ');