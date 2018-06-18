% Using Green's formula, find the integral
% int(C)(x-y)*dx+(x+y)*dy
% where the curve C is the circle given by the equation x^2 + y^2 = a^2.

% Green's formula
% int(K)P*dx+Q*dy=int_int(D)(dQ/dx-dP/dy)*dx*dy

syms x y dx dy a;
df1=(x-y)*dx+(x+y)*dy
P=x-y
Q=x+y

f=diff(Q,x)-diff(P,y)
% 2
syms ro teta real;
x1=ro*cos(teta)
y1=ro*sin(teta)
J=ro
% 0<=teta<=2*pi
% 0<=ro<=a
I=int(int(f*J,ro,0,a),teta,0,2*pi)
% 2*pi*a^2