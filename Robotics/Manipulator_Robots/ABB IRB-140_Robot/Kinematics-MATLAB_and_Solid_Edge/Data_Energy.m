%% ESTRUCTURANDO...
%ESTRUCTURANDO VELOCIDADES:
Speed1.signals.values=dThetas(:,1);
Speed1.time=Time;
Speed2.signals.values=dThetas(:,2);
Speed2.time=Time;
Speed3.signals.values=dThetas(:,3);
Speed3.time=Time;
Speed4.signals.values=dThetas(:,4);
Speed4.time=Time;
Speed5.signals.values=dThetas(:,5);
Speed5.time=Time;
%ESTRUCTURANDO TORQUES:
Torque1.signals.values=Torques(:,1);
Torque1.time=Time;
Torque2.signals.values=Torques(:,2);
Torque2.time=Time;
Torque3.signals.values=Torques(:,3);
Torque3.time=Time;
Torque4.signals.values=Torques(:,4);
Torque4.time=Time;
Torque5.signals.values=Torques(:,5);
Torque5.time=Time;
%% GRAFICAS OBTENIDAS:
figure(2)
plot(Energy1.time,Energy1.signals.values,'k','LineWidth',1.5), xlabel('Time [sec]'), ylabel('Energy [J]'), title('Joint #1'), grid on;
hold on
figure(3)
plot(Energy2.time,Energy2.signals.values,'k','LineWidth',1.5), xlabel('Time [sec]'), ylabel('Energy [J]'), title('Joint #2'), grid on;
hold on
figure(4)
plot(Energy3.time,Energy3.signals.values,'k','LineWidth',1.5), xlabel('Time [sec]'), ylabel('Energy [J]'), title('Joint #3'), grid on;
hold on
figure(5)
plot(Energy4.time,Energy4.signals.values,'k','LineWidth',1.5), xlabel('Time [sec]'), ylabel('Energy [J]'), title('Joint #4'), grid on;
hold on
figure(6)
plot(Energy5.time,Energy5.signals.values,'k','LineWidth',1.5), xlabel('Time [sec]'), ylabel('Energy [J]'), title('Joint #5'), grid on;
hold on