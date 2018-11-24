syms x y alfa;
z=log((x-sqrt(x^2-y^2)/(x+sqrt(x^2-y^2))))
phi=x*cos(alfa)

dzx=simplify(diff(z,x))
% x*(x^2 - y^2)^(1/2) - x + (x^2 - y^2)^(1/2) + x^2 - y^2)/(x^2*(x^2 - y^2)^(1/2) - x*y^2 - x^2 + x^3 + y^2)
pretty(dzx)
dzx=simplify(subs(dzx,y,phi))
% ((-x^2*(cos(alfa)^2 - 1))^(1/2) - x - x^2*cos(alfa)^2 + x^2 + x*(-x^2*(cos(alfa)^2 - 1))^(1/2))/(x^2*(x + (-x^2*(cos(alfa)^2 - 1))^(1/2) + cos(alfa)^2 - x*cos(alfa)^2 - 1))
pretty(dzx)

dzy=simplify(diff(z,y))
% -(y/(x + (x^2 - y^2)^(1/2))^2 - y/((x^2 - y^2)^(1/2)*(x + (x^2 - y^2)^(1/2))))/(x - (x^2 - y^2)^(1/2)/(x + (x^2 - y^2)^(1/2)))
pretty(dzy)
dzy=simplify(subs(dzy,y,phi))
% (x^2*cos(alfa))/(x^3*(-x^2*(cos(alfa)^2 - 1))^(1/2) + x^3*cos(alfa)^2 - 2*x^4*cos(alfa)^2 - x^3 + 2*x^4 + x^2*(cos(alfa)^2 - 1)*(-x^2*(cos(alfa)^2 - 1))^(1/2) - x^3*(cos(alfa)^2 - 1)*(-x^2*(cos(alfa)^2 - 1))^(1/2))
pretty(dzy)

dyx=diff(phi,x)
% cos(alfa)
Dzx=simplify(dzx+dzy*dyx)
% ((-x^2*(cos(alfa)^2 - 1))^(1/2) - x - x^2*cos(alfa)^2 + x^2 + x*(-x^2*(cos(alfa)^2 - 1))^(1/2))/(x^2*(x + (-x^2*(cos(alfa)^2 - 1))^(1/2) + cos(alfa)^2 - x*cos(alfa)^2 - 1)) + (x^2*cos(alfa)^2)/(x^3*(-x^2*(cos(alfa)^2 - 1))^(1/2) + x^3*cos(alfa)^2 - 2*x^4*cos(alfa)^2 - x^3 + 2*x^4 + x^2*(cos(alfa)^2 - 1)*(-x^2*(cos(alfa)^2 - 1))^(1/2) - x^3*(cos(alfa)^2 - 1)*(-x^2*(cos(alfa)^2 - 1))^(1/2))
pretty(Dzx)