function[WV,J]=CdiffDir_ABBirb140(dThetas,Thetas)
%[WV,J] = CdiffInv_ABBirb140(dThetas,Thetas) --- Función que calcula las
%velocidades del efector final del robot ABBIRB-140.
%
%dThetas=[dTh1/dt;dTh2/dt;dTh3/dt;dTh4/dt;dTh5/dt;dTh6/dt]. Velocidades de
%las articulaciones a partir de las distintas velocidades que se presentan
%en el efector final.
%
%WV=[Wx;Wy;Wz;Vox;Voy;Voz]. Velocidades en el espacio del efector final.
%
%Thetas=[Th1;Th2;Th3;Th4;Th5;Th6]. Ángulos de rotación del manipulador.
%
%J. Matriz jacobiana.
%
%® Copyright Ing. Mauro Baquero. Universidad Nacional de Colombia -- 2012.
L0=70; L1=352; L2=360; L3=254; L4=126; L5=65;
Th1=Thetas(1,1); Th2=Thetas(2,1); Th3=Thetas(3,1); Th4=Thetas(4,1); Th5=Thetas(5,1); Th6=Thetas(6,1);
T_30=inv([sin(Th2+Th3)*sin(Th1), cos(Th1), -cos(Th2+Th3)*sin(Th1), 0, 0, 0; -sin(Th2+Th3)*cos(Th1), sin(Th1), cos(Th2+Th3)*cos(Th1), 0, 0, 0; cos(Th2+Th3), 0, sin(Th2+Th3), 0, 0, 0; cos(Th1)*(L1*sin(Th2+Th3) - L0*cos(Th2+Th3) + L2*sin(2*Th2+Th3)), -sin(Th1)*(L1+L2*cos(Th2)), -cos(Th1)*(L1*cos(Th2+Th3)+L0*sin(Th2+Th3)+L2*cos(2*Th2+Th3)),  sin(Th2+Th3)*sin(Th1), cos(Th1), -cos(Th2+Th3)*sin(Th1); sin(Th1)*(L0*cos(Th2+Th3)+L1*sin(Th2+Th3)+L2*sin(Th3)), cos(Th1)*(L1+L2*cos(Th2)), -sin(Th1)*(L1*cos(Th2+Th3)-L0*sin(Th2+Th3)+L2*cos(Th3)), -sin(Th2+Th3)*cos(Th1), sin(Th1), cos(Th2+Th3)*cos(Th1); 0, L2*sin(Th2)-L0, 0, cos(Th2+Th3), 0, sin(Th2+Th3)]);
J3=[cos(Th2+Th3), 0, 0, 0, -sin(Th4), cos(Th4)*sin(Th5); 0, 1, 1, 0, cos(Th4), sin(Th4)*sin(Th5); sin(Th2+Th3), 0, 0, 1, 0, cos(Th5); 0, L2*sin(Th3), 0, 0, -cos(Th4)*(L3+L4), -sin(Th4)*sin(Th5)*(L3+L4); L2*sin(Th2)-L0, 0, 0, 0, -sin(Th4)*(L3+L4), cos(Th4)*sin(Th5)*(L3+L4); 0, -L2*cos(Th3), 0, 0, 0, 0];
WV3=J3*dThetas;
WV=inv(T_30)*WV3;
J=inv(inv(J3)*T_30);
end