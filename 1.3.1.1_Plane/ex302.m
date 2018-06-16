% Find the equation of the plane, knowing that the point 
% P=[4,-3,12] serves as the base of the perpendicular 
% dropped from the origin to this plane.

syms x y z;
r=[x,y,z]
P=[4,-3,12]

f=P(1)*(x-P(1))+P(2)*(y-P(2))+P(3)*(z-P(3))
% 4*x - 3*y + 12*z - 169 = 0

f1=dot(P,r-P)
% 4*x - 3*y + 12*z - 169 = 0
