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

cos_phi=(0+1+0)/(sqrt(2)*sqrt(2))

