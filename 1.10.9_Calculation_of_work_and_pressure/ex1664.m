syms a r ro g dx real;

m=2*sqrt(r^2-x^2)
dV=a*m*dx
dA=x*ro*g*dV

A=int(2*a*g*ro*x*(r^2 - x^2)^(1/2),x,0,r)
% (2*a*g*r^3*ro)/3