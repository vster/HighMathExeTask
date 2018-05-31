% Compute the integral
% int int int (U) x*y*z dx*dy*dz
% where the region U is the part of the ball 
% x^2+y^2+z^2<=R^2
% located in the first octant
% x>=0,y>=0,z>=0

syms x y z R;
f1=x*y*z
f2=x^2+y^2+z^2-R^2

% We proceed to spherical coordinates
syms ro phi teta;
x1=ro*cos(phi)*sin(teta)
y1=ro*sin(phi)*sin(teta)
z1=ro*cos(teta)
J=ro^2*sin(teta)

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% ro^3*cos(phi)*cos(teta)*sin(phi)*sin(teta)^2

f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)

% 0<=ro<=R
% 0<=phi<=pi/2
% 0<=teta<=pi/2
I=int(int(int(f1*J,teta,0,pi/2),ro,0,R),phi,0,pi/2)
% R^6/48


