% Find the volume of the ball
% x^2+y^2+z^2<=R^2

syms x y z real;
f1=x^2+y^2+z^2-R^2

% We proceed to spherical coordinates
syms ro phi teta;
x1=ro*cos(phi)*sin(teta)
y1=ro*sin(phi)*sin(teta)
z1=ro*cos(teta)
J=ro^2*sin(teta)

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% ro^2 - R^2

% 0<=ro<=R
% 0<=phi<=pi/2
% 0<=teta<=pi/2

V=8*int(int(int(J,teta,0,pi/2),ro,0,R),phi,0,pi/2)
% (4*pi*R^3)/3