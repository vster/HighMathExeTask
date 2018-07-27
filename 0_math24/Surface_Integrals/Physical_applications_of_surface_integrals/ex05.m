% Find the attraction force between a hemisphere with a constant density mu0 
% of radius r centered at the origin and a point mass m located at the origin.

% Consider the point M (x, y, z) of the hemisphere, which belongs to 
% a small section of the surface dS. 
% The attractive force dF (M) between the surface element 
% dS and the mass m can be written in the form

% F = G*m int_int (S) mu(x,y,z) r/r^3 dS
% where r = (x-x0, y-y0, z-z0), G is the gravitational constant, 
% and mu (x, y, z) is the density function.

syms G mu0 m r real;

% dF(M)=(G*mu0*m*dS/r^2) *e(O,M)
% e(O,M)=(x/r,y/r,z/r)
% then
% dF(M)=(G*mu0*m*dS/r^3)*(x,y,z)

% Fx=(G*mu0*m/r^3)*int_int(S)x*dS
% Fy=(G*mu0*m/r^3)*int_int(S)y*dS
% Fz=(G*mu0*m/r^3)*int_int(S)z*dS

syms r phi teta real;
x1=r*cos(phi)*sin(teta)
y1=r*sin(phi)*sin(teta)
z1=r*cos(teta)
J=r^2*sin(teta)

Fx=(G*mu0*m/r^3)*int(int(x1*J,teta,0,pi/2),phi,0,2*pi)
% 0
Fy=(G*mu0*m/r^3)*int(int(y1*J,teta,0,pi/2),phi,0,2*pi)
% 0
Fz=(G*mu0*m/r^3)*int(int(z1*J,teta,0,pi/2),phi,0,2*pi)
% pi*G*m*mu0