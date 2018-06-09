% Calculate
% int int( S) x*dy*dz+y*dx*dz+z*dx*dy
% where S is outer surface of cylinder
% x^2+y^2=a^2 (-h<=z<=h)

syms x y z a h real;
P=x
Q=y
R=z

f=diff(P,x)+diff(Q,y)+diff(R,z)
% 3

% Transition to cylindrical coordinates
syms ro phi z;
x1=ro*cos(phi);
y1=ro*sin(phi);
z1=z;
J=ro;

I=int(int(int(f*J,z,-h,h),ro,0,a),phi,0,2*pi)
% 6*pi*a^2*h