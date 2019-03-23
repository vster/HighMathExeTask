clear
format short
syms z
f(z)=(z+i)/(z-i)

[r,p,k]=residue([1 i],[1 -i])
% r =
%   0.0000 + 2.0000i
% p =
%   0.0000 + 1.0000i
% k =
%     1