% Compute the integral
% int (0:1) dx int (0:sqrt(1-x^2)) dy int (0:sqrt(1-x^2-y^2))
%   (x^2+y^2+z^2)^2 dz
% using spherical coordinates

syms x y z real;
f1=(x^2+y^2+z^2)^2
f2=sqrt(1-x^2)
f3=sqrt(1-x^2-y^2)

% We proceed to spherical coordinates
syms ro phi teta;
x1=ro*cos(phi)*sin(teta)
y1=ro*sin(phi)*sin(teta)
z1=ro*cos(teta)
J=ro^2*sin(teta)

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% ro^4
pretty(f1)

f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)
% (1 - ro^2*cos(phi)^2*sin(teta)^2)^(1/2)
pretty(f2)

f3=subs(f3,[x y z],[x1 y1 z1])
f3=simplify(f3)
% (1 - ro^2*sin(teta)^2)^(1/2)
pretty(f3)

% 0<=ro<=1
% 0<=phi<=pi/2
% 0<=teta<=pi/2
I=int(int(int(f1*J,teta,0,pi/2),ro,0,1),phi,0,pi/2)
% pi/14