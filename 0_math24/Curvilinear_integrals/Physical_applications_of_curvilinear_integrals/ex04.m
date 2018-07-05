% Calculate the moment of inertia Ix of the wire in the form of a circle 
% x^2 + y^2 = a^2 with density ro = 1.

syms t a real;
x=a*cos(t)
y=a*sin(t)
ro=1

fx=y^2*ro*sqrt(diff(x,t)^2+diff(y,t)^2)
fx=simplify(fx)
% sin(t)^2*(a^2)^(3/2)
fx=sin(t)^2*a^3
Ix=int(fx,t,0,2*pi)
% pi*a^3