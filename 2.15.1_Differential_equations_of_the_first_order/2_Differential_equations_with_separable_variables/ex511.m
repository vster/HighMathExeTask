% Find the curves for which the sum of the lengths of the normal 
% and the subnormal is a constant value equal to a.

% 1)
% |y*y'|+|y*sqrt(1+(y')^2)| = a
% y' = +-(a^2-y^2)/(2*a*y)
% 2*y*dy/(a^2-y^2) = +-dx/a
clear
syms x y a real;
eq1=int(2*y/(a^2-y^2),y)+int(1/a,x)
% x/a - log(y^2 - a^2) = log(C)
syms C;
eq2=x/a - log(y^2 - a^2) + log(C)
eq3=simplify(exp(eq2))
% -(C*exp(x/a))/(a^2 - y^2) = 1
% y^2 = a^2-C*exp(x/a)

% 2)
syms x real;
syms y(x);
eqn = y*diff(y) + y*sqrt(1+diff(y)^2) == a
SolY(x)=dsolve(eqn)
pretty(SolY(x))