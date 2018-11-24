syms x y;
z=log(x^2-y^2)
g(x)=exp(x);
% log(x^2 - y^2)
dzx=diff(z,x)
% (2*x)/(x^2 - y^2)
dzy=diff(z,y)
% -(2*y)/(x^2 - y^2)
dyx=diff(g,x)
% exp(x)
Dzx=simplify(dzx+dzy*dyx)
% (2*x - 2*y*exp(x))/(x^2 - y^2)
pretty(Dzx)