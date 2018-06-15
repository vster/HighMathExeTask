% Write the equation of the plane passing 
% through the point M=[2,3,5] and perpendicular 
% to the vector N=4i+3j+2k

syms x y z;
R=[x,y,z]
M=[2,3,5]
N=[4,3,2]

p=N(1)*(x-M(1))+N(2)*(y-M(2))+N(3)*(z-M(3))
% 4*x + 3*y + 2*z - 27

p1=dot(N,R-M)
% 4*x + 3*y + 2*z - 27