% Find the volume of the body bounded by the sphere x2 + y2 + z2 = 6 
% and the paraboloid x2 + y2 = z.

syms x y z real;
f1=x^2+y^2+z^2-6
f2=x^2+y^2-z

% z+z^2-6=0
slv=solve(z^2+z-6)
% 2; -3

% V = int int int (U) dx*dy*dz
% V=int(int(int(1,z,x^2+y^2,sqrt(6-x^2-y^2)),y,0,sqrt(2-x^2)),x,-sqrt(2),sqrt(2))

% Transition to cylindrical coordinates
syms ro phi z;
x1=ro*cos(phi);
y1=ro*sin(phi);
z1=z;
J=ro

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% ro^2 + z^2 - 6 => z=sqrt(6-ro^2)
f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)
% ro^2 - z => z=ro^2

V=int(int(int(ro,z,ro^2,sqrt(6-ro^2)),ro,0,sqrt(2)),phi,0,2*pi)
% (2*pi*(6*6^(1/2) - 11))/3