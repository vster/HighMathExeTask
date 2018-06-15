% Find the equation of the plane passing 
% through the point M=[2,3,-1] parallel 
% to the plane 5*x-3*y+2*z-10=0

syms x y z;
R=[x,y,z]
M=[2,3,-1]
f=5*x-3*y+2*z-10;
N=[5,-3,2]

p=N(1)*(x-M(1))+N(2)*(y-M(2))+N(3)*(z-M(3))
% 5*x - 3*y + 2*z + 1 = 0

p1=dot(N,R-M)
% 5*x - 3*y + 2*z + 1 = 0