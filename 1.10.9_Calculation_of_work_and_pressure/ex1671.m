clear
syms a d x dx g ro;
% A=int(f(x),x,x0,x1)
r=d/2
y=sqrt(r^2-(r-x)^2)
dV=2*y*a*dx
dA=g*ro*x*dV
A=int(dA/dx,x,0,d)
% (pi*a*d^3*g*ro)/8