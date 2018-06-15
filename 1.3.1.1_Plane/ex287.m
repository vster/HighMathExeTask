% Determine the distance from the point M0=[3,5,-8]
% to the plane 6*x-3*y+2*z-28=0

syms x y z;
M0=[3,5,-8]
p=6*x-3*y+2*z-28
% The normal vector of the plane
N=[6,-3,2]
D=sym(-28)

% The distance from the point M0 to the plane
d=abs(dot(N,M0)+D)/norm(N)
% 41/7

