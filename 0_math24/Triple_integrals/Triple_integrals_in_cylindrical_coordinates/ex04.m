% Calculate integral
% I = int int int (U) sqrt(x^2+y^2) dx*dy*dz
% where bounded by z=4-x^2-y^2, x^2+^y^2=4, y=0, z=0

syms x y z;
f1=sqrt(x^2+y^2)
f2=4-x^2-y^2-z
f3=x^2+y^2-4

syms ro phi z;
x1=ro*cos(phi);
y1=ro*sin(phi);
z1=z;

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% abs(ro)

f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)
% - ro^2 - z + 4
% z=4-ro^2

f3=subs(f3,[x y z],[x1 y1 z1])
f3=simplify(f3)
% ro^2 - 4
% ro=2

% 0<=ro<=2
% 0<=phi<=pi
% 0<=z<=4-ro^2

I=int(int(int(ro*ro,z,0,4-ro^2),ro,0,2),phi,0,pi)
% (64*pi)/15

