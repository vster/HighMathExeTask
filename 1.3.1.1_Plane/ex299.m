% Find the equation of the plane passing through 
% 1) the point M1=[-2,3,4] if it cuts equal segments 
% on the coordinate axes
% 2) through the point M2=(2,-1,6), if it cuts off 
% on the Oz axis a segment twice as large as on the axes 0x,0y

syms x y z;
r=[x y z]
% 1)
M=[-2,3,4]
n=[1,1,1]

f=n(1)*(x-M(1))+n(2)*(y-M(2))+n(3)*(z-M(3))
% x + y + z - 5 = 0

f=dot(n,r-M)
% x + y + z - 5 = 0

% 2)
N=[2,-1,4]
n=[2,2,1]
f=n(1)*(x-N(1))+n(2)*(y-N(2))+n(3)*(z-N(3))
% 2*x + 2*y + z - 6 = 0

f=dot(n,r-N)
% 2*x + 2*y + z - 6 = 0
