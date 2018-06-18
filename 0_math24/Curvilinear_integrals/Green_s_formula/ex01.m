% Using the Green's formula, calculate the integral
% int(C)x*y*dx+(x+y)*dy
% where curve C is a circle of radius R.

% Green's formula
% int(K)P*dx+Q*dy=int_int(D)(dQ/dx-dP/dy)*dx*dy

syms x y dx dy;
df1=x*y*dx+(x+y)*dy
P=x*y
Q=x+y

f=diff(Q,x)-diff(P,y)
% 1 - x
syms ro teta real;
x1=ro*cos(teta)
y1=ro*sin(teta)
J=ro
% 0<=teta<=2*pi
f=subs(f,[x y],[x1 y1])
f=simplify(f)
% 1 - ro*cos(teta)
I=int(int(f*J,ro,0,1),teta,0,2*pi)
% pi
