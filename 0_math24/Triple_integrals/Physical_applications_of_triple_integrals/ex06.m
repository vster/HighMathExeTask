% Let the planet have a radius R, and its density is expressed by the dependence
% gamma(r)=(R+r)/(2*r)*gamma0
% Calculate the mass of the planet.

syms R r gamma0 real;
J=r^2*sin(teta)
gamma = (R+r)/(2*r)*gamma0

% M = int int int (U) dV
M=int(int(int(gamma*J,teta,0,pi),phi,0,2*pi),r,0,R)
% (5*pi*R^3*gamma0)/3

% V=4/3*pi*R^3
% then 
% M=5/4*gamma0*V