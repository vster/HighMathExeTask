syms x y z;
M0=[2,3,-5]
f=4*x-2*y+5*z-12

N=[4,-2,5]
D=-12
% The distance from the point M0 to the plane
d=abs(dot(N,M0)+D)/norm(N)