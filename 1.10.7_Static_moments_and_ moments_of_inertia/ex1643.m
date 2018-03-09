syms x y h a;
y=h-(4*h/a^2)*x^2

f=y^3
Ix=1/3*int(f,-a/2,a/2)
% (h - (4*h*x^2)/a^2)^3