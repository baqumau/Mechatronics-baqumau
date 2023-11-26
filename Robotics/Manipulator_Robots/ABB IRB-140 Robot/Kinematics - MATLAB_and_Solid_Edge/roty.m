%ROTY	Rotaci�n en torno al eje Y
%
%	ROTY(THETA) devuelve la transformaci�n homog�nea correspondiente a una rotaci�n de
%	THETA radianes en torno al eje Y.
%
%	Ver tambi�n ROTX, ROTZ, ROTVEC.

% 	Copyright (C) Peter Corke 1990

function r = roty(t)
ct = cos(t);
st = sin(t);
r = [	ct		0	st	0
   	0		1	0	0
   	-st	0	ct	0
   	0		0	0	1];