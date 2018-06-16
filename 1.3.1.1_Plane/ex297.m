% Find the distance from the point M0=[1,3,-2] to the plane
% 2*x-3*y-4*z+12=0

syms x y z;
M0=[1,3,-2]
f=2*x-3*y-4*z+12

% The normal vector of the plane
N=[2,-3,-4]
D=sym(12)
% The distance from the point M0 to the plane
d=abs(dot(N,M0)+D)/norm(N)
% (13*29^(1/2))/29