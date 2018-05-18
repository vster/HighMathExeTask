% Calculate integral
% I = int (-2;2) dx int (-sqrt(4-x^2);sqrt(4-x^2)) dy int (0;4-x^2-y^2) y^2 dz

syms x y z;
f1=y^2
f2=sqrt(4-x^2)
f3=4-x^2-y^2

% Transition to cylindrical coordinates
syms ro phi z;
x1=ro*cos(phi);
y1=ro*sin(phi);
z1=z;

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% ro^2*sin(phi)^2

f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)

f3=subs(f3,[x y z],[x1 y1 z1])
f3=simplify(f3)
% 4 - ro^2

% 0<=phi<=2*pi
% 0<=ro<=2
% 0<=z<=4-ro^2

I=int(int(int(f1*ro,z,0,4-ro^2),ro,0,2),phi,0,2*pi)
% (16*pi)/3