% Using the Green's formula, calculate the integral
% int(C)x^2*y*dx-x*y^2*dy
% The curve C is the circle x^2 + y^2 = a^2, 
% which is traversed counterclockwise.

% Green's formula
% int(K)P*dx+Q*dy=int_int(D)(dQ/dx-dP/dy)*dx*dy

syms x y dx dy;
df1=x^2*y*dx-x*y^2*dy
P=x^2*y
Q=-x*y^2

f=diff(Q,x)-diff(P,y)
% - x^2 - y^2
syms ro teta real;
x1=ro*cos(teta)
y1=ro*sin(teta)
J=ro
% 0<=teta<=2*pi
f=subs(f,[x y],[x1 y1])
f=simplify(f)
% -ro^2
I=int(int(f*J,ro,0,a),teta,0,2*pi)
% -(pi*a^4)/2



