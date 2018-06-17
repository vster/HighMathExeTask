% Calculate the angle between the planes passing through the point 
% M=[1,-1,-1], one of which contains the 0x axis, and the other axis 0z.

syms x y z;
M=[1,-1,-1]

syms A1 B1 C1 A2 B2 C2;
p1=B1*y+C1*z
p2=A2*x+B2*y

% B1*(-1)+C1*(-1) = 0
% y-z=0
B1=1
C1=-1

% A2*1+B2*(1) = 0
% x+y=0
A2=1
B2=1

cos_phi=sym((0+1+0)/(sqrt(2)*sqrt(2)))
% 1/2
% phi = 60 grad

