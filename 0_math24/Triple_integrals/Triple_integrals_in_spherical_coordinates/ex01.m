% Find the integral
% int int int (U) sqrt(x^2+y^2+z^2) dx dy dz
% where the integration region U is the ball given by the equation 
% x^2 + y^2 + z^2 = 25

syms x y z;
f1 = sqrt(x^2+y^2+z^2)
U = x^2 + y^2 + z^2 - 25

% We proceed to spherical coordinates
syms ro phi teta;
x1=ro*cos(phi)*sin(teta)
y1=ro*sin(phi)*sin(teta)
z1=ro*cos(teta)

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% (ro^2)^(1/2)
f1=ro

% 0<=ro<=5
% 0<=phi<=2*pi
% 0<=teta<=pi

J=ro^2*sin(teta)

% I = int int int (U) sqrt(x^2+y^2+z^2) dx dy dz
I=int(int(int(f1*J,ro,0,5),teta,0,pi),phi,0,2*pi)
% 625*pi
