% Find the equation of the plane passing through the points 
% P=[0,2,0] and Q=[2,0,0] , and forming an angle of 60 degrees 
% with the plane x = 0.

syms x y z x3 y3 z3;
P=[0,2,0]
Q=[2,0,0]
R=[x,y,z]

M=[x3,y3,z3]

F=[R-P;Q-P;M-P]

% To solve!

% x/2+y/2+z/(+-sqrt(2)=1