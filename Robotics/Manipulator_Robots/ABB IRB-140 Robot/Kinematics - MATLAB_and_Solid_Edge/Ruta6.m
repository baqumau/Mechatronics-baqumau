function[Phx Phy Phz Theta r]=Ruta6
%Función que calcula las distancias del efector final a partir de la ruta
%indicada (cuadrado) con respecto a la base.
% ® Copyright Ing. Mauro Baquero. Universidad Nacional de Colombia -- 2012.
% La función se creó dividiendo el cuadrado asignado como ruta dividiéndola
% en 8 secciones, 4 para cada arco de sus vertices y 4 correspondientes a
% los lados. El algoritmo genera 28000 puntos en total, 50 para cada vértice
% y 70 y 50 para sus lados.
% 65cm de distancia del manipulador, por el eje [Y].
Phx1=[-349.9:.1:350];
r1=zeros(1,length(Phx1));
Phy1=ones(1,length(Phx1))*650;
Phz1=ones(1,length(Phx1))*700;
Phx2=[350.05:.05:400];
c1=[0:.05:50];
for i=1:length(Phx2)
    Phz2(1,i)=sqrt((50^2)-(c1(1,i)^2))+650;
end
Phy2=ones(1,length(Phx2))*650;
r2=50*ones(1,length(Phx2));
Phz3=[649.9:-.1:150];
Phx3=ones(1,length(Phz3))*400;
Phy3=ones(1,length(Phz3))*650;
r3=zeros(1,length(Phx3));
Phx4=[399.95:-.05:350];
c1=[49.95:-.05:0];
for i=1:length(Phx4)
    Phz4(1,i)=150-sqrt((50^2)-(c1(1,i)^2));
end
Phy4=ones(1,length(Phx4))*650;
r4=50*ones(1,length(Phx4));
Phx5=[349.9:-.1:-350];
Phy5=ones(1,length(Phx5))*650;
Phz5=ones(1,length(Phx5))*100;
r5=zeros(1,length(Phx5));
Phx6=[-350.05:-.05:-400];
c1=[-.05:-.05:-50];
for i=1:length(Phx6)
    Phz6(1,i)=150-sqrt((50^2)-(c1(1,i)^2));
end
Phy6=ones(1,length(Phx6))*650;
r6=50*ones(1,length(Phx6));
Phz7=[150.1:.1:650];
Phx7=ones(1,length(Phz7))*-400;
Phy7=ones(1,length(Phz7))*650;
r7=zeros(1,length(Phx7));
Phx8=[-399.95:.05:-350];
c1=[-49.95:.05:0];
for i=1:length(Phx8)
    Phz8(1,i)=sqrt((50^2)-(c1(1,i)^2))+650;
end
Phy8=ones(1,length(Phx8))*650;
r8=50*ones(1,length(Phx8));
Phx=[Phx1 Phx2 Phx3 Phx4 Phx5 Phx6 Phx7 Phx8]';
Phy=[Phy1 Phy2 Phy3 Phy4 Phy5 Phy6 Phy7 Phy8]';
Phz=[Phz1 Phz2 Phz3 Phz4 Phz5 Phz6 Phz7 Phz8]';
r=[r1 r2 r3 r4 r5 r6 r7 r8]';
Theta(1,1)=0;
for i=2:length(Phx)
    Theta(i,1)=atan2((Phz(i,1)-Phz((i-1),1)),(Phx(i,1)-Phx((i-1),1))); %Ángulo tangencial a la trayectoria
end