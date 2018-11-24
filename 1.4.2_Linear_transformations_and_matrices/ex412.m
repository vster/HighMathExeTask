syms alfa
A=[cos(alfa),-sin(alfa);sin(alfa),cos(alfa)]
B=[1,0;0,1]

syms x1 y1
V1=[x1;y1]

VA=A*V1
VB=B*V1

D=VB-VA
%  x1 - x1*cos(alfa) + y1*sin(alfa) = 0
%  y1 - y1*cos(alfa) - x1*sin(alfa) = 0
eqsys=D.'

[x1 y1]=solve(eqsys)
% [0 0]