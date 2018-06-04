% Find the mass of a sphere of radius R whose density gamma 
% is proportional to the square of the distance from the center.

syms r phi teta a R real;
J=r^2*sin(teta)
gamma = a*r^2
m = int(int(int(gamma*J,teta,0,pi),r,0,R),phi,0,2*pi)
% (4*pi*R^5*a)/5