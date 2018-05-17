% Calculate integral
% I = int int int (U) (x^4+2x^2y^2+y^4) dx dy dz
% where U: bounded by x^2+y^2<=1, z=0, z=1 

syms x y z;
f=x^4+2*x^2*y^2+y^4

% Transition to cylindrical coordinates
syms ro phi z;
x1=ro*cos(phi);
y1=ro*sin(phi);
z1=z;

f=subs(f,[x y z],[x1 y1 z1])
f=simplify(f)
% ro^4

I=int(int(int(f*ro,z,0,1),ro,0,1),phi,0,2*pi)
% pi/3
