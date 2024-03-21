%% Equations of Motion for ABB IRB-140 robot arm:
syms   L0    L1    L2    L3    L4 d  L5...
      Th1   Th2   Th3   Th4   Th5   Th6...
     dTh1  dTh2  dTh3  dTh4  dTh5  dTh6...
    ddTh1 ddTh2 ddTh3 ddTh4 ddTh5 ddTh6 real;
thetas=[Th1 Th2 Th3 Th4 Th5 Th6]';
dThetas=[dTh1 dTh2 dTh3 dTh4 dTh5 dTh6]';
ddThetas=[ddTh1 ddTh2 ddTh3 ddTh4 ddTh5 ddTh6]';
% Denavit Hartenberg parameters:
Thi=[Th1+(pi/2) Th2+(pi/2) Th3 Th4 Th5 Th6]';
di=[L1 0 0 L4 0 d]';
ai=[L0 L2 L3 0 L5 0]';
alpi=[pi/2 0 pi/2 -pi/2 pi/2 0]';
% Rotation matrices and position vectors:
R01=[-sin(Th1) 0 cos(Th1);cos(Th1) 0 sin(Th1); 0 1 0];
P01=[-L0*sin(Th1) L0*cos(Th1) L1]';
R12=[-sin(Th2) -cos(Th2) 0;cos(Th2) -sin(Th2) 0; 0 0 1];
P12=[-L2*sin(Th2) L2*cos(Th2) 0]';
R23=[cos(Th3) 0 sin(Th3);sin(Th3) 0 -cos(Th3); 0 1 0];
P23=[L3*sin(Th3) -L3*cos(Th3) 0]';
R34=[cos(Th4) 0 -sin(Th4);sin(Th4) 0 cos(Th4); 0 -1 0];
P34=[0 0 L4]';
R45=[cos(Th5) 0 sin(Th5);sin(Th5) 0 -cos(Th5); 0 1 0];
P45=[L5*sin(Th5) -L5*cos(Th5) 0]';
R56=[cos(Th6) -sin(Th6) 0;sin(Th6) cos(Th6) 0; 0 0 1];
P56=[0 0 d]';
%------------------------- Other operations -------------------------------
R02=simplify(R01*R12); R03=simplify(R02*R23);
R04=simplify(R03*R34); R05=simplify(R04*R45); R06=simplify(R05*R56);
%--------------------------------------------------------------------------
% Unit vectors along the ith joint axis, and expressed in the base frame:
Z0=[0 0 1]'; Z1=R01*Z0; Z2=R02*Z0;
Z3=simplify(R03*Z0); Z4=simplify(R04*Z0); Z5=simplify(R05*Z0);
%--------------------------------------------------------------------------
% Position of vectors defined from the origin of the link frame (j-1, j<=i),
% to the center of mass of link (i) and expressed in the base frame:
% Link 1:
syms X0c1 Y0c1 Z0c1 real;
rz1=rotz(Th1);
P0c1ast=rz1([1:3],[1:3])*[X0c1 Y0c1 Z0c1]';
% Link 2:
syms X1c2 Y1c2 Z1c2 real;
rz2=rotz(Th2);
P1c2ast=simplify(R01*rz2([1:3],[1:3])*[X1c2 Y1c2 Z1c2]');
P0c2ast=simplify(P01+P1c2ast);
% Link 3:
syms X2c3 Y2c3 Z2c3 real;
rz3=rotz(Th3);
P2c3ast=simplify(R02*rz3([1:3],[1:3])*[X2c3 Y2c3 Z2c3]');
P1c3ast=simplify((R01*P12)+P2c3ast);
P0c3ast=simplify(P01+P1c3ast);
% Link 4:
syms X3c4 Y3c4 Z3c4 real;
rz4=rotz(Th4);
P3c4ast=simplify(R03*rz4([1:3],[1:3])*[X3c4 Y3c4 Z3c4]');
P2c4ast=simplify((R02*P23)+P3c4ast);
P1c4ast=simplify((R01*P12)+P2c4ast);
P0c4ast=simplify(P01+P1c4ast);
% Link 5:
syms X4c5 Y4c5 Z4c5 real;
rz5=rotz(Th5);
P4c5ast=simplify(R04*rz5([1:3],[1:3])*[X4c5 Y4c5 Z4c5]');
P3c5ast=simplify((R03*P34)+P4c5ast);
P2c5ast=simplify((R02*P23)+P3c5ast);
P1c5ast=simplify((R01*P12)+P2c5ast);
P0c5ast=simplify(P01+P1c5ast);
% Link 6:
syms X5c6 Y5c6 Z5c6 real;
rz6=rotz(Th6);
P5c6ast=simplify(R05*rz6([1:3],[1:3])*[X5c6 Y5c6 Z5c6]');
P4c6ast=simplify((R04*P45)+P5c6ast);
P3c6ast=simplify((R03*P34)+P4c6ast);
P2c6ast=simplify((R02*P23)+P3c6ast);
P1c6ast=simplify((R01*P12)+P2c6ast);
P0c6ast=simplify(P01+P1c6ast);
%--------------------------------------------------------------------------
% The partial rate of change of the velocity of the center of mass and the
% angular velocity of link (i) with respect to the (jth) joint motion,
% denoted by Jjvi and Jjwi respectively are:
% Link 1:
J1v1=[cross(Z0,P0c1ast)];
Jv1=[J1v1 zeros(3,5)];
%-------
J1w1=Z0;
Jw1=[J1w1 zeros(3,5)];
% Link 2:
J1v2=simplify([cross(Z0,P0c2ast)]);
J2v2=simplify([cross(Z1,P1c2ast)]);
Jv2=[J1v2 J2v2 zeros(3,4)];
%-------
J1w2=Z0;
J2w2=Z1;
Jw2=[J1w2 J2w2 zeros(3,4)];
% Link 3:
J1v3=simplify([cross(Z0,P0c3ast)]);
J2v3=simplify([cross(Z1,P1c3ast)]);
J3v3=simplify([cross(Z2,P2c3ast)]);
Jv3=[J1v3 J2v3 J3v3 zeros(3,3)];
%-------
J1w3=Z0;
J2w3=Z1;
J3w3=Z2;
Jw3=[J1w3 J2w3 J3w3 zeros(3,3)];
% Link 4:
J1v4=simplify([cross(Z0,P0c4ast)]);
J2v4=simplify([cross(Z1,P1c4ast)]);
J3v4=simplify([cross(Z2,P2c4ast)]);
J4v4=simplify([cross(Z3,P3c4ast)]);
Jv4=[J1v4 J2v4 J3v4 J4v4 zeros(3,2)];
%-------
J1w4=Z0;
J2w4=Z1;
J3w4=Z2;
J4w4=Z3;
Jw4=[J1w4 J2w4 J3w4 J4w4 zeros(3,2)];
% Link 5:
J1v5=simplify([cross(Z0,P0c5ast)]);
J2v5=simplify([cross(Z1,P1c5ast)]);
J3v5=simplify([cross(Z2,P2c5ast)]);
J4v5=simplify([cross(Z3,P3c5ast)]);
J5v5=simplify([cross(Z4,P4c5ast)]);
Jv5=[J1v5 J2v5 J3v5 J4v5 J5v5 zeros(3,1)];
%-------
J1w5=Z0;
J2w5=Z1;
J3w5=Z2;
J4w5=Z3;
J5w5=Z4;
Jw5=[J1w5 J2w5 J3w5 J4w5 J5w5 zeros(3,1)];
% Link 6:
J1v6=simplify([cross(Z0,P0c6ast)]);
J2v6=simplify([cross(Z1,P1c6ast)]);
J3v6=simplify([cross(Z2,P2c6ast)]);
J4v6=simplify([cross(Z3,P3c6ast)]);
J5v6=simplify([cross(Z4,P4c6ast)]);
J6v6=simplify([cross(Z5,P5c6ast)]);
Jv6=[J1v6 J2v6 J3v6 J4v6 J5v6 J6v6];
%-------
J1w6=Z0;
J2w6=Z1;
J3w6=Z2;
J4w6=Z3;
J5w6=Z4;
J6w6=Z5;
Jw6=[J1w6 J2w6 J3w6 J4w6 J5w6 J6w6];
%--------------------------------------------------------------------------
%% Kinetic and Potential Energy:
syms m0 m1 m2 m3 m4 m5 m6 real;
masas=[m1 m2 m3 m4 m5 m6]';
% [Ii]: Inertia matrix of link (i) about its center of mass and expressed in the
% base frame:
% [Iii]: Inertia matrix  of link (i) about its center of mass and expressed
% in the link frame (i):
% Link 1:
syms I11xx I11yy I11zz I11xy I11xz I11yz real;
I11=[I11xx I11xy I11xz;I11xy I11yy I11yz;I11xz I11yz I11zz];
I1=simplify(R01*I11*R01');
% Link 2:
syms I22xx I22yy I22zz I22xy I22xz I22yz real;
I22=[I22xx I22xy I22xz;I22xy I22yy I22yz;I22xz I22yz I22zz];
I2=simplify(R02*I22*R02');
% Link 3:
syms I33xx I33yy I33zz I33xy I33xz I33yz real;
I33=[I33xx I33xy I33xz;I33xy I33yy I33yz;I33xz I33yz I33zz];
I3=simplify(R03*I33*R03');
% Link 4:
syms I44xx I44yy I44zz I44xy I44xz I44yz real;
I44=[I44xx I44xy I44xz;I44xy I44yy I44yz;I44xz I44yz I44zz];
I4=simplify(R04*I44*R04');
% Link 5:
syms I55xx I55yy I55zz I55xy I55xz I55yz real;
I55=[I55xx I55xy I55xz;I55xy I55yy I55yz;I55xz I55yz I55zz];
I5=simplify(R05*I55*R05');
% Link 6:
syms I66xx I66yy I66zz I66xy I66xz I66yz real;
I66=[I66xx I66xy I66xz;I66xy I66yy I66yz;I66xz I66yz I66zz];
I6=simplify(R06*I66*R06');
%% M: n x n manipulator inertia matrix:
M11=simplify((Jv1')*m1*Jv1); M12=simplify((Jw1')*I1*Jw1);
M21=simplify((Jv2')*m2*Jv2); M22=simplify((Jw2')*I2*Jw2);
M31=simplify((Jv3')*m3*Jv3); M32=simplify((Jw3')*I3*Jw3);
M41=simplify((Jv4')*m4*Jv4); M42=simplify((Jw4')*I4*Jw4);
M51=simplify((Jv5')*m5*Jv5); M52=simplify((Jw5')*I5*Jw5);
M61=simplify((Jv6')*m6*Jv6); M62=simplify((Jw6')*I6*Jw6);
M=simplify(M11+M12+M21+M22+M31+M32+M41+M42+M51+M52+M61+M62);
%% V: Velocity coupling vector (This vector groups coriolis and centrifugal
% forces):
%Matrix M11:
for j=1:6
    for k=1:6
        V111(j,k)=simplify((diff(M11(1,j),thetas(k,1))-(1/2)*diff(M11(j,k),Th1)));
        V211(j,k)=simplify((diff(M11(2,j),thetas(k,1))-(1/2)*diff(M11(j,k),Th2)));
        V311(j,k)=simplify((diff(M11(3,j),thetas(k,1))-(1/2)*diff(M11(j,k),Th3)));
        V411(j,k)=simplify((diff(M11(4,j),thetas(k,1))-(1/2)*diff(M11(j,k),Th4)));
        V511(j,k)=simplify((diff(M11(5,j),thetas(k,1))-(1/2)*diff(M11(j,k),Th5)));
        V611(j,k)=simplify((diff(M11(6,j),thetas(k,1))-(1/2)*diff(M11(j,k),Th6)));
    end
end
%Matrix M12:
for j=1:6
    for k=1:6
        V112(j,k)=simplify((diff(M12(1,j),thetas(k,1))-(1/2)*diff(M12(j,k),Th1)));
        V212(j,k)=simplify((diff(M12(2,j),thetas(k,1))-(1/2)*diff(M12(j,k),Th2)));
        V312(j,k)=simplify((diff(M12(3,j),thetas(k,1))-(1/2)*diff(M12(j,k),Th3)));
        V412(j,k)=simplify((diff(M12(4,j),thetas(k,1))-(1/2)*diff(M12(j,k),Th4)));
        V512(j,k)=simplify((diff(M12(5,j),thetas(k,1))-(1/2)*diff(M12(j,k),Th5)));
        V612(j,k)=simplify((diff(M12(6,j),thetas(k,1))-(1/2)*diff(M12(j,k),Th6)));
    end
end
%Matrix M21:
for j=1:6
    for k=1:6
        V121(j,k)=simplify((diff(M21(1,j),thetas(k,1))-(1/2)*diff(M21(j,k),Th1)));
        V221(j,k)=simplify((diff(M21(2,j),thetas(k,1))-(1/2)*diff(M21(j,k),Th2)));
        V321(j,k)=simplify((diff(M21(3,j),thetas(k,1))-(1/2)*diff(M21(j,k),Th3)));
        V421(j,k)=simplify((diff(M21(4,j),thetas(k,1))-(1/2)*diff(M21(j,k),Th4)));
        V521(j,k)=simplify((diff(M21(5,j),thetas(k,1))-(1/2)*diff(M21(j,k),Th5)));
        V621(j,k)=simplify((diff(M21(6,j),thetas(k,1))-(1/2)*diff(M21(j,k),Th6)));
    end
end
%Matrix M22:
for j=1:6
    for k=1:6
        V122(j,k)=simplify((diff(M22(1,j),thetas(k,1))-(1/2)*diff(M22(j,k),Th1)));
        V222(j,k)=simplify((diff(M22(2,j),thetas(k,1))-(1/2)*diff(M22(j,k),Th2)));
        V322(j,k)=simplify((diff(M22(3,j),thetas(k,1))-(1/2)*diff(M22(j,k),Th3)));
        V422(j,k)=simplify((diff(M22(4,j),thetas(k,1))-(1/2)*diff(M22(j,k),Th4)));
        V522(j,k)=simplify((diff(M22(5,j),thetas(k,1))-(1/2)*diff(M22(j,k),Th5)));
        V622(j,k)=simplify((diff(M22(6,j),thetas(k,1))-(1/2)*diff(M22(j,k),Th6)));
    end
end
%Matrix M31:
for j=1:6
    for k=1:6
        V131(j,k)=simplify((diff(M31(1,j),thetas(k,1))-(1/2)*diff(M31(j,k),Th1)));
        V231(j,k)=simplify((diff(M31(2,j),thetas(k,1))-(1/2)*diff(M31(j,k),Th2)));
        V331(j,k)=simplify((diff(M31(3,j),thetas(k,1))-(1/2)*diff(M31(j,k),Th3)));
        V431(j,k)=simplify((diff(M31(4,j),thetas(k,1))-(1/2)*diff(M31(j,k),Th4)));
        V531(j,k)=simplify((diff(M31(5,j),thetas(k,1))-(1/2)*diff(M31(j,k),Th5)));
        V631(j,k)=simplify((diff(M31(6,j),thetas(k,1))-(1/2)*diff(M31(j,k),Th6)));
    end
end
%Matrix M32:
for j=1:6
    for k=1:6
        V132(j,k)=simplify((diff(M32(1,j),thetas(k,1))-(1/2)*diff(M32(j,k),Th1)));
        V232(j,k)=simplify((diff(M32(2,j),thetas(k,1))-(1/2)*diff(M32(j,k),Th2)));
        V332(j,k)=simplify((diff(M32(3,j),thetas(k,1))-(1/2)*diff(M32(j,k),Th3)));
        V432(j,k)=simplify((diff(M32(4,j),thetas(k,1))-(1/2)*diff(M32(j,k),Th4)));
        V532(j,k)=simplify((diff(M32(5,j),thetas(k,1))-(1/2)*diff(M32(j,k),Th5)));
        V632(j,k)=simplify((diff(M32(6,j),thetas(k,1))-(1/2)*diff(M32(j,k),Th6)));
    end
end
%Matrix M41:
for j=1:6
    for k=1:6
        V141(j,k)=simplify((diff(M41(1,j),thetas(k,1))-(1/2)*diff(M41(j,k),Th1)));
        V241(j,k)=simplify((diff(M41(2,j),thetas(k,1))-(1/2)*diff(M41(j,k),Th2)));
        V341(j,k)=simplify((diff(M41(3,j),thetas(k,1))-(1/2)*diff(M41(j,k),Th3)));
        V441(j,k)=simplify((diff(M41(4,j),thetas(k,1))-(1/2)*diff(M41(j,k),Th4)));
        V541(j,k)=simplify((diff(M41(5,j),thetas(k,1))-(1/2)*diff(M41(j,k),Th5)));
        V641(j,k)=simplify((diff(M41(6,j),thetas(k,1))-(1/2)*diff(M41(j,k),Th6)));
    end
end
%Matrix M42:
for j=1:6
    for k=1:6
        V142(j,k)=simplify((diff(M42(1,j),thetas(k,1))-(1/2)*diff(M42(j,k),Th1)));
        V242(j,k)=simplify((diff(M42(2,j),thetas(k,1))-(1/2)*diff(M42(j,k),Th2)));
        V342(j,k)=simplify((diff(M42(3,j),thetas(k,1))-(1/2)*diff(M42(j,k),Th3)));
        V442(j,k)=simplify((diff(M42(4,j),thetas(k,1))-(1/2)*diff(M42(j,k),Th4)));
        V542(j,k)=simplify((diff(M42(5,j),thetas(k,1))-(1/2)*diff(M42(j,k),Th5)));
        V642(j,k)=simplify((diff(M42(6,j),thetas(k,1))-(1/2)*diff(M42(j,k),Th6)));
    end
end
%Matrix M51:
for j=1:6
    for k=1:6
        V151(j,k)=simplify((diff(M51(1,j),thetas(k,1))-(1/2)*diff(M51(j,k),Th1)));
        V251(j,k)=simplify((diff(M51(2,j),thetas(k,1))-(1/2)*diff(M51(j,k),Th2)));
        V351(j,k)=simplify((diff(M51(3,j),thetas(k,1))-(1/2)*diff(M51(j,k),Th3)));
        V451(j,k)=simplify((diff(M51(4,j),thetas(k,1))-(1/2)*diff(M51(j,k),Th4)));
        V551(j,k)=simplify((diff(M51(5,j),thetas(k,1))-(1/2)*diff(M51(j,k),Th5)));
        V651(j,k)=simplify((diff(M51(6,j),thetas(k,1))-(1/2)*diff(M51(j,k),Th6)));
    end
end
%Matrix M52:
for j=1:6
    for k=1:6
        V152(j,k)=simplify((diff(M52(1,j),thetas(k,1))-(1/2)*diff(M52(j,k),Th1)));
        V252(j,k)=simplify((diff(M52(2,j),thetas(k,1))-(1/2)*diff(M52(j,k),Th2)));
        V352(j,k)=simplify((diff(M52(3,j),thetas(k,1))-(1/2)*diff(M52(j,k),Th3)));
        V452(j,k)=simplify((diff(M52(4,j),thetas(k,1))-(1/2)*diff(M52(j,k),Th4)));
        V552(j,k)=simplify((diff(M52(5,j),thetas(k,1))-(1/2)*diff(M52(j,k),Th5)));
        V652(j,k)=simplify((diff(M52(6,j),thetas(k,1))-(1/2)*diff(M52(j,k),Th6)));
    end
end
%Matrix M61:
for j=1:6
    for k=1:6
        V161(j,k)=simplify((diff(M61(1,j),thetas(k,1))-(1/2)*diff(M61(j,k),Th1)));
        V261(j,k)=simplify((diff(M61(2,j),thetas(k,1))-(1/2)*diff(M61(j,k),Th2)));
        V361(j,k)=simplify((diff(M61(3,j),thetas(k,1))-(1/2)*diff(M61(j,k),Th3)));
        V461(j,k)=simplify((diff(M61(4,j),thetas(k,1))-(1/2)*diff(M61(j,k),Th4)));
        V561(j,k)=simplify((diff(M61(5,j),thetas(k,1))-(1/2)*diff(M61(j,k),Th5)));
        V661(j,k)=simplify((diff(M61(6,j),thetas(k,1))-(1/2)*diff(M61(j,k),Th6)));
    end
end
%Matrix M62:
for j=1:6
    for k=1:6
        V162(j,k)=simplify((diff(M62(1,j),thetas(k,1))-(1/2)*diff(M62(j,k),Th1)));
        V262(j,k)=simplify((diff(M62(2,j),thetas(k,1))-(1/2)*diff(M62(j,k),Th2)));
        V362(j,k)=simplify((diff(M62(3,j),thetas(k,1))-(1/2)*diff(M62(j,k),Th3)));
        V462(j,k)=simplify((diff(M62(4,j),thetas(k,1))-(1/2)*diff(M62(j,k),Th4)));
        V562(j,k)=simplify((diff(M62(5,j),thetas(k,1))-(1/2)*diff(M62(j,k),Th5)));
        V662(j,k)=simplify((diff(M62(6,j),thetas(k,1))-(1/2)*diff(M62(j,k),Th6)));
    end
end
V1=simplify(V111+V112+V121+V122+V131+V132+V141+V142+V151+V152+V161+V162);
V2=simplify(V211+V212+V221+V222+V231+V232+V241+V242+V251+V252+V261+V262);
V3=simplify(V311+V312+V321+V322+V331+V332+V341+V342+V351+V352+V361+V362);
V4=simplify(V411+V412+V421+V422+V431+V432+V441+V442+V451+V452+V461+V462);
V5=simplify(V511+V512+V521+V522+V531+V532+V541+V542+V551+V552+V561+V562);
V6=simplify(V611+V612+V621+V622+V631+V632+V641+V642+V651+V652+V661+V662);
V=[V1;V2;V3;V4;V5;V6];
%% G: Gravitational effects:
% Assuming that the acceleration of gravity points in the negative
% (z0)-direction (g=[0 0 -gc]'), then:
syms gc real;
g=[0 0 -gc]';
Jvn1=[Jv1(:,1) Jv2(:,1) Jv3(:,1) Jv4(:,1) Jv5(:,1) Jv6(:,1)];
Jvn2=[Jv1(:,2) Jv2(:,2) Jv3(:,2) Jv4(:,2) Jv5(:,2) Jv6(:,2)];
Jvn3=[Jv1(:,3) Jv2(:,3) Jv3(:,3) Jv4(:,3) Jv5(:,3) Jv6(:,3)];
Jvn4=[Jv1(:,4) Jv2(:,4) Jv3(:,4) Jv4(:,4) Jv5(:,4) Jv6(:,4)];
Jvn5=[Jv1(:,5) Jv2(:,5) Jv3(:,5) Jv4(:,5) Jv5(:,5) Jv6(:,5)];
Jvn6=[Jv1(:,6) Jv2(:,6) Jv3(:,6) Jv4(:,6) Jv5(:,6) Jv6(:,6)];
for j=1:6
    G1(1,j)=simplify(-masas(j,1)*(g')*Jvn1(:,j));
    G2(1,j)=simplify(-masas(j,1)*(g')*Jvn2(:,j));
    G3(1,j)=simplify(-masas(j,1)*(g')*Jvn3(:,j));
    G4(1,j)=simplify(-masas(j,1)*(g')*Jvn4(:,j));
    G5(1,j)=simplify(-masas(j,1)*(g')*Jvn5(:,j));
    G6(1,j)=simplify(-masas(j,1)*(g')*Jvn6(:,j));
end
G1=simplify(G1(1,1)+G1(1,2)+G1(1,3)+G1(1,4)+G1(1,5)+G1(1,6));
G2=simplify(G2(1,1)+G2(1,2)+G2(1,3)+G2(1,4)+G2(1,5)+G2(1,6));
G3=simplify(G3(1,1)+G3(1,2)+G3(1,3)+G3(1,4)+G3(1,5)+G3(1,6));
G4=simplify(G4(1,1)+G4(1,2)+G4(1,3)+G4(1,4)+G4(1,5)+G4(1,6));
G5=simplify(G5(1,1)+G5(1,2)+G5(1,3)+G5(1,4)+G5(1,5)+G5(1,6));
G6=simplify(G6(1,1)+G6(1,2)+G6(1,3)+G6(1,4)+G6(1,5)+G6(1,6));
G=[G1;G2;G3;G4;G5;G6];
%% --------------------------------------------------------------------------
% Mass values of bodies [Kg]:
m0=12; m1=35;  m2=25;
m3=18; m4=6.5; m5=1; m6=.5;
% Gravity [m/s^2]:
gc=9.80665;
% Principal distances of robot arm [m]:
L0=70e-3; L1=352e-3; L2=360e-3; L3=254e-3;
L4=126e-3; L5=65e-3; d=30e-3;
% Position of center of mass of link (i) from origin (Oi-1) [m]:
% Link 1:
X0c1=29.13e-3; Y0c1=134.91e-3; Z0c1=221.11e-3;
% Link 2:
X1c2=-9.73e-3; Y1c2=198.29e-3; Z1c2=92.43e-3;
% Link 3:
X2c3=-.89e-3; Y2c3=136.49e-3; Z2c3=-8.67e-3;
% Link 4:
X3c4=0; Y3c4=0; Z3c4=85.23e-3;
% Link 5:
X4c5=.02e-3; Y4c5=1.52e-3; Z4c5=-.62e-3;
% Link 6:
X5c6=-.23e-3; Y5c6=0; Z5c6=-12.94e-3;
% [Iii]: Inertia matrix  of link (i) about its center of mass and expressed
% in the link frame (i):
% Link 1 [Kg.m^2]:
I11xx=0.764798; I11yy=0.309968; I11zz=0.780990;
I11xy=-0.300762; I11xz=0.067232; I11yz=-0.135041;
I11=[I11xx I11xy I11xz;I11xy I11yy I11yz;I11xz I11yz I11zz];
% Link 2 [Kg.m^2]:
I22xx=0.364170; I22yy=1.380991; I22zz=1.089821;
I22xy=-0.045360; I22xz=-0.314403; I22yz=0.020777;
I22=[I22xx I22xy I22xz;I22xy I22yy I22yz;I22xz I22yz I22zz];
% Link 3 [Kg.m^2]:
I33xx=2.758268; I33yy=2.747395; I33zz=0.014450;
I33xy=0.000291; I33xz=0.006265; I33yz=0.060919;
I33=[I33xx I33xy I33xz;I33xy I33yy I33yz;I33xz I33yz I33zz];
% Link 4 [Kg.m^2]:
I44xx=0.011125; I44yy=0.004943; I44zz=0.015718;
I44xy=0; I44xz=0; I44yz=0;
I44=[I44xx I44xy I44xz;I44xy I44yy I44yz;I44xz I44yz I44zz];
% Link 5 [Kg.m^2]:
I55xx=0.004898; I55yy=0.005192; I55zz=0.000489;
I55xy=0; I55xz=0; I55yz=0.000040;
I55=[I55xx I55xy I55xz;I55xy I55yy I55yz;I55xz I55yz I55zz];
% Link 6 [Kg.m^2]:
I66xx=0.001043; I66yy=0.001040; I66zz=0.000116;
I66xy=0; I66xz=0.000004; I66yz=0;
I66=[I66xx I66xy I66xz;I66xy I66yy I66yz;I55xz I66yz I66zz];
% -------------------------------------------------------------------------
M11=eval(M11); M12=eval(M12); M21=eval(M21); M22=eval(M22);
M31=eval(M31); M32=eval(M32); M41=eval(M41); M42=eval(M42);
M51=eval(M51); M52=eval(M52); M61=eval(M61); M62=eval(M62);
M=simplify(M11+M12+M21+M22+M31+M32+M41+M42+M51+M52+M61+M62);
% -------------------------------------------------------------------------
V1=simplify(eval(V1)); V2=simplify(eval(V2)); V3=simplify(eval(V3));
V4=simplify(eval(V4)); V5=simplify(eval(V5)); V6=simplify(eval(V6));
V=[V1;V2;V3;V4;V5;V6];
% -------------------------------------------------------------------------
G2=simplify(eval(G2)); G3=simplify(eval(G3));
G4=simplify(eval(G4)); G5=simplify(eval(G5)); G6=simplify(eval(G6));
G=[G1;G2;G3;G4;G5;G6];
%--------------------------------------------------------------------------
%% Start Up:
clc, clear
% load Robot_Equations
% load References
% pool = parpool(4);
% options = optimset;
% options = optimset(options,'UseParallel','always');
% Nonlinear Model:
IRB140_Plant_1
% adams_sys
Ts=1/200;                                                                   % Período de Muestreo.
% Control System:
ConSys_A1
%% Control system:
% Tracking differentiator:
r=800; h=0.002; d=r*h; d0=d*h;
Atd=[1 Ts 0;0 1 0;0 0 0];
Btd=[0 Ts 1]';
Ctd=eye(3);
Dtd=[0 0 0]';
TD=ss(Atd,Btd,Ctd,Dtd,Ts);
Rad=pi/180;
% Control law:
Kp=diag([55 180 350 1960  680 4450]);
Kd=diag([ 3   5  25  100   15 1050]);
Ki=diag([35 555 810 7410 1850 5815]);
Ka=diag([ 3  20  20  150  355  520]);
% Filters:
F1z=c2d(tf(1,[1/(200*pi/180) 1]),Ts,'tustin');
F2z=c2d(tf(1,[1/(200*pi/180) 1]),Ts,'tustin');
F3z=c2d(tf(1,[1/(260*pi/180) 1]),Ts,'tustin');
F4z=c2d(tf(1,[1/(360*pi/180) 1]),Ts,'tustin');
F5z=c2d(tf(1,[1/(360*pi/180) 1]),Ts,'tustin');
F6z=c2d(tf(1,[1/(450*pi/180) 1]),Ts,'tustin');