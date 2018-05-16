% Find the volume of a body bounded by surfaces
% hz=x^2+y^2, z=h
% V = int int int (T) dx dy dz

syms x y z h;
f1=(x^2+y^2)/h

% Transition to cylindrical coordinates
syms ro phi z;
x1=ro*cos(phi);
y1=ro*sin(phi);
z1=z;

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% ro^2/h

V=int(int(int(ro,z,ro^2/h,h),ro,0,h),phi,0,2*pi)
% (pi*h^3)/2