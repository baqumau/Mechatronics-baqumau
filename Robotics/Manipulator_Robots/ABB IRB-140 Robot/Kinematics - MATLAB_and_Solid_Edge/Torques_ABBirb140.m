function [Torques] = Torques_ABBirb140(Ths,dThs,ddThs)
%[Torques] = Torques_ABBirb140(Thetas,dThetas,ddThetas) ---- Función que
%calcula los torques de cada eslabón del manipulador ABB IRB-140. en un
%movimiento definido, en donde ya son conocidas las posiciones, velocidades
%y aceleraciones de cada articulación.
%
%Thetas=[Th1;Th2;Th3;Th4;Th5;Th6]. Ángulos de rotación del manipulador.
%
%dThetas=[dTh1/dt;dTh2/dt;dTh3/dt;dTh4/dt;dTh5/dt;dTh6/dt]. Velocidades de
%las articulaciones a partir de las distintas velocidades que se presentan
%en el efector final.
%
%ddThetas=[ddTh1/dt^2;ddTh2/dt^2;ddTh3/dt^2;ddTh4/dt^2;ddTh5/dt^2;ddTh6/dt^2].
%Velocidades de las articulaciones a partir de las distintas velocidades
%que se presentan en el efector final.
%
%Torques=[Tao1;Tao2;Tao3;Tao4;Tao5;Tao6]. Torques aplicados en cada
%articulación para las velocidades y aceleraciones resultantes en el
%seguimiento de una trayectoria.
%------------------------------------------------------------------------
Th1=Ths(1,1); Th2=Ths(1,2); Th3=Ths(1,3); Th4=Ths(1,4); Th5=Ths(1,5); Th6=Ths(1,6);
dTh1=dThs(1,1); dTh2=dThs(1,2); dTh3=dThs(1,3); dTh4=dThs(1,4); dTh5=dThs(1,5); dTh6=dThs(1,6);
ddTh1=ddThs(1,1); ddTh2=ddThs(1,2); ddTh3=ddThs(1,3); ddTh4=ddThs(1,4); ddTh5=ddThs(1,5); ddTh6=ddThs(1,6);
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
MddThs=M*ddThs';
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
%------------------------------------------------------------------------
% Vector de Fuerzas Gravitacionales:
G1=sum(eval(G1)); G2=sum(eval(G2)); G3=sum(eval(G3)); G4=sum(eval(G4)); G5=sum(eval(G5));
GThs=[G1 G2 G3 G4 G5]';
%------------------------------------------------------------------------
%Torques en las articulaciones del manipulador:
Tao1=MddThs(1,1)+VdThs(1,1)+GThs(1,1);
Tao2=MddThs(2,1)+VdThs(2,1)+GThs(2,1);
Tao3=MddThs(3,1)+VdThs(3,1)+GThs(3,1);
Tao4=MddThs(4,1)+VdThs(4,1)+GThs(4,1);
Tao5=MddThs(5,1)+VdThs(5,1)+GThs(5,1);
Torques=[Tao1 Tao2 Tao3 Tao4 Tao5];
end