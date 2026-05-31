% Dynamic model of a non-holonomic wheeled mobile robot.
% Kinematic model in the rotation center:
%                  .
%                  q_r = S_r(q)*V,                                      [1]
% with q = [x y theta]' and V = [v w]'.
syms theta d m I real;
S_r = [cos(theta) 0; ...
       sin(theta) 0; ...
                0 1];
% Kinematic model in the center of mass:
%                  .
%                  q = S_c(q)*V,                                        [2]
% with q = [x_c y_c theta]' and V = [v w]'.
S_c = [cos(theta) -d*sin(theta); ...
       sin(theta)  d*cos(theta); ...
                0             1];
% Given that mobile robot cannot chance its vertical position, then potencial
% energy U remains constant, and G(q) = 0.
G = zeros(3,1);
% Kinetic energy:
