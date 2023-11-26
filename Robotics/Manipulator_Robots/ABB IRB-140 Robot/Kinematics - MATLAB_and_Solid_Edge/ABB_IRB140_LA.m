% ABB_IRB140_LA; Programa que calcula la dinámica para un robot tipo 
% ABB IRB140 utilizando el método de Lagrange.
% ® Copyright Ing. Mauro Baquero. Universidad Nacional de Colombia -- 2012.
clear all
syms Th1 Th2 Th3 Th4 Th5 Th6 real;
syms m1 m2 m3 m4 m5 m6 L0 L1 L2 L3 L4 L5 dg Xc05 Yc05 Zc05 Xc06 Yc06 real;
syms Xc01 Yc01 Zc01 Xc02 Yc02 Zc02 Xc03 Yc03 Zc03 Xc04 Yc04 Zc04 Zc06 real;
syms Ixx01 Ixy01 Ixz01 Iyy01 Iyz01 Izz01 Ixx02 Ixy02 Ixz02 Iyy02 Iyz02 Izz02 real;
syms Ixx03 Ixy03 Ixz03 Iyy03 Iyz03 Izz03 Ixx04 Ixy04 Ixz04 Iyy04 Iyz04 Izz04 real;
syms Ixx05 Ixy05 Ixz05 Iyy05 Iyz05 Izz05 Ixx06 Ixy06 Ixz06 Iyy06 Iyz06 Izz06 real;
syms dTh1 dTh2 dTh3 dTh4 dTh5 dTh6 ddTh1 ddTh2 ddTh3 ddTh4 ddTh5 ddTh6 g real;
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
thetas=[Th1 Th2 Th3 Th4 Th5 Th6]';
dThetas=[dTh1 dTh2 dTh3 dTh4 dTh5 dTh6]';
ddThetas=[ddTh1 ddTh2 ddTh3 ddTh4 ddTh5 ddTh6]';
%ENERGÍA CINÉTICA:
%Calculemos las submatrices jacobianas Jvi y Jwi de la matriz de velocidad instantánea
%Ji. Para luego realizar las operaciones correspondientes y calcular las
%energías Cinética y Potencial.
g0=[0 0 -g]';
mi=[m1 m2 m3 m4 m5 m6];
%% CÁLCULOS SEGÚN TSAI:
%-----------------------------------------------------------------------------
%% 1. Vectores de posición de los Centros de Masa de cada eslabón [i], con
%respecto a los Marcos de Referencia [i-1]. Estos valores son constantes en [mm].
%-----------------------------------------------------------------------------
%Vector de posición del centro de Masa del eslabón [2] con respecto al
%marco de referencia [1]:
Xc12=64.91; Yc12=-130.89; Zc12=29.13;
syms Xc12 Yc12 Zc12 real; Pc12=[Xc12 Yc12 Zc12]';
%Vector de posición del centro de Masa del eslabón [3] con respecto al
%marco de referencia [2]:
Xc23=-9.73; Yc23=-161.71; Zc23=92.43;
syms Xc23 Yc23 Zc23 real; Pc23=[Xc23 Yc23 Zc23]';
%Vector de posición del centro de Masa del eslabón [4] con respecto al
%marco de referencia [3]:
Xc34=-0.89; Yc34=-8.67; Zc34=-136.49;
syms Xc34 Yc34 Zc34 real; Pc34=[Xc34 Yc34 Zc34]';
%Vector de posición del centro de Masa del eslabón [5] con respecto al
%marco de referencia [4]:
Xc45=-40.77; Yc45=0; Zc45=0;
syms Xc45 real; Pc45=[Xc45 0 0]';
%Vector de posición del centro de Masa del eslabón [6] con respecto al
%marco de referencia [5]:
Xc56=-0.0602; Yc56=-0.4162; Zc56=-48.6737;
syms Xc56 Yc56 Zc56 real; Pc56=[Xc56 Yc56 Zc56]';
%-----------------------------------------------------------------------------
%% 2. Matrices de Inercia de cada eslabón [i], con respecto a los Marcos de
%Referencia [i-1]. Estos valores son constantes en [Kg.m^2].
%-----------------------------------------------------------------------------
%Matriz de Inercia del eslabón [2] con respecto al marco de referencia [1]:
Ixx12=0.765; Ixy12=-0.301; Ixz12=0.067; Iyy12=0.31; Iyz12=-0.135; Izz12=0.781;
syms Ixx12 Ixy12 Ixz12 Iyy12 Iyz12 Izz12 real;
I12=[Ixx12 Ixy12 Ixz12;...
     Ixy12 Iyy12 Iyz12;...
     Ixz12 Iyz12 Izz12];
%Matriz de Inercia del eslabón [3] con respecto al marco de referencia [2]:
Ixx23=1.381; Ixy23=0.045; Ixz23=-0.021; Iyy23=0.364; Iyz23=-0.314; Izz23=1.09;
syms Ixx23 Ixy23 Ixz23 Iyy23 Iyz23 Izz23 real;
I23=[Ixx23 Ixy23 Ixz23;...
     Ixy23 Iyy23 Iyz23;...
     Ixz23 Iyz23 Izz23];
%Matriz de Inercia del eslabón [4] con respecto al marco de referencia [3]:
Ixx34=0.349; Ixy34=0.000; Ixz34=0.002; Iyy34=0.338; Iyz34=0.021; Izz34=0.014;
syms Ixx34 Ixz34 Iyy34 Iyz34 Izz34 real;
I34=[Ixx34     0 Ixz34;...
         0 Iyy34 Iyz34;...
     Ixz34 Iyz34 Izz34];
%Matriz de Inercia del eslabón [5] con respecto al marco de referencia [4]:
Ixx45=0.005; Ixy45=0.000; Ixz45=0.000; Iyy45=0.011; Iyz45=0.000; Izz45=0.016;
syms Ixx45 Iyy45 Izz45 real;
I45=[Ixx45     0     0;...
         0 Iyy45     0;...
         0     0 Izz45];
%Matriz de Inercia del eslabón [6] con respecto al marco de referencia [5]:
Ixx56=0.005104; Ixy56=0.000; Ixz56=0.000; Iyy56=0.005395; Iyz56=0.000041; Izz56=0.000605;
syms Ixx56 Iyy56 Iyz56 Izz56 real;
I56=[Ixx56     0     0;...
         0 Iyy56 Iyz56;...
         0 Iyz56 Izz56];
%-----------------------------------------------------------------------------
%% 3. Cálculo de los Vectores de posición relativa desde los marcos de referencia
%hasta los Centros de Masa, pero con la orientación del marco de referencia [0]:
%Vectores de posición relativa correspondientes al Eslabón [2]:
Pc02ast=A01(1:3,4)+(R01*Pc12);
%Vectores de posición relativa correspondientes al Eslabón [3]:
A02=A01*A12;
Pc13ast=(R01*A12(1:3,4))+(R01*R12*Pc23);
Pc03ast=A02(1:3,4)+(R01*R12*Pc23);
%Vectores de posición relativa correspondientes al Eslabón [4]:
A03=A01*A12*A23;
Pc24ast=simple((R01*R12*A23(1:3,4))+(R01*R12*R23*Pc34));
A13=A12*A23;
Pc14ast=simple((R01*A13(1:3,4))+(R01*R12*R23*Pc34));
A03=A01*A12*A23;
Pc04ast=simple(A03(1:3,4)+(R01*R12*R23*Pc34));
%Vectores de posición relativa correspondientes al Eslabón [5]:
Pc35ast=simple((R01*R12*R23*A34(1:3,4))+(R01*R12*R23*R34*Pc45));
A24=A23*A34;
Pc25ast=simple((R01*R12*A24(1:3,4))+(R01*R12*R23*R34*Pc45));
A14=A12*A23*A34;
Pc15ast=simple((R01*A14(1:3,4))+(R01*R12*R23*R34*Pc45));
A04=A01*A12*A23*A34;
Pc05ast=simple((A04(1:3,4))+(R01*R12*R23*R34*Pc45));
%Vectores de posición relativa correspondientes al Eslabón [6]:
Pc46ast=simple(R01*R12*R23*R34*A45(1:3,4)+(R01*R12*R23*R34*R45*Pc56));
A35=A34*A45;
Pc36ast=simple(R01*R12*R23*A35(1:3,4)+(R01*R12*R23*R34*R45*Pc56));
A25=A23*A34*A45;
Pc26ast=simple(R01*R12*A25(1:3,4)+(R01*R12*R23*R34*R45*Pc56));
A15=A12*A23*A34*A45;
Pc16ast=simple(R01*A15(1:3,4)+(R01*R12*R23*R34*R45*Pc56));
A05=A01*A12*A23*A34*A45;
Pc06ast=simple(A05(1:3,4)+(R01*R12*R23*R34*R45*Pc56));
%% 4. Cálculo de las Submatrices Jacobianas para expresar velocidad lineal y
 % Angular de cada centro de masa.
%-----------------------------------------------------------------------------
%Vectores unitarios de Giro de cada articulación expresados en el marco de
%referencia [0]:
Z0=[0 0 1]';
Z1=simple(R01*Z0);
Z2=simple(R01*R12*Z0);
Z3=simple(R01*R12*R23*Z0);
Z4=simple(R01*R12*R23*R34*Z0);
%-----------------------------------------------------------------------------
%Submatriz Jacobiana para el eslabón 2:
Jv2=[cross(Z0,Pc02ast) [0 0 0]' [0 0 0]' [0 0 0]' [0 0 0]'];
Jw2=[Z0 [0 0 0]' [0 0 0]' [0 0 0]' [0 0 0]'];
%Submatriz Jacobiana para el eslabón 3:
Jv3=[simple(cross(Z0,Pc03ast)) simple(cross(Z1,Pc13ast)) [0 0 0]' [0 0 0]' [0 0 0]'];
Jw3=[Z0 Z1 [0 0 0]' [0 0 0]' [0 0 0]'];
%Submatriz Jacobiana para el eslabón 4:
Jv4=[simple(cross(Z0,Pc04ast)) simple(cross(Z1,Pc14ast)) simple(cross(Z2,Pc24ast)) [0 0 0]' [0 0 0]'];
Jw4=[Z0 Z1 Z2 [0 0 0]' [0 0 0]'];
%Submatriz Jacobiana para el eslabón 5:
Jv5=[simple(cross(Z0,Pc05ast)) simple(cross(Z1,Pc15ast)) simple(cross(Z2,Pc25ast)) simple(cross(Z3,Pc35ast)) [0 0 0]'];
Jw5=[Z0 Z1 Z2 Z3 [0 0 0]'];
%Submatriz Jacobiana para el eslabón 6:
Jv6=[simple(cross(Z0,Pc06ast)) simple(cross(Z1,Pc16ast)) simple(cross(Z2,Pc26ast)) simple(cross(Z3,Pc36ast)) simple(cross(Z4,Pc46ast))];
Jw6=[Z0 Z1 Z2 Z3 Z4];
%-----------------------------------------------------------------------------
%% 5. Cálculo de las Matrices de Inercia alrededor sus centros de masa y
   % Expresados en el marco de referencia base.
I2=simple(R01*I12*(R01'));
I3=simple((R01*R12)*I23*(R01*R12)');
I4=simple((R01*R12*R23)*I34*(R01*R12*R23)');
I5=simple((R01*R12*R23*R34)*I45*(R01*R12*R23*R34)');
I6=simple((R01*R12*R23*R34*R45)*I56*(R01*R12*R23*R34*R45)');
%% 6. Cálculo de la Matriz de Inercia del Manipulador.
% Matriz de Inercia del Manipulador:
M21=simple((Jv2)'*m2*Jv2);
M22=simple((Jw2)'*I2*Jw2);
M31=simple((Jv3)'*m3*Jv3);
M32=simple((Jw3)'*I3*Jw3);
M41=simple((Jv4)'*m4*Jv4);
M42=simple((Jw4)'*I4*Jw4);
M51=simple((Jv5)'*m5*Jv5);
M52=simple((Jw5)'*I5*Jw5);
M61=simple((Jv6)'*m6*Jv6);
M62=simple((Jw6)'*I6*Jw6);
%% 6. Cálculo de Ecuaciones complementarias de la dinámica del movimiento Vi y Gi.
%-----------------------------------------------------------------------------
%% Vector de acoplamiento de velocidades:
%Para la Matriz M21:
for j=1:5
    for k=1:5
        V211(j,k)=simple((diff(M21(1,j),thetas(k,1))-(1/2)*diff(M21(1,k),Th1))*dThetas(j,1)*dThetas(k,1));
        V212(j,k)=simple((diff(M21(2,j),thetas(k,1))-(1/2)*diff(M21(2,k),Th2))*dThetas(j,1)*dThetas(k,1));
        V213(j,k)=simple((diff(M21(3,j),thetas(k,1))-(1/2)*diff(M21(3,k),Th3))*dThetas(j,1)*dThetas(k,1));
        V214(j,k)=simple((diff(M21(4,j),thetas(k,1))-(1/2)*diff(M21(4,k),Th4))*dThetas(j,1)*dThetas(k,1));
        V215(j,k)=simple((diff(M21(5,j),thetas(k,1))-(1/2)*diff(M21(5,k),Th5))*dThetas(j,1)*dThetas(k,1));
    end
end
%Para la Matriz M22:
for j=1:5
    for k=1:5
        V221(j,k)=simple((diff(M22(1,j),thetas(k,1))-(1/2)*diff(M22(1,k),Th1))*dThetas(j,1)*dThetas(k,1));
        V222(j,k)=simple((diff(M22(2,j),thetas(k,1))-(1/2)*diff(M22(2,k),Th2))*dThetas(j,1)*dThetas(k,1));
        V223(j,k)=simple((diff(M22(3,j),thetas(k,1))-(1/2)*diff(M22(3,k),Th3))*dThetas(j,1)*dThetas(k,1));
        V224(j,k)=simple((diff(M22(4,j),thetas(k,1))-(1/2)*diff(M22(4,k),Th4))*dThetas(j,1)*dThetas(k,1));
        V225(j,k)=simple((diff(M22(5,j),thetas(k,1))-(1/2)*diff(M22(5,k),Th5))*dThetas(j,1)*dThetas(k,1));
    end
end
%Para la Matriz M31:
for j=1:5
    for k=1:5
        V311(j,k)=simple((diff(M31(1,j),thetas(k,1))-(1/2)*diff(M31(1,k),Th1))*dThetas(j,1)*dThetas(k,1));
        V312(j,k)=simple((diff(M31(2,j),thetas(k,1))-(1/2)*diff(M31(2,k),Th2))*dThetas(j,1)*dThetas(k,1));
        V313(j,k)=simple((diff(M31(3,j),thetas(k,1))-(1/2)*diff(M31(3,k),Th3))*dThetas(j,1)*dThetas(k,1));
        V314(j,k)=simple((diff(M31(4,j),thetas(k,1))-(1/2)*diff(M31(4,k),Th4))*dThetas(j,1)*dThetas(k,1));
        V315(j,k)=simple((diff(M31(5,j),thetas(k,1))-(1/2)*diff(M31(5,k),Th5))*dThetas(j,1)*dThetas(k,1));
    end
end
%Para la Matriz M32:
for j=1:5
    for k=1:5
        V321(j,k)=simple((diff(M32(1,j),thetas(k,1))-(1/2)*diff(M32(1,k),Th1))*dThetas(j,1)*dThetas(k,1));
        V322(j,k)=simple((diff(M32(2,j),thetas(k,1))-(1/2)*diff(M32(2,k),Th2))*dThetas(j,1)*dThetas(k,1));
        V323(j,k)=simple((diff(M32(3,j),thetas(k,1))-(1/2)*diff(M32(3,k),Th3))*dThetas(j,1)*dThetas(k,1));
        V324(j,k)=simple((diff(M32(4,j),thetas(k,1))-(1/2)*diff(M32(4,k),Th4))*dThetas(j,1)*dThetas(k,1));
        V325(j,k)=simple((diff(M32(5,j),thetas(k,1))-(1/2)*diff(M32(5,k),Th5))*dThetas(j,1)*dThetas(k,1));
    end
end
%Para la Matriz M41:
for j=1:5
    for k=1:5
        V411(j,k)=simple((diff(M41(1,j),thetas(k,1))-(1/2)*diff(M41(1,k),Th1))*dThetas(j,1)*dThetas(k,1));
        V412(j,k)=simple((diff(M41(2,j),thetas(k,1))-(1/2)*diff(M41(2,k),Th2))*dThetas(j,1)*dThetas(k,1));
        V413(j,k)=simple((diff(M41(3,j),thetas(k,1))-(1/2)*diff(M41(3,k),Th3))*dThetas(j,1)*dThetas(k,1));
        V414(j,k)=simple((diff(M41(4,j),thetas(k,1))-(1/2)*diff(M41(4,k),Th4))*dThetas(j,1)*dThetas(k,1));
        V415(j,k)=simple((diff(M41(5,j),thetas(k,1))-(1/2)*diff(M41(5,k),Th5))*dThetas(j,1)*dThetas(k,1));
    end
end
%Para la Matriz M42:
for j=1:5
    for k=1:5
        V421(j,k)=simple((diff(M42(1,j),thetas(k,1))-(1/2)*diff(M42(1,k),Th1))*dThetas(j,1)*dThetas(k,1));
        V422(j,k)=simple((diff(M42(2,j),thetas(k,1))-(1/2)*diff(M42(2,k),Th2))*dThetas(j,1)*dThetas(k,1));
        V423(j,k)=simple((diff(M42(3,j),thetas(k,1))-(1/2)*diff(M42(3,k),Th3))*dThetas(j,1)*dThetas(k,1));
        V424(j,k)=simple((diff(M42(4,j),thetas(k,1))-(1/2)*diff(M42(4,k),Th4))*dThetas(j,1)*dThetas(k,1));
        V425(j,k)=simple((diff(M42(5,j),thetas(k,1))-(1/2)*diff(M42(5,k),Th5))*dThetas(j,1)*dThetas(k,1));
    end
end
%Para la Matriz M51:
for j=1:5
    for k=1:5
        V511(j,k)=simple((diff(M51(1,j),thetas(k,1))-(1/2)*diff(M51(1,k),Th1))*dThetas(j,1)*dThetas(k,1));
        V512(j,k)=simple((diff(M51(2,j),thetas(k,1))-(1/2)*diff(M51(2,k),Th2))*dThetas(j,1)*dThetas(k,1));
        V513(j,k)=simple((diff(M51(3,j),thetas(k,1))-(1/2)*diff(M51(3,k),Th3))*dThetas(j,1)*dThetas(k,1));
        V514(j,k)=simple((diff(M51(4,j),thetas(k,1))-(1/2)*diff(M51(4,k),Th4))*dThetas(j,1)*dThetas(k,1));
        V515(j,k)=simple((diff(M51(5,j),thetas(k,1))-(1/2)*diff(M51(5,k),Th5))*dThetas(j,1)*dThetas(k,1));
    end
end
%Para la Matriz M52:
for j=1:5
    for k=1:5
        V521(j,k)=simple((diff(M52(1,j),thetas(k,1))-(1/2)*diff(M52(1,k),Th1))*dThetas(j,1)*dThetas(k,1));
        V522(j,k)=simple((diff(M52(2,j),thetas(k,1))-(1/2)*diff(M52(2,k),Th2))*dThetas(j,1)*dThetas(k,1));
        V523(j,k)=simple((diff(M52(3,j),thetas(k,1))-(1/2)*diff(M52(3,k),Th3))*dThetas(j,1)*dThetas(k,1));
        V524(j,k)=simple((diff(M52(4,j),thetas(k,1))-(1/2)*diff(M52(4,k),Th4))*dThetas(j,1)*dThetas(k,1));
        V525(j,k)=simple((diff(M52(5,j),thetas(k,1))-(1/2)*diff(M52(5,k),Th5))*dThetas(j,1)*dThetas(k,1));
    end
end
%Para la Matriz M61:
for j=1:5
    for k=1:5
        V611(j,k)=simple((diff(M61(1,j),thetas(k,1))-(1/2)*diff(M61(1,k),Th1))*dThetas(j,1)*dThetas(k,1));
        V612(j,k)=simple((diff(M61(2,j),thetas(k,1))-(1/2)*diff(M61(2,k),Th2))*dThetas(j,1)*dThetas(k,1));
        V613(j,k)=simple((diff(M61(3,j),thetas(k,1))-(1/2)*diff(M61(3,k),Th3))*dThetas(j,1)*dThetas(k,1));
        V614(j,k)=simple((diff(M61(4,j),thetas(k,1))-(1/2)*diff(M61(4,k),Th4))*dThetas(j,1)*dThetas(k,1));
        V615(j,k)=simple((diff(M61(5,j),thetas(k,1))-(1/2)*diff(M61(5,k),Th5))*dThetas(j,1)*dThetas(k,1));
    end
end
%Para la Matriz M62:
for j=1:5
    for k=1:5
        V621(j,k)=simple((diff(M62(1,j),thetas(k,1))-(1/2)*diff(M62(1,k),Th1))*dThetas(j,1)*dThetas(k,1));
        V622(j,k)=simple((diff(M62(2,j),thetas(k,1))-(1/2)*diff(M62(2,k),Th2))*dThetas(j,1)*dThetas(k,1));
        V623(j,k)=simple((diff(M62(3,j),thetas(k,1))-(1/2)*diff(M62(3,k),Th3))*dThetas(j,1)*dThetas(k,1));
        V624(j,k)=simple((diff(M62(4,j),thetas(k,1))-(1/2)*diff(M62(4,k),Th4))*dThetas(j,1)*dThetas(k,1));
        V625(j,k)=simple((diff(M62(5,j),thetas(k,1))-(1/2)*diff(M62(5,k),Th5))*dThetas(j,1)*dThetas(k,1));
    end
end
%-----------------------------------------------------------------------------
%% Vector de Fuerzas Gravitacionales:
syms g real;
% Vector de Fuerza Gravitacional G2:
G2(1,1)=-(m2*g0'*Jv2(:,1));
G2(1,2)=-(m2*g0'*Jv3(:,1));
G2(1,3)=-(m2*g0'*Jv4(:,1));
G2(1,4)=-(m2*g0'*Jv5(:,1));
G2(1,5)=-(m2*g0'*Jv6(:,1));
% Vector de Fuerza Gravitacional G3:
G3(1,1)=simple(-(m3*g0'*Jv2(:,2)));
G3(1,2)=simple(-(m3*g0'*Jv3(:,2)));
G3(1,3)=simple(-(m3*g0'*Jv4(:,2)));
G3(1,4)=simple(-(m3*g0'*Jv5(:,2)));
G3(1,5)=simple(-(m3*g0'*Jv6(:,2)));
% Vector de Fuerza Gravitacional G4:
G4(1,1)=simple(-(m4*g0'*Jv2(:,3)));
G4(1,2)=simple(-(m4*g0'*Jv3(:,3)));
G4(1,3)=simple(-(m4*g0'*Jv4(:,3)));
G4(1,4)=simple(-(m4*g0'*Jv5(:,3)));
G4(1,5)=simple(-(m4*g0'*Jv6(:,3)));
% Vector de Fuerza Gravitacional G5:
G5(1,1)=simple(-(m5*g0'*Jv2(:,4)));
G5(1,2)=simple(-(m5*g0'*Jv3(:,4)));
G5(1,3)=simple(-(m5*g0'*Jv4(:,4)));
G5(1,4)=simple(-(m5*g0'*Jv5(:,4)));
G5(1,5)=simple(-(m5*g0'*Jv6(:,4)));
% Vector de Fuerza Gravitacional G6:
G6(1,1)=simple(-(m6*g0'*Jv2(:,5)));
G6(1,2)=simple(-(m6*g0'*Jv3(:,5)));
G6(1,3)=simple(-(m6*g0'*Jv4(:,5)));
G6(1,4)=simple(-(m6*g0'*Jv5(:,5)));
G6(1,5)=simple(-(m6*g0'*Jv6(:,5)));