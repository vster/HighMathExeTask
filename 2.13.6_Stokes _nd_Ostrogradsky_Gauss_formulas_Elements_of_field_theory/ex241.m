% Find stream radius vector 
% r=x*i+y*j*z*k
% through the closed surface
% z=1-sqrt(x^2+y^2),z=0 (0<=z<=1)

syms x y z;
r=[x y z]
div_r=diff(r(1),x)+diff(r(2),y)+diff(r(3),z)
% 3
f2=z-1+sqrt(x^2+y^2)

% The sought flow can be found from the Ostrogradskii-Gauss formula
% int int (S) (P*cos_alfa+Q*cos_beta+R*cos_gamma)*dS = 
% = int int int (T) (dP/dx+dQ/dy+dR/dz)*dx*dy*dz

% P = int int int (T) div_r dV 
% P = 3 int int int (T) dV

% We use cylindrical coordinates
syms ro phi z;
x1=ro*cos(phi);
y1=ro*sin(phi);
z1=z;
J=ro;

f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)
% z + (ro^2)^(1/2) - 1

% 0<=z<=1-ro
% 0<=ro<=1
% 0<=phi<=2*pi

P = int(int(int(3*J,z,0,1-ro),ro,0,1),phi,0,2*pi)
% pi
