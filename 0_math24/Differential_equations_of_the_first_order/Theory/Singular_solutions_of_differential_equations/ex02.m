% Find singular solutions of the equation
% y=(y')^2-3*x*y'+3*x^2

clear
syms x y(x)
eqn=y==diff(y(x))^2-3*x*diff(y(x))+3*x^2
ySol=dsolve(eqn)
%           (3*x^2)/4 - singular solution
% C19^2 + C19*x + x^2