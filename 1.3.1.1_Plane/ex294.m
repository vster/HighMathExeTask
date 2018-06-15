% Find the equation of the plane passing through the points
% A=[2,-1,4] and B=[3,2,-1] perpendicular to the plane  
% x+y+2*z-3=0

syms x y z;
R=[x,y,z]
A=[2,-1,4]
B=[3,2,-1]
f=x+y+2*z-3;

AB=B-A
n=[1,1,2]

N=cross(AB,n)
% [11    -7    -2]

eq=N(1)*(x-A(1))+N(2)*(y-A(2))+N(3)*(z-A(3))
% 11*x - 7*y - 2*z - 21 = 0

eq1=dot(N,R-A)
% 11*x - 7*y - 2*z - 21 =0