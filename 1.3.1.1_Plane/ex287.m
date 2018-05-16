syms x y z;
M0=[3,5,-8]
f=6*x-3*y+2*z-28
% The normal vector of the plane
N=[6,-3,2]
D=-28
% The distance from the point M0 to the plane
d=abs(dot(N,M0)+D)/norm(N)

