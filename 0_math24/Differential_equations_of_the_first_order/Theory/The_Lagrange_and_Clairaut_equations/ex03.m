% Find the general and singular solutions of equation
% y=x*y'+(y')^2

% Clairaut's equation
clear
syms x y(x)
eqn=y==x*diff(y)+diff(y)^2
ySol=dsolve(eqn)
% C30^2 + x*C30 - general solution
%        -x^2/4 - singular solution