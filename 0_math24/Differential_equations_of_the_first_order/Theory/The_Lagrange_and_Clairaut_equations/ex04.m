% % Find the general and singular solutions of equation
% y=x*y'+sqrt((y')^2+1)

% Clairaut's equation
clear
syms x y(x)
eqn=y==x*diff(y)+sqrt(diff(y)^2+1)
ySol=dsolve(eqn)
%                                                                                   C31*x + (C31^2 + 1)^(1/2)
%  (x^2*(-1/((x - 1)*(x + 1)))^(1/2) - (-1/((x - 1)*(x + 1)))^(1/2) + x^2*(-(x - 1)*(x + 1))^(1/2))/(x^2 - 1)
% -((-1/((x - 1)*(x + 1)))^(1/2) - x^2*(-1/((x - 1)*(x + 1)))^(1/2) + x^2*(-(x - 1)*(x + 1))^(1/2))/(x^2 - 1)