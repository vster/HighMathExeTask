% Using Green's formula, find the integral
% int(C)(x+y)*dx-(x-y)*dy
% where the curve C is an ellipse
% x^2/a^2+y^2/b^2=1

% Green's formula
% int(K)P*dx+Q*dy=int_int(D)(dQ/dx-dP/dy)*dx*dy

syms x y dx dy;
df1=(x+y)*dx-(x-y)*dy
P=x+y
Q=-(x-y)

f=diff(Q,x)-diff(P,y)
% -2

syms a b ro teta real;
x1=a*ro*cos(teta)
y1=b*ro*sin(teta)
J=a*b*ro

I=int(int(f*J,ro,0,1),teta,0,2*pi)
% -2*pi*a*b