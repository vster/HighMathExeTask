% Check the Green's formula for a vector field
% F(P,Q)=(x^2*y^2,x*y^2)
% and the region of integration R, which has the form 
% of a circle of radius 2 with center at the origin.

syms x y dx dy;
P=x^2*y^2
Q=x*y^2

% 1)
f1=P*dx+Q*dy
syms t dt;
x1=2*cos(t)
y1=2*sin(t)
dx1=diff(x1,t)
dy1=diff(y1,t)
f1=subs(f1,[x y dx dy],[x1 y1 dx1 dy1])
% 16*cos(t)^2*sin(t)^2 - 32*cos(t)^2*sin(t)^3
f1=simplify(f1)
% -16*cos(t)^2*sin(t)^2*(2*sin(t) - 1)
I1=int(f1,t,0,2*pi)
% 4*pi

% 2)
% Green's formula
% int(K)P*dx+Q*dy=int_int(D)(dQ/dx-dP/dy)*dx*dy
f2=diff(Q,x)-diff(P,y)
% y^2 - 2*x^2*y

syms ro teta real;
x1=ro*cos(teta)
y1=ro*sin(teta)
J=ro
f2=subs(f2,[x y],[x1 y1])
% ro^2*sin(teta)^2 - 2*ro^3*cos(teta)^2*sin(teta)
f2=simplify(f2)
% ro^2*sin(teta)*(sin(teta) - 2*ro + 2*ro*sin(teta)^2)
I2=int(int(f2*J,ro,0,2),teta,0,2*pi)
% 4*pi