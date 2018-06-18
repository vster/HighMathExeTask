% Compute the integral
% int(C)(sqrt(x^2+y^2)*dx+y*(x*y+log(x+sqrt(x^2+y^2)))*dy
% with the help of Green's formula.
% The integration contour C is the circle x^2 + y^2 = a^2

% Green's formula
% int(K)P*dx+Q*dy=int_int(D)(dQ/dx-dP/dy)*dx*dy

syms x y a;
P=sqrt(x^2+y^2)
Q=y*(x*y+log(x+sqrt(x^2+y^2)))

f=diff(Q,x)-diff(P,y)
f=simplify(f)
% y^2
syms ro teta real;
x1=ro*cos(teta)
y1=ro*sin(teta)
J=ro
f=subs(f,[x y],[x1 y1])
% ro^2*sin(teta)^2
I=int(int(f*J,ro,0,a),teta,0,2*pi)
% (pi*a^4)/4
