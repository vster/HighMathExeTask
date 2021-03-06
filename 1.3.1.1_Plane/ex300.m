% Find the equation of the plane passing through the points 
% P=[2,0,-1] and Q=[1,-1,3] and perpendicular to the plane
% 3*x+2*y-z+5=0

syms x y z;
r=[x,y,z]
P=[2,0,-1]
Q=[1,-1,3]
f=3*x+2*y-z+5;

PQ=Q-P
%   -1    -1     4
n=[3,2,-1]

N=cross(PQ,n)
%   -7    11     1

eq=N(1)*(x-P(1))+N(2)*(y-P(2))+N(3)*(z-P(3))
eq=-eq
% 7*x - 11*y - z - 15 = 0

eq1=dot(N,r-P)
eq1=-eq1
% 7*x - 11*y - z - 15 = 0