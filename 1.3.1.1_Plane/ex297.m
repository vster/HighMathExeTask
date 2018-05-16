syms x y z;
M0=[1,3,-2]
f=2*x-3*y-4*z+12

% The normal vector of the plane
N=[2,-3,-4]
D=12
% The distance from the point M0 to the plane
d=abs(dot(N,M0)+D)/norm(N)