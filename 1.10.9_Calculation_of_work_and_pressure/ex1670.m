syms r h x dx;
% A=int(f(x),x,x0,x1)
% y/x=r/h
y=r/h*x
dV=pi*y^2*dx
dA=ro*g*x*dV
% (pi*dx*g*r^2*ro*x^3)/h^2
A=int((pi*g*r^2*ro*x^3)/h^2,x,0,h)
% (pi*g*h^2*r^2*ro)/4