% Calculate integral
% I = int int int (U) (x^2+y^2) dx dy dz
% where U bounded by curves x^2+y^2=3z,z=3

syms x y z;
f1=x^2+y^2
f2=x^2+y^2-3*z

% Transition to cylindrical coordinates
syms ro phi z;
x1=ro*cos(phi);
y1=ro*sin(phi);
z1=z;

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% ro^2

f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)
% ro^2 - 3*z

% ro^2/3<=z<=3
% 0<=ro<=3
% 0<=phi<=2*pi

I=int(int(int(f1*ro,z,ro^2/3,3),ro,0,3),phi,0,2*pi)
% (81*pi)/2
