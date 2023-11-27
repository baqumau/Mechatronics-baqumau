%FRAME	Representaci�n gr�fica de un cuadro de referencia
%
%	FRAME (TT, COLOR, TAM, OPT) representa gr�ficamente el cuadro de referencia dado por la matriz de
%	transformaci�n TT mediante tres ejes ortogonales.
%
%	En el par�metro TT tambi�n es posible introducir una trayectoria de transformaciones y en este
%	caso se visualizan todos los cuadros de referencia de dicha trayectoria. 
%
%	En el par�metro COLOR se especifica el color que se quiere para la representaci�n del cuadro y con
%	TAM se establece el tama�o de las flechas.
%
%	Si TT es una trayectoria de transformaciones, es posible especificar que aparezcan simult�neamente
%	todas las transformaciones en pantalla dando un valor cualquiera al par�metro OPT. Si no se intro-
%	duce dicho par�metro, los cuadros aparecen y desaparecen sucesivamente, y al final solamente
%	queda el �ltimo en pantalla.

% 	Copyright (C) Iv�n Maza 2001

function [h1,h2] = frame(TT, color, tam, opt)

% Se calcula el n�mero de transformaciones a representar
np = size(TT,3);

% Se definen las dimensiones de las flechas de la representaci�n
l1=tam/13;l2=tam/8;l3=(4/5)*tam;l4=tam; letra=tam*1.1;

% Se dibujan las flechas de los ejes X e Y
datosx1=[l1 l3 l3 l4 l3 l3 -l1 -l1 -l2 0 l2 l1];
datosy1=[l1 l1 l2 0 -l2 -l1 -l1 l3 l3 l4 l3 l3];
datosz1=[0 0 0 0 0 0 0 0 0 0 0 0];
unos1=[1 1 1 1 1 1 1 1 1 1 1 1];
link1=[datosx1;datosy1;datosz1;unos1];
lfs1=[1 2 3 4 5 6 7 8 9 10 11 12];

% Se dibuja la flecha del eje Z
datosx2=[l1 l1 l2*sqrt(2) 0 -l2*sqrt(2) -l1 -l1];
datosy2=[l1 l1 l2*sqrt(2) 0 -l2*sqrt(2) -l1 -l1];
datosz2=[0 l3 l3 l4 l3 l3 0];
unos2=[1 1 1 1 1 1 1];
link2=[datosx2;datosy2;datosz2;unos2];
lfs2=[1 2 3 4 5 6 7];


% Se prepara la representaci�n gr�fica de las flechas de los ejes de la transformaci�n y sus etiquetas
hdl(1) = patch; hdl(2) = patch;
etiq(1) = text('String','X');
etiq(2) = text('String','Y');
etiq(3) = text('String','Z');

% Se etiquetan los ejes del sistema universal
xlabel('Eje X'), ylabel('Eje Y'), zlabel('Eje Z')

% Para toda la trayectoria de transformaciones se efectua la representaci�n
for (k=1:np)
   T = TT(:,:,k);
   li1=T*link1;
   li2=T*link2;
   % Se calculan las posiciones de las letras de los ejes
	posletrax = letra*T(1:3,1) + T(1:3,4);
	posletray = letra*T(1:3,2) + T(1:3,4);
	posletraz = letra*T(1:3,3) + T(1:3,4);

   if (nargin==4)
		erasemode='none';
		% Se representan todas las flechas de los ejes
		set(hdl(1),'faces',lfs1,'vertices',[li1(1,:)' li1(2,:)' li1(3,:)'],'FaceColor',color,'erasemode',erasemode);
		set(hdl(2),'faces',lfs2,'vertices',[li2(1,:)' li2(2,:)' li2(3,:)'],'FaceColor',color,'erasemode',erasemode);
		patch('faces',lfs1,'vertices',[li1(1,:)' li1(2,:)' li1(3,:)'],'FaceColor',color,'erasemode',erasemode);
		patch('faces',lfs2,'vertices',[li2(1,:)' li2(2,:)' li2(3,:)'],'FaceColor',color,'erasemode',erasemode);
		% Se representan las letras
		set(etiq(1),'Position',[posletrax(1),posletrax(2),posletrax(3)],'erasemode',erasemode);
		set(etiq(2),'Position',[posletray(1),posletray(2),posletray(3)],'erasemode',erasemode);
		set(etiq(3),'Position',[posletraz(1),posletraz(2),posletraz(3)],'erasemode',erasemode);
		text('Position',[posletrax(1),posletrax(2),posletrax(3)],'erasemode',erasemode,'String','X');
		text('Position',[posletray(1),posletray(2),posletray(3)],'erasemode',erasemode,'String','Y');
		text('Position',[posletraz(1),posletraz(2),posletraz(3)],'erasemode',erasemode,'String','Z');
	else
   	erasemode='normal';
   	% Se representan todas las flechas de los ejes
   	set(hdl(1),'faces',lfs1,'vertices',[li1(1,:)' li1(2,:)' li1(3,:)'],'FaceColor',color,'erasemode',erasemode);
   	set(hdl(2),'faces',lfs2,'vertices',[li2(1,:)' li2(2,:)' li2(3,:)'],'FaceColor',color,'erasemode',erasemode);
   	% Se representan las letras
   	set(etiq(1),'Position',[posletrax(1),posletrax(2),posletrax(3)],'erasemode',erasemode);
   	set(etiq(2),'Position',[posletray(1),posletray(2),posletray(3)],'erasemode',erasemode);
   	set(etiq(3),'Position',[posletraz(1),posletraz(2),posletraz(3)],'erasemode',erasemode);
	end
end

h1 = hdl(1); h2 = hdl(2);