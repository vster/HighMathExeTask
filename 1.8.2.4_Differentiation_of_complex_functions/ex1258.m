syms x y;
z=(x^2-y)/(x^2+y)
phi(x)=3*x+1

dzx=diff(z,x)
% (2*x)/(x^2 + y) + (2*x*(- x^2 + y))/(x^2 + y)^2
dzy=diff(z,y)
% (- x^2 + y)/(x^2 + y)^2 - 1/(x^2 + y)
dyx=diff(phi,x)
% 3
Dzx=simplify(dzx+dzy*dyx)
% -(2*x*(3*x - 2*y))/(x^2 + y)^2
pretty(Dzx)
Dzx=simplify(-(2*x*(3*x - 2*phi))/(x^2 + phi)^2)
% (2*x*(3*x + 2))/(x^2 + 3*x + 1)^2
pretty(Dzx)