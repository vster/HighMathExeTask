% Calculate
% int int (S) (x*cos(alfa)+y*cos(beta)+z*cos(gamma))*dS
% where S is outer surface of ellipsoid
% x^2/a^2+y^2/b^2+z^2/c^2=1

% Ostrogradsky-Gauss formula
% int int (S) (P*cos_alfa+Q*cos_beta+R*cos_gamma)*dS = 
% = int int int (T) (dP/dx+dQ/dy+dR/dz)*dx*dy*dz

syms x y z a b c real;
r=[x y z]
P=x
Q=y
R=z
F=[P Q R]
f=divergence(F,r)
% 3

% We proceed to spherical coordinates
syms ro phi teta;
x1=a*ro*cos(phi)*sin(teta)
y1=b*ro*sin(phi)*sin(teta)
z1=c*ro*cos(teta)
J=a*b*c*ro^2*sin(teta)

% 0<=ro<=1
% 0<=phi<=2*pi
% 0<=teta<=pi
I=int(int(int(f*J,teta,0,pi),ro,0,1),phi,0,2*pi)
% 4*pi*a*b*c