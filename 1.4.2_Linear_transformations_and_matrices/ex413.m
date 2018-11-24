clear
syms alfa
A=[cos(alfa),-sin(alfa);sin(alfa),cos(alfa)]
B=[0,1;1,0]

syms x1 y1
V1=[x1;y1]

VA=A*V1
VB=B*V1

D=VB-VA
%  y1 - x1*cos(alfa) + y1*sin(alfa) = 0
%  x1 - y1*cos(alfa) - x1*sin(alfa) = 0

% Line
% x1*cos(alfa)-y1*(1+sin(alfa))=0