% Find the flux of the radius vector r through the outer 
% side of the surface of a right circular cone 
% if h is the height of the cone and R is the radius of the base

syms x y z R h real;
r=[x y z]
S = x^2+y^2-R^2/h^2*z^2

f1=divergence(r,r)
% 3

% Transition to cylindrical coordinates
syms ro phi z;
x1=ro*cos(phi);
y1=ro*sin(phi);
z1=z;
J=ro;

S=subs(S,[x y z],[x1 y1 z1])
S=simplify(S)
% -(R^2*z^2 - h^2*ro^2)/h^2
% 0<=ro<=R/h*z

I=int(int(int(f1*J,ro,0,R/h*z),z,0,h),phi,0,2*pi)
% pi*R^2*h