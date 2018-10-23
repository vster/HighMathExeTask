% Find all solutions of the differential equation
% y'=-x*exp(y)

clear
% 1)
% dy/dx=-x*exp(y)
% exp(-y)*dy=-x*dx
syms x y;
eq1=int(exp(-y),y)+int(x,x)
%   exp(-y) = x^2/2+C
% y=-log(x^2/2+C)

% 2)
syms x y(x)
eqv=diff(y)==-x*exp(y)
ySol=dsolve(eqv)
% ySol=-log(x^2/2 + C5)

