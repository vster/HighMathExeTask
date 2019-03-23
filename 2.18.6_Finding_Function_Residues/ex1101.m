clear
syms z
f(z)=(z+1)/z^2

[r,p,k]=residue([1 1],[1 0 0])
% r =
%     1
%     1
% p =
%     0
%     0
% k =
%     []

lim0=limit(z^2*f(z),z,0)
% 1

% res(0)f(z)=
res0=limit(diff(z^2*f(z)),z,0)
% 1