% Solve equation
% sqrt((1+cos(2*x))/(1+sin(y))+y'=0
% y'(pi/4)=0

% 1)
% dy/dx=-sqrt((1+cos(2*x))/(1+sin(y))
% sqrt(1+sin(y))*dy+sqrt(1+cos(2*x))*dx=0
clear
syms x y;
eq1=int(sqrt(1+sin(y)),y)+int(sqrt(1+cos(2*x)),x)
% (2*(sin(y) - 1)*(sin(y) + 1)^(1/2))/cos(y) + (2^(1/2)*sin(2*x))/(2*(cos(x)^2)^(1/2))

% 2)
clear
syms x y(x);
eqn=diff(y(x),x)==-sqrt((1+cos(2*x))/(1+sin(y)))
ySol=dsolve(eqn)

