% Calculate the integral
% I = int int (S) x^2*y^2*z dx*dy
% on the upper side of the upper half of the sphere
% x^2+y^2+z^2=R^2

% Proection on xOy is circle D: x^2+y^2=R^2

syms x y R real;
z=sqrt(R^2-x^2-y^2)
% I = int int (D) x^2*y^2*sqrt(R^2-x^2-y^2) dx*dy
f=x^2*y^2*sqrt(R^2-x^2-y^2)

% Passing to polar coordinates
syms ro teta;
x1=ro*cos(teta)
y1=ro*sin(teta)
J=ro

f1=subs(f,[x y],[x1 y1])
f1=simplify(f1)
% -(ro^4*(R^2 - ro^2)^(1/2)*(cos(4*teta) - 1))/8

I=4*int(int(f1*J,ro,0,R),teta,0,pi/2)
% (2*pi*R^7)/105

