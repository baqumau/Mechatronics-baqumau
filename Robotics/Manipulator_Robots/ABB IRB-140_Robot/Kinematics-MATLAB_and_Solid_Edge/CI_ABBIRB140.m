function[Th1,Th2,Th3,Th4,Th5,Th6] = CI_ABBIRB140(M,d)
%Función que calcula la cinemática inversa del robot ABB IRB-140.
%[Th1,Th2,Th3,Th4,Th5,Th6] = CI_ABBIRB140(M,d) -- Calcula los 6 ángulos "Th1 - Th6" del
%manipulador ingresándole como entrada a esta función, la matriz de
%transformación homogenea "M" del gripper (Pinza ó herramienta) y la
%distancia "d" de la muñeca del robot hasta el punto de contacto del
%gripper.
%
%® Copyright Ing. Mauro Baquero. Universidad Nacional de Colombia -- 2012.
L0=70; L1=352; L2=360; L3=254; L4=126; L5=65;
Uhx=M(1,1); Uhy=M(2,1); Uhz=M(3,1); Vhx=M(1,2); Vhy=M(2,2); Vhz=M(3,2);
Whx=M(1,3); Why=M(2,3); Whz=M(3,3); Phx=M(1,4); Phy=M(2,4); Phz=M(3,4);
oRh=[[Uhx Uhy Uhz]' [Vhx Vhy Vhz]' [Whx Why Whz]']; %Matriz de rotación de la herramienta vista en la base
oPh=[Phx Phy Phz]'; %Posición de la herramienta vista en la base
%Ecuacione Ángulos:
Th1=atan2((Phy-(L5*Why)-(d*Why)),(Phx-(L5*Whx)-(d*Whx)))-(pi/2); %Ángulo Theta 1
%----------------------------------------
S3=(((Phz-(L5*Whz)-(d*Whz)-L1)^2)+((((Phy-(L5*Why)-(d*Why))/cos(Th1))-L0)^2)-(L2^2)-(L3^2)-(L4^2)-(2*L3*L4))/((2*L3*L2)+(2*L2*L4));
Th3=atan2(S3,(sqrt(1-(S3^2)))); %Ángulo Theta 3
%----------------------------------------
C3=cos(Th3);
Ty=((Phy-(L5*Why)-(d*Why))/cos(Th1))-L0;
Tz=Phz-(L5*Whz)-(d*Whz)-L1;
K1=(L3+L4)*cos(Th3);
K2=(L3+L4)*sin(Th3);
C2=((Ty*K1)+(Tz*(K2+L2)))/(((K2+L2)^2)+(K1^2));
S2=(Tz-((K2+L2)*C2))/K1;
Th2=atan2(S2,C2); %Ángulo Theta 2
%----------------------------------------
C5b=Whz*sin(Th2 + Th3) + Why*cos(Th2 + Th3)*cos(Th1) - Whx*cos(Th2 + Th3)*sin(Th1);
S5b=sqrt(1-(C5b^2));
Th5=atan2(S5b,C5b); %Ángulo Theta 5
%----------------------------------------
Th4=atan2((Whx*cos(Th1) + Why*sin(Th1)),(Whz*cos(Th2 + Th3) - Why*sin(Th2 + Th3)*cos(Th1) + Whx*sin(Th2 + Th3)*sin(Th1))); %Ángulo Theta 4
%----------------------------------------
Th6=atan2((Vhz*sin(Th2 + Th3) + Vhy*cos(Th2 + Th3)*cos(Th1) - Vhx*cos(Th2 + Th3)*sin(Th1)),-(Uhz*sin(Th2 + Th3) + Uhy*cos(Th2 + Th3)*cos(Th1) - Uhx*cos(Th2 + Th3)*sin(Th1))); %Ángulo Theta 6
%----------------------------------------