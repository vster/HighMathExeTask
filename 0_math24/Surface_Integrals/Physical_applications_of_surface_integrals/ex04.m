% Calculate the moment of inertia of the homogeneous spherical shell 
% x^2 + y^2 + z^2 = 1 (z>=0) with density mu0 with respect to the axis Oz.

% The moments of inertia of the shell relative to the axes Ox, Oy, Oz 
% are expressed, respectively, by formulas
% Ix = int_int (S) (y^2+z^2)*mu(x,y,z) dS
% Iy = int_int (S) (x^2+z^2)*mu(x,y,z) dS
% Iz = int_int (S) (x^2+y^2)*mu(x,y,z) dS

syms x y z mu0 real;
z1=sqrt(1-x^2-y^2)

dS=sqrt(1+diff(z1,x)^2+diff(z1,y)^2)
dS=simplify(dS)
% (-1/(x^2 + y^2 - 1))^(1/2)
f=(x^2+y^2)*dS
% (x^2 + y^2)*(-1/(x^2 + y^2 - 1))^(1/2)

% D(x,y): x^2+y^2<=1

syms r phi real;
x1=r*cos(phi)
y1=r*sin(phi)
J=r

f1=subs(f,[x y],[x1 y1])
f1=simplify(f1)
% r^2*(-1/(r^2 - 1))^(1/2)
f1=r^2/(1-r^2)^(1/2)

Iz=mu0*int(int(f1*J,r,0,1),phi,0,2*pi)
% (4*pi*mu0)/3
