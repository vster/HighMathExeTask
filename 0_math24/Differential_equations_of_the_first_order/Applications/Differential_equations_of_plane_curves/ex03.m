% Create the corresponding differential equation 
% for a family of plane curves given by the equation
% y=cot(x-C)

syms x C
y=cot(x-C)
dy=diff(y,x)
% - cot(C - x)^2 - 1 = -y^2-1
% y'+y^2=-1

% Checking
syms x y(x)
eqn=diff(y,x)+y^2==-1
ySol=dsolve(eqn)
% tan(C6 - x)
%          1i
%         -1i