% Calculate the volume of an ellipsoid
% x^2/a^2+y^2/b^2+z^2/c^2=1

syms x y z a b c real;
f1=x^2/a^2+y^2/b^2+z^2/c^2-1

% We proceed to spherical coordinates
syms ro phi teta;
x1=a*ro*cos(phi)*sin(teta)
y1=b*ro*sin(phi)*sin(teta)
z1=c*ro*cos(teta)
J=a*b*c*ro^2*sin(teta)

% V = int int int (U) dx*dy*dz
% V = int int int (U1) a*b*c*ro^2*sin(teta) d_ro*d_phi*d_teta
% U = 8*U1: 0<=ro<=1,0<=phi<=pi/2,0<=teta<=pi/2

V=8*int(int(int(J,teta,0,pi/2),ro,0,1),phi,0,pi/2)
% (4*pi*a*b*c)/3