%ROTX	Rotación en torno al eje X
%
%	ROTX(THETA) devuelve la transformación homogénea correspondiente a una rotación de
%	THETA radianes en torno al eje X.
%
%	Ver también ROTY, ROTZ, ROTVEC.

% 	Copyright (C) Peter Corke 1990

function r = rotx(t)

 if (t==pi | t==(-pi) | t==(2*pi))
		st=0; ct=cos(t);
	else
		if (t==pi/2 | t==(3*pi)/2 | t==(-pi/2))
			ct=0; st=sin(t);
		else
			st = sin(t); ct = cos(t);		
		end
	end

r =[ 	1	0	0		0
   	0	ct	-st	0
   	0	st	ct		0
   	0	0	0		1];