clear
format short
syms z
f(z)=(z^2+1)/(z^2-1)

[r,p,k]=residue([1 0 1],[1 0 -1])
% r =
%    -1
%     1
% p =
%    -1
%     1
% k =
%     1