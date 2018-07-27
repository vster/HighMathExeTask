% Find the center of mass of the part of the spherical shell 
% x^2 + y^2 + z^2 = a^2
% located in the first octant and having a constant density mu0.

% xC=Myz/m
% yC=Mxz/m
% zC=Mxy/m
% where
% Myz = int_int (S) x*mu(x,y.z) dS
% Mxz = int_int (S) y*mu(x,y.z) dS
% Mxy = int_int (S) z*mu(x,y.z) dS

clear
syms x y z mu0 a real;
assume(a>0)
% m = 1/8* int_int (S) mu0 dS = mu0/8* int_int (S) dS =mu0/8 * 4*pi*a^2
m=mu0/8*4*pi*a^2
% (pi*a^2*mu0)/2

% Myz = int_int (S) x*mu(x,y.z) dS =mu0 int_int(S) x dS
% Myz = mu0 int_int (D(x,y)) x*sqrt(1+diff(z,x)^2+diff(z,y)^2) dxdy

z1=sqrt(a^2-x^2-y^2)
dS=sqrt(1+diff(z1,x)^2+diff(z1,y)^2)
dS=simplify(dS)
% abs(a)*(-1/(- a^2 + x^2 + y^2))^(1/2)
dS=a*(-1/(- a^2 + x^2 + y^2))^(1/2)

f=x*dS
% a*x*(-1/(- a^2 + x^2 + y^2))^(1/2)

syms r phi real;
assume(0<r<a)
x1=r*cos(phi)
y1=r*sin(phi)
J=r

f1=subs(f,[x y],[x1 y1])
f1=simplify(f1)
% a*r*cos(phi)*(1/(a^2 - r^2))^(1/2)
f1=a*r*cos(phi)/(a^2-r^2)^(1/2)

Myz=mu0*int(int(f1*J,phi,0,pi/2),r,0,a)
% (pi*a^3*mu0)/4
xC=Myz/m
% a/2
MC=[a/2,a/2,a/2]