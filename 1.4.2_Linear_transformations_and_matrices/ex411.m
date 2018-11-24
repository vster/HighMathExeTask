A=[1 1 2;1 2 6;2 3 0]
B=[2 0 2;0 3 4; 1 3 2]

syms x1 y1 z1
V1=[x1;y1;z1]

VA=A*V1
VB=B*V1

syms x y z
VA-VB

eqsys=[y1 - x1==0, x1 - y1 + 2*z1==0,x1 - 2*z1==0]
% x1=2*t
% y1=2*t
% z1=t

