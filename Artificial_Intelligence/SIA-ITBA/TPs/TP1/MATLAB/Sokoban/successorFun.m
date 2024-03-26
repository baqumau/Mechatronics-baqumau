function [U,k] = successorFun(x1,k)
% Increasing iteration:
k = k + 1;
%--------------------------------------------------------------------------
% Elements of successor function:
u1 = [x1(1,1)-1,   x1(1,2)];          % Upward.
u2 = [  x1(1,1), x1(1,2)-1];          % Leftward.
u3 = [x1(1,1)+1,   x1(1,2)];          % Downward.
u4 = [  x1(1,1), x1(1,2)+1];          % Rightward.
U = [u1;u2;u3;u4];
end