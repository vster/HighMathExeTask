syms x y;
z=x^2*y
phi(x)=cos(x)

dzx=diff(z,x)
% 2*x*y
dzx=2*x*phi
% 2*x*y
dzx=simplify(dzx)
% 2*x*cos(x)
dzy=diff(z,y)
% x^2
dyx=diff(phi,x)
% -sin(x)
Dzx=simplify(dzx+dzy*dyx)
% 2*x*cos(x) - x^2*sin(x)
pretty(Dzx)
