% ABB_IRB140_JA; Programa que calcula la matriz jacobiana para un robot tipo 
% ABB IRB140 utilizando el método de desplazmientos tornillo sucesivos,
% usa la función TS2MT que calcula la matriz de transformación homogenea por
% desplazmientos tornillo sucesivos.
% ® Copyright Ing. Mauro Baquero. Universidad Nacional de Colombia -- 2012.
clear all
syms L0 L1 L2 L3 L4 L5 Th1 Th2 Th3 Th4 Th5 Th6 dg s real;
%Ejes de tornillo iniciales:
S=[s s s;s s s;s s s;s s s;s s s;s s s];
S0=[0 0 0;0 L0 L1;0 L0 L1+L2;0 L0+L3 L1+L2;0 L0+L3+L4 L1+L2;0 L0+L3+L4+L5 L1+L2];
%Parametros DENAVIT-HARTENBERG:
Thetas=[Th1+(pi/2) Th2+(pi/2) Th3 Th4 Th5 Th6]';
d=[L1 0 0 L3+L4 0 L5+dg]';
a=[L0 L2 0 0 0 0]';
alpha=[pi/2 0 pi/2 -pi/2 pi/2 0]';
%Matrices de transformación homogenea a partir de los parámetros DENAVIT-HARTENBERG:
A01=simple(dh2th(alpha(1,1),a(1,1),Thetas(1,1),d(1,1))); A01(1,2)=0; A01(2,2)=0; A01(3,3)=0; R01=A01(1:3,1:3);
A12=simple(dh2th(alpha(2,1),a(2,1),Thetas(2,1),d(2,1))); R12=A12(1:3,1:3);
A23=simple(dh2th(alpha(3,1),a(3,1),Thetas(3,1),d(3,1))); A23(1,2)=0; A23(2,2)=0; A23(3,3)=0; R23=A23(1:3,1:3);
A34=simple(dh2th(alpha(4,1),a(4,1),Thetas(4,1),d(4,1))); A34(1,2)=0; A34(2,2)=0; A34(3,3)=0; R34=A34(1:3,1:3);
A45=simple(dh2th(alpha(5,1),a(5,1),Thetas(5,1),d(5,1))); A45(1,2)=0; A45(2,2)=0; A45(3,3)=0; R45=A45(1:3,1:3);
A56=simple(dh2th(alpha(6,1),a(6,1),Thetas(6,1),d(6,1))); R56=A56(1:3,1:3);
%% Comencemos el análisis definiendo (x0',y0',z0') alineado en (x4,y4,z4).
%Nos basamos en el ejemplo 4.7.1 Screw-Based Jacobian Of The Stanford
%Manipulator.
S(5,:)=[0 0 1];
S0(5,:)=[0 0 0];
iZi=[0 0 1]';
%Aplicamos las operaciones Pag. 194 Lung Wen Tsai:
S(6,:)=(R45*iZi)';
S0(6,:)=(S0(5,:)'+(R45*[a(5,1);d(5,1)*sin(alpha(5,1));d(5,1)*cos(alpha(5,1))]))';
S(4,:)=(inv(R34)*iZi)';
S0(4,:)=(S0(5,:)'-(eye(3)*[a(4,1);d(4,1)*sin(alpha(4,1));d(4,1)*cos(alpha(4,1))]))';
S0(4,3)=0;
S(3,:)=(inv(R23*R34)*iZi)';
S0(3,:)=(S0(4,:)'-(inv(R34)*[a(3,1);d(3,1)*sin(alpha(3,1));d(3,1)*cos(alpha(3,1))]))';
S(2,:)=(inv(R12*R23*R34)*iZi)';
S0(2,:)=(S0(3,:)'-(inv(R23*R34)*[a(2,1);d(2,1)*sin(alpha(2,1));d(2,1)*cos(alpha(2,1))]))';
S(1,:)=(inv(R01*R12*R23*R34)*iZi)';
S0(1,:)=(S0(2,:)'-(inv(R12*R23*R34)*[a(1,1);d(1,1)*sin(alpha(1,1));d(1,1)*cos(alpha(1,1))]))';
S0(1,1)=L0*sin(Th2+Th3)*cos(Th4)-L2*cos(Th3)*cos(Th4)-L1*cos(Th2 + Th3)*cos(Th4);
S0(1,3)=L2*cos(Th3)*sin(Th4)+L1*cos(Th2+Th3)*sin(Th4)-L0*sin(Th2+Th3)*sin(Th4);
%Realizamos las operaciones (4.49) y (4.50) del libro de Tsai y hallamos los $i:
PS1=[S(1,:)';cross(S0(1,:),S(1,:))'];
PS2=[S(2,:)';cross(S0(2,:),S(2,:))'];
PS3=[S(3,:)';cross(S0(3,:),S(3,:))'];
PS4=[S(4,:)';cross(S0(4,:),S(4,:))'];
PS5=[S(5,:)';cross(S0(5,:),S(5,:))'];
PS6=[S(6,:)';cross(S0(6,:),S(6,:))'];
%Matriz Jacobiana vista en el marco de referencia 3:
J4=simple([PS1 PS2 PS3 PS4 PS5 PS6]);
%% Comencemos el análisis definiendo (x0',y0',z0') alineado en (x3,y3,z3).
%Nos basamos en el ejemplo 4.7.1 Screw-Based Jacobian Of The Stanford
%Manipulator.
S(4,:)=[0 0 1];
S0(4,:)=[0 0 0];
iZi=[0 0 1]';
%Aplicamos las operaciones Pag. 194 Lung Wen Tsai:
S(5,:)=(R34*iZi)';
S0(5,:)=(S0(4,:)'+(R34*[a(4,1);d(4,1)*sin(alpha(4,1));d(4,1)*cos(alpha(4,1))]))';
S0(5,1)=0;
S0(5,2)=0;
S(6,:)=((R34*R45)*iZi)';
S0(6,:)=(S0(5,:)'+((R34*R45)*[a(5,1);d(5,1)*sin(alpha(5,1));d(5,1)*cos(alpha(5,1))]))';
S(3,:)=(inv(R23)*iZi)';
S0(3,:)=(S0(4,:)'-(eye(3)*[a(3,1);d(3,1)*sin(alpha(3,1));d(3,1)*cos(alpha(3,1))]))';
S(2,:)=(inv(R12*R23)*iZi)';
S0(2,:)=(S0(3,:)'-(inv(R23)*[a(2,1);d(2,1)*sin(alpha(2,1));d(2,1)*cos(alpha(2,1))]))';
S(1,:)=(inv(R01*R12*R23)*iZi)';
S0(1,:)=(S0(2,:)'-(inv(R12*R23)*[a(1,1);d(1,1)*sin(alpha(1,1));d(1,1)*cos(alpha(1,1))]))';
S0(1,2)=0;
%Realizamos las operaciones (4.49) y (4.50) del libro de Tsai y hallamos los $i:
PS1=[S(1,:)';cross(S0(1,:),S(1,:))'];
PS2=[S(2,:)';cross(S0(2,:),S(2,:))'];
PS3=[S(3,:)';cross(S0(3,:),S(3,:))'];
PS4=[S(4,:)';cross(S0(4,:),S(4,:))'];
PS5=[S(5,:)';cross(S0(5,:),S(5,:))'];
PS6=[S(6,:)';cross(S0(6,:),S(6,:))'];
%Matriz Jacobiana vista en el marco de referencia 3:
J3=simple([PS1 PS2 PS3 PS4 PS5 PS6]);
%% Comencemos el análisis definiendo (x0',y0',z0') alineado en (x2,y2,z2).
%Nos basamos en el ejemplo 4.7.1 Screw-Based Jacobian Of The Stanford
%Manipulator.
S(3,:)=[0 0 1];
S0(3,:)=[0 0 0];
iZi=[0 0 1]';
%Aplicamos las operaciones Pag. 194 Lung Wen Tsai:
S(4,:)=(R23*iZi)';
S0(4,:)=(S0(3,:)'+(R23*[a(3,1);d(3,1)*sin(alpha(3,1));d(3,1)*cos(alpha(3,1))]))';
S(5,:)=((R23*R34)*iZi)';
S0(5,:)=(S0(4,:)'+((R23*R34)*[a(4,1);d(4,1)*sin(alpha(4,1));d(4,1)*cos(alpha(4,1))]))';
S0(5,1)=sin(Th3)*(L3+L4);
S0(5,2)=-cos(Th3)*(L3+L4);
S0(5,3)=0;
S(6,:)=((R23*R34*R45)*iZi)';
S0(6,:)=(S0(5,:)'+((R23*R34*R45)*[a(5,1);d(5,1)*sin(alpha(5,1));d(5,1)*cos(alpha(5,1))]))';
S(2,:)=(inv(R12)*iZi)';
S0(2,:)=(S0(3,:)'-(eye(3)*[a(2,1);d(2,1)*sin(alpha(2,1));d(2,1)*cos(alpha(2,1))]))';
S(1,:)=(inv(R01*R12)*iZi)';
S0(1,:)=(S0(2,:)'-(inv(R12)*[a(1,1);d(1,1)*sin(alpha(1,1));d(1,1)*cos(alpha(1,1))]))';
S0(1,3)=0;
%Realizamos las operaciones (4.49) y (4.50) del libro de Tsai y hallamos los $i:
PS1=[S(1,:)';cross(S0(1,:),S(1,:))'];
PS2=[S(2,:)';cross(S0(2,:),S(2,:))'];
PS3=[S(3,:)';cross(S0(3,:),S(3,:))'];
PS4=[S(4,:)';cross(S0(4,:),S(4,:))'];
PS5=[S(5,:)';cross(S0(5,:),S(5,:))'];
PS6=[S(6,:)';cross(S0(6,:),S(6,:))'];
%Matriz Jacobiana vista en el marco de referencia 3:
J2=simple([PS1 PS2 PS3 PS4 PS5 PS6]);
%% Se calcularon en total 3 diferentes matrices jacobianas J2, J3 y J4 con el
%fin de buscar la que simplifique más los cálculos.
%Ahora realizamos la transformación de las coordenadas de tornillo
A03=A01*A12*A23; R03=A03(1:3,1:3);
%Matriz antisimétrica W03:
W03=[0 -A03(3,4) -A03(2,4);A03(3,4) 0 -A03(1,4);-A03(2,4) A03(1,4) 0];
%Matriz de transformación de coordenadas de tornillo:
T_03=simple([R03 zeros(3,3);W03*R03 R03]);
T_30=simple(inv(T_03));
%Configuraciones Singulares:
CS=simple(det(J3));