% Find the centroid of a homogeneous hemisphere of radius R

% m = int int int (U) ro(x,y,z) dx*dy*dz
% Mxy = int int int (U) z*ro(x,y,z) dx*dy*dz
% zm=Mxy/m
% ro(x,y,z) = ro0
% zm = ro0*int int int (U) z dx*dy*dz / ro0*int int int (U) dx*dy*dz
% zm = int int int (U) z dx*dy*dz / V
% V = 1/2*(4/3*pi*R^3)
% I = int int int (U) z dx*dy*dz
% zm = I/V

syms x y z R real
f=z;
V = 1/2*(4/3*pi*R^3)

% We proceed to spherical coordinates
syms ro phi teta;
x1=r*cos(phi)*sin(teta)
y1=r*sin(phi)*sin(teta)
z1=r*cos(teta)
J=r^2*sin(teta)

f1 = subs(f,z,z1)
% r*cos(teta)

I = int(int(int(f1*J,teta,0,pi/2),r,0,R),phi,0,2*pi)
% (pi*R^4)/4

zm = I/V
% (3*R)/8 