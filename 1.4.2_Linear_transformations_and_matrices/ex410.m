clear
A=[6 1 -2; -18 2 6; 2 2 0]
B=[2 0 0;0 2 0; 0 0 2]
syms x1 y1 z1
V1=[x1;y1;z1]

VA=A*V1
VB=B*V1

D=VA-VB
%   4*x1 + y1 - 2*z1 = 0
%       z1 - 3*x1 = 0
% x1 + y1 - z1 = 0

% x=t
% y=2*t
% z=3*t

