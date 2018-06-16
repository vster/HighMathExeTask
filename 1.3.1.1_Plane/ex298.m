% Find the length of the perpendicular dropped 
% from the point M0=[2,3,-5] to the plane 
% 4*x-2*y+5*z-12=0

syms x y z;
M0=[2,3,-5]
f=4*x-2*y+5*z-12

N=[4,-2,5]
D=sym(-12)
% The distance from the point M0 to the plane
d=abs(dot(N,M0)+D)/norm(N)
% (7*5^(1/2))/3