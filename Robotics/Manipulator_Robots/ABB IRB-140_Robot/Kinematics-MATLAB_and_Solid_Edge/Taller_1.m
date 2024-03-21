%Taller #1 Dinámica de robots.
%En este taller se busca encontrar las gráficas de posición angular
%[Theta_1...Theta_n], Velocidades de cada articulación a partir de las
%velocidades Angular y lineal [Vx Vy Vz Wx Wy Wz], y para los torques que
%debe realizar el manipulador [T_1 T_2...T_n]. todo esto a partir de una
%trayectoria dada por el profesor Ricardo Ramirez UNAL.
clc, clear
%-------------------------------------------------------------
%1.  Construir el conjunto de puntos para la ruta.
V=100; %Velocidad lineal en milímetros por segundo
[Phx Phy Phz Psi r]=Ruta6; %Función que construye la ruta
Positions=[Phx Phy Phz Psi];
plot3(Phx,Phy,Phz,'r','Marker','*','LineWidth',1),grid  %Gráfica de la trayectoria
title('Trayectoria Designada')
xlabel('Eje X Base')
ylabel('Eje Y Base')
zlabel('Eje Z Base')
%2.  Costruir Matrices de transformación Homogenea del efector final con
%    respecto a la base y generar los ángulos de rotación de cada
%    articulación con la cinemática inversa previamente calculada. Además
%    se determinan las variables de velocidades, tiempos y aceleraciones
%    para luego calcular los torques.
d=100; %Distancia desde la muñeca hasta el gripper del manipulador
figure(2)
frame(eye(4),'r',50); %Marco de referencia base
for i=1:500:length(Phx)
    Toh=[roty(deg2rad(-90)-Psi(i,1))*rotx(deg2rad(-70)) [Phx(i,1) Phy(i,1) Phz(i,1)]';0 0 0 1];
    [Th1(i,1),Th2(i,1),Th3(i,1),Th4(i,1),Th5(i,1),Th6(i,1)] = CI_ABBIRB140(Toh,d);
    Thetas=[Th1,Th2,Th3,Th4,Th5,Th6];
    [oT1,oT2,oT3,oT4,oT5,oT6,oTh] = CD_ABBIRB140(Thetas(i,:),d);
    Arm=ABBirb140(d);
    Arm.base=[rotz(deg2rad(90)) [0 0 0]';0 0 0 1];
    Arm.plot([Th1(i,1),Th2(i,1)-deg2rad(-90),Th3(i,1),Th4(i,1),Th5(i,1),Th6(i,1)])
    frame(oT1,'g',50);
    frame(oT2,'c',50);
    frame(oT3,'m',50);
    frame(oT4,'y',50);
    frame(oT5,'k',50);
    frame(oT6,'b',50);
    frame(oTh,'b',50); grid on; %Marcos de referencia de cada articulación para cada punto de la trayectoria
end
%% Ángulos de barrido:
for i=1:7000
    Phi(i,1)=deg2rad(90);
end
for i=7001:8000
    Phi(i,1)=atan2((Phz(i,1)-650),(Phx(i,1)-350));
end
for i=8001:13000
    Phi(i,1)=deg2rad(0);
end
for i=13001:14000
    Phi(i,1)=atan2((Phz(i,1)-150),(Phx(i,1)-350));
end
for i=14001:21000
    Phi(i,1)=deg2rad(-90);
end
for i=21001:22000
    Phi(i,1)=atan2((Phz(i,1)-150),(Phx(i,1)+350));
end
%Phi(340,1)=-pi;
for i=22001:27000
    Phi(i,1)=deg2rad(180);
end
for i=27001:28000
    Phi(i,1)=atan2((Phz(i,1)-650),(Phx(i,1)+350));
end
Vx(1,1)=0;
for i=1:1:length(Phx)
    %Matrices de transformación homogenea para el gripper:
    Toh=[roty(deg2rad(-90)-Psi(i,1))*rotx(deg2rad(-70)) [Phx(i,1) Phy(i,1) Phz(i,1)]';0 0 0 1];
    %Ángulos de rotación de cada articulación:
    [Th1(i,1),Th2(i,1),Th3(i,1),Th4(i,1),Th5(i,1),Th6(i,1)] = CI_ABBIRB140(Toh,d);
%     if sign(Th6(i,1))==-1
%         Th6(i,1)=deg2rad(360)-Th6(i,1);
%     else
%         Th6(i,1)=Th6(i,1);
%     end
    Thetas=[Th1,Th2,Th3,Th4,Th5,Th6];
    %Velocidades en el efector final del robot para cada punto de la
    %trayectoria. Estas velocidades son medidas con respecto al eje de
    %referencia base.
    if i <= 199
        Vx((i+1),1)=.5+Vx(i,1);
    end
    if i > 199
        Vx(i,1)=V*cos(deg2rad(90)-Phi(i,1));
        Vz(i,1)=V*sin(deg2rad(-90)+Phi(i,1));
        Vy(i,1)=0;
    end
    if i==1
        Time1(i,1)=0;
        Time2(i,1)=0;
        Time3(i,1)=0;
    end
    if i > 1
        Time1(i,1)=abs(((Phx(i,1)-Phx((i-1),1))/V));
        Time2(i,1)=abs(((Phi(i,1)-Phi((i-1),1))*r(i,1)/V));
        Time3(i,1)=abs(((Phz(i,1)-Phz((i-1),1))/V));
    end
end
%Sincronización del tiempo
ax(1,1)=0;
for i=2:200
    ax=((Vx(i,1)^2)-(Vx((i-1),1)^2))/(2*(Phx(i,1)-Phx((i-1),1)));
    Time1(i,1)=(Phx(i,1)-Phx((i-1),1))/(Vx(i,1));
end
for i=1:7000
    Time(i,1)=sum(Time1(1:i));
end
for i=7001:8000
    Time(i,1)=sum(Time2(7001:i))+Time(7000,1);
end
for i=8001:13000
    Time(i,1)=sum(Time3(8001:i))+Time(8000,1);
end
for i=13001:14000
    Time(i,1)=sum(Time2(13001:i))+Time(13000,1);
end
for i=14001:21000
    Time(i,1)=sum(Time1(14001:i))+Time(14000,1);
end
for i=21001:22000
    Time(i,1)=sum(Time2(21001:i))+Time(21000,1);
end
for i=22001:27000
    Time(i,1)=sum(Time3(22001:i))+Time(22000,1);
end
for i=27001:28000
    Time(i,1)=sum(Time2(27001:i))+Time(27000,1);
end
Wy(1,1)=0;
ac(1,1)=0;
for i=2:1:length(Phx)
    Wy(i,1)=(Phi((i-1),1)-Phi(i,1))/(Time(i,1)-Time((i-1),1)); %Velocidad Angular sobre el eje "y" en el marco de referencia base.
    Wx(i,1)=0; %Velocidad Angular sobre el eje "x" en el marco de referencia base.
    Wz(i,1)=0; %Velocidad Angular sobre el eje "z" en el marco de referencia base.
    %Cálculo de aceleraciones en cada punto de la trayectoria.
    sx(i,1)=sign(Vx(i,1));
    sz(i,1)=sign(Vz(i,1));
    ac(i,1)=(Wy(i,1)^2)*r(i,1); %Aceleración centrípeta
    if i > 199
        ax(i,1)=ac(i,1)*sin(Phi(i,1))*sx(i,1)*sz(i,1); %Aceleración en el eje "x" sobre el marco de referencia base
    end
    az(i,1)=ac(i,1)*cos(Phi(i,1))*sx(i,1)*sz(i,1); %Aceleración en el eje "z" sobre el marco de referencia base
    ay(i,1)=0; %Aceleración en el eje "y" sobre el marco de referencia base
    alpx(i,1)=0; %Aceleración angular en el eje "x" sobre el marco de referencia base
    alpy(i,1)=0; %Aceleración angular en el eje "y" sobre el marco de referencia base
    alpz(i,1)=0; %Aceleración angular en el eje "z" sobre el marco de referencia base
end
for i=2:200
    ax(i,1)=2.5;
end
%Resolviendo problemas de inconsistencias por los ángulos:
ax(1,1)=2.5;
Wy(341,1)=0;
az(340,1)=2;
az(171,1)=2;
az(391,1)=-2;
ax(291,1)=2;
ax(440,1)=2;
%3.  Calcular las velocidades, aceleraciones y torques para las articulaciones.
for i=1:1:length(Phx)
    importfile('Lagrange_Dynamics.mat')
    importfile('Lagrange_Dynamics_Real.mat')
    WV(i,:)=[Wx(i,1) Wy(i,1) Wz(i,1) Vx(i,1) Vy(i,1) Vz(i,1)];
    dWV(i,:)=[alpx(i,1) alpy(i,1) alpz(i,1) ax(i,1) ay(i,1) az(i,1)];
    [dTheta,ddTheta]=CdiffInv_ABBirb140(WV(i,:)',dWV(i,:)',Thetas(i,:)');
    dTheta=dTheta';
    ddTheta=ddTheta';
    dThetas(i,:)=dTheta;
    ddThetas(i,:)=ddTheta;
    %Cálculo de Torques de las artículaciones del manipulador:
    Th1=Thetas(i,1); Th2=Thetas(i,2); Th3=Thetas(i,3); Th4=Thetas(i,4); Th5=Thetas(i,5); Th6=Thetas(i,6);
    dTh1=dThetas(i,1); dTh2=dThetas(i,2); dTh3=dThetas(i,3); dTh4=dThetas(i,4); dTh5=dThetas(i,5); dTh6=dThetas(i,6);
    ddTh1=ddThetas(i,1); ddTh2=ddThetas(i,2); ddTh3=ddThetas(i,3); ddTh4=ddThetas(i,4); ddTh5=ddThetas(i,5); ddTh6=ddThetas(i,6);
    %-----------------------------------------------------
    % Matriz de Inercia del Manipulador:
    M21=eval(M21);
    M22=eval(M22);
    M31=eval(M31);
    M32=eval(M32);
    M41=eval(M41);
    M42=eval(M42);
    M51=eval(M51);
    M52=eval(M52);
    M61=eval(M61);
    M62=eval(M62);
    M=M21+M22+M31+M32+M41+M42+M51+M52+M61+M62;
    %Complemento No. 1 de Torques:
    MddThs=M*ddThetas(i,1:5)';
    %-----------------------------------------------------
    % Vector de acoplamiento de velocidades:
    V211=sum(sum(eval(V211))); V212=sum(sum(eval(V212))); V213=sum(sum(eval(V213))); V214=sum(sum(eval(V214))); V215=sum(sum(eval(V215)));
    V221=sum(sum(eval(V221))); V222=sum(sum(eval(V222))); V223=sum(sum(eval(V223))); V224=sum(sum(eval(V224))); V225=sum(sum(eval(V225)));
    V311=sum(sum(eval(V311))); V312=sum(sum(eval(V312))); V313=sum(sum(eval(V313))); V314=sum(sum(eval(V314))); V315=sum(sum(eval(V315)));
    V321=sum(sum(eval(V321))); V322=sum(sum(eval(V322))); V323=sum(sum(eval(V323))); V324=sum(sum(eval(V324))); V325=sum(sum(eval(V325)));
    V411=sum(sum(eval(V411))); V412=sum(sum(eval(V412))); V413=sum(sum(eval(V413))); V414=sum(sum(eval(V414))); V415=sum(sum(eval(V415)));
    V421=sum(sum(eval(V421))); V422=sum(sum(eval(V422))); V423=sum(sum(eval(V423))); V424=sum(sum(eval(V424))); V425=sum(sum(eval(V425)));
    V511=sum(sum(eval(V511))); V512=sum(sum(eval(V512))); V513=sum(sum(eval(V513))); V514=sum(sum(eval(V514))); V515=sum(sum(eval(V515)));
    V521=sum(sum(eval(V521))); V522=sum(sum(eval(V522))); V523=sum(sum(eval(V523))); V524=sum(sum(eval(V524))); V525=sum(sum(eval(V525)));
    VdThs=[V211+V221+V311+V321+V411+V421+V511+V521;...
           V212+V222+V312+V322+V412+V422+V512+V522;...
           V213+V223+V313+V323+V413+V423+V513+V523;...
           V214+V224+V314+V324+V414+V424+V514+V524;...
           V215+V225+V315+V325+V415+V425+V515+V525];
    %------------------------------------------------------
    % Vector de Fuerzas Gravitacionales:
    G2=sum(eval(G2)); G3=sum(eval(G3)); G4=sum(eval(G4)); G5=sum(eval(G5)); G6=sum(eval(G6));
    GThs=[G2 G3 G4 G5 G6]';
    %----------------------------------------------------------
    %Torques en las articulaciones del manipulador:
    Tao1(i,1)=MddThs(1,1)+VdThs(1,1)+GThs(1,1);
    Tao2(i,1)=MddThs(2,1)+VdThs(2,1)+GThs(2,1);
    Tao3(i,1)=MddThs(3,1)+VdThs(3,1)+GThs(3,1);
    Tao4(i,1)=MddThs(4,1)+VdThs(4,1)+GThs(4,1);
    Tao5(i,1)=MddThs(5,1)+VdThs(5,1)+GThs(5,1);
    Torques(i,:)=[Tao1(i,1) Tao2(i,1) Tao3(i,1) Tao4(i,1) Tao5(i,1)];
end
%% Cálculo de potencia en cada articulación:
for i=1:1:length(Phx)
    P1(i,1)=Tao1(i,1)*dThetas(i,1);
    P2(i,1)=Tao2(i,1)*dThetas(i,2);
    P3(i,1)=Tao3(i,1)*dThetas(i,3);
    P4(i,1)=Tao4(i,1)*dThetas(i,4);
    P5(i,1)=Tao5(i,1)*dThetas(i,5);
    Pots=[P1 P2 P3 P4 P5];
end
% Integral de la potencia para calcular la Energía:
% Implementación Regla del Trapezoide:

    
%% Gráficas de posición en radianes de cada articulación.
figure(3)
subplot(3,3,1),
plot(Time,Thetas(:,1),'LineWidth',2), xlabel('Time [sec]'), ylabel('Angle [rad]'), title('Joint #1'), grid on;
subplot(3,3,2),
plot(Time,Thetas(:,2),'LineWidth',2), xlabel('Time [sec]'), ylabel('Angle [rad]'), title('Joint #2'), grid on;
subplot(3,3,3),
plot(Time,Thetas(:,3),'LineWidth',2), xlabel('Time [sec]'), ylabel('Angle [rad]'), title('Joint #3'), grid on;
subplot(3,3,4),
plot(Time,Thetas(:,4),'LineWidth',2), xlabel('Time [sec]'), ylabel('Angle [rad]'), title('Joint #4'), grid on;
subplot(3,3,5),
plot(Time,Thetas(:,5),'LineWidth',2), xlabel('Time [sec]'), ylabel('Angle [rad]'), title('Joint #5'), grid on;
subplot(3,3,6),
plot(Time,Thetas(:,6),'LineWidth',2), xlabel('Time [sec]'), ylabel('Angle [rad]'), title('Joint #6'), grid on;
%% Gráficas de velocidades lineal y angular del efector final.
figure(4)
subplot(3,3,1),
plot(Time,Vx(:,1),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Velocidad Lineal [mm/s]'), title('Velocidad Lineal del gripper [Eje Xo]'), grid on;
subplot(3,3,2),
plot(Time,Vy(:,1),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Velocidad Lineal [mm/s]'), title('Velocidad Lineal del gripper [Eje Yo]'), grid on;
subplot(3,3,3),
plot(Time,Vz(:,1),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Velocidad Lineal [mm/s]'), title('Velocidad Lineal del gripper [Eje Zo]'), grid on;
subplot(3,3,4),
plot(Time,Wx(:,1),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Velocidad Angular [rad/s]'), title('Velocidad Angular del gripper [Eje Xo]'), grid on;
subplot(3,3,5),
plot(Time,Wy(:,1),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Velocidad Angular [rad/s]'), title('Velocidad Angular del gripper [Eje Yo]'), grid on;
subplot(3,3,6),
plot(Time,Wz(:,1),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Velocidad Angular [rad/s]'), title('Velocidad Angular del gripper [Eje Zo]'), grid on;
%% Gráficas de aceleraciones lineal y angular del efector final.
figure(5)
subplot(3,3,1),
plot(Time,ax(:,1),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Aceleración Lineal [mm/s^2]'), title('Aceleración Lineal del gripper [Eje Xo]'), grid on;
subplot(3,3,2),
plot(Time,ay(:,1),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Aceleración Lineal [mm/s^2]'), title('Aceleración Lineal del gripper [Eje Yo]'), grid on;
subplot(3,3,3),
plot(Time,az(:,1),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Aceleración Lineal [mm/s^2]'), title('Aceleración Lineal del gripper [Eje Zo]'), grid on;
subplot(3,3,4),
plot(Time,alpx(:,1),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Aceleración Angular [rad/s^2]'), title('Aceleración Angular del gripper [Eje Xo]'), grid on;
subplot(3,3,5),
plot(Time,alpy(:,1),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Aceleración Angular [rad/s^2]'), title('Aceleración Angular del gripper [Eje Yo]'), grid on;
subplot(3,3,6),
plot(Time,alpz(:,1),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Aceleración Angular [rad/s^2]'), title('Aceleración Angular del gripper [Eje Zo]'), grid on;
%% Gráficas de velocidades en rad/seg de cada articulación.
figure(6)
subplot(3,3,1),
plot(Time,dThetas(:,1),'LineWidth',2), xlabel('Time [sec]'), ylabel('Speed [rad/s]'), title('Joint #1'), grid on;
subplot(3,3,2),
plot(Time,dThetas(:,2),'LineWidth',2), xlabel('Time [sec]'), ylabel('Speed [rad/s]'), title('Joint #2'), grid on;
subplot(3,3,3),
plot(Time,dThetas(:,3),'LineWidth',2), xlabel('Time [sec]'), ylabel('Speed [rad/s]'), title('Joint #3'), grid on;
subplot(3,3,4),
plot(Time,dThetas(:,4),'LineWidth',2), xlabel('Time [sec]'), ylabel('Speed [rad/s]'), title('Joint #4'), grid on;
subplot(3,3,5),
plot(Time,dThetas(:,5),'LineWidth',2), xlabel('Time [sec]'), ylabel('Speed [rad/s]'), title('Joint #5'), grid on;
subplot(3,3,6),
plot(Time,dThetas(:,6),'LineWidth',2), xlabel('Time [sec]'), ylabel('Speed [rad/s]'), title('Joint #6'), grid on;
%% Gráficas de aceleraciones en rad/seg^2 de cada articulación.
figure(7)
subplot(3,3,1),
plot(Time,ddThetas(:,1),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Aceleración Angular [rad/s^2]'), title('Aceleración Angular de la articulación #1'), grid on;
subplot(3,3,2),
plot(Time,ddThetas(:,2),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Aceleración Angular [rad/s^2]'), title('Aceleración Angular de la articulación #2'), grid on;
subplot(3,3,3),
plot(Time,ddThetas(:,3),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Aceleración Angular [rad/s^2]'), title('Aceleración Angular de la articulación #3'), grid on;
subplot(3,3,4),
plot(Time,ddThetas(:,4),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Aceleración Angular [rad/s^2]'), title('Aceleración Angular de la articulación #4'), grid on;
subplot(3,3,5),
plot(Time,ddThetas(:,5),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Aceleración Angular [rad/s^2]'), title('Aceleración Angular de la articulación #5'), grid on;
subplot(3,3,6),
plot(Time,ddThetas(:,6),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Aceleración Angular [rad/s^2]'), title('Aceleración Angular de la articulación #6'), grid on;
%% Gráficas de Torques en N*m de cada articulación.
figure(8)
subplot(3,3,1),
plot(Time,Torques(:,1),'LineWidth',2), xlabel('Time [sec]'), ylabel('Torque [N*m]'), title('Joint #1'), grid on;
subplot(3,3,2),
plot(Time,Torques(:,2),'LineWidth',2), xlabel('Time [sec]'), ylabel('Torque [N*m]'), title('Joint #2'), grid on;
subplot(3,3,3),
plot(Time,Torques(:,3),'LineWidth',2), xlabel('Time [sec]'), ylabel('Torque [N*m]'), title('Joint #3'), grid on;
subplot(3,3,4),
plot(Time,Torques(:,4),'LineWidth',2), xlabel('Time [sec]'), ylabel('Torque [N*m]'), title('Joint #4'), grid on;
subplot(3,3,5),
plot(Time,Torques(:,5),'LineWidth',2), xlabel('Time [sec]'), ylabel('Torque [N*m]'), title('Joint #5'), grid on;
%% Gráficas de Potencia de cada articulación:
figure(9)
subplot(3,3,1),
plot(Time,Pots(:,1),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Potencia [N*m/s^2]'), title('Potencia de la articulación #1'), grid on;
subplot(3,3,2),
plot(Time,Pots(:,2),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Potencia [N*m/s^2]'), title('Potencia de la articulación #2'), grid on;
subplot(3,3,3),
plot(Time,Pots(:,3),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Potencia [N*m/s^2]'), title('Potencia de la articulación #3'), grid on;
subplot(3,3,4),
plot(Time,Pots(:,4),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Potencia [N*m/s^2]'), title('Potencia de la articulación #4'), grid on;
subplot(3,3,5),
plot(Time,Pots(:,5),'LineWidth',2), xlabel('Tiempo [sec]'), ylabel('Potencia [N*m/s^2]'), title('Potencia de la articulación #5'), grid on;