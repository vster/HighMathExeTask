% Find the equation of the plane passing through the origin 
% and through the points P=[4,-2,1] and Q=[2,4,-3].

syms x y z;
O=[0,0,0]
P=[4,-2,1]
Q=[2,4,-3]

R=[x,y,z]

F=[R;P;Q]

pl=det(F)
pl=pl/2
% x + 7*y + 10*z = 0