% Find the moment of inertia of a straight circular homogeneous cone with 
% respect to its axis. The cone has a base radius R, a height H, 
% and a total mass m

syms R H m real;
% The moment of inertia of the body relative to the axis Oz
% Iz = int int int (U) gamma(x,y,z)*dx*dy*dz
% gamma(x,y,z)=gamma0
% Iz=gamma0* int (U) (x^2+y^2) dx*dy*dz
syms x y z gamma0 real;
f=x^2+y^2

syms r phi z real;
x1=r*cos(phi);
y1=r*sin(phi);
z1=z;
J=r;

f1=subs(f,[x y z],[x1 y1 z1])
f1=simplify(f1)
% r^2

% 0<=r<=R,0<=phi<=2*pi,r*(H/R)<=z<=H
Iz=gamma0*int(int(int(f1*J,z,r*(H/R),H),r,0,R),phi,0,2*pi)
% (pi*H*R^4*gamma0)/10

% m=gamma0*V, V=1/3*pi*R^2*H => gamma0=m/V=(3*m)/(pi*R^2*H)
gamma01=(3*m)/(pi*R^2*H)

Iz=subs(Iz,gamma0,gamma01)
% (3*R^2*m)/10
