clear
syms z
f(z)=z^2/(z-2)^3

% res(2)f(z)=
res2=1/factorial(2)*limit(diff(f(z)*(z-2)^3,z,2),z,2)
% 1

f(z)=z^2/expand((z-2)^3)
% z^2/(z^3 - 6*z^2 + 12*z - 8)
[r,p,k]=residue([1 0 0],[1 -6 12 -8])
% r =
%    1.0000
%    4.0000
%    4.0000
% p =
%    2.0000
%    2.0000
%    2.0000
% k =
%     []