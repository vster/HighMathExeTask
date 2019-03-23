clear
syms z
f(z)=z/((z-i)*(z-3))
% I=int(gamma)f(z)dz - ?
% where gamma |z|=2

f(z)=z/expand((z-i)*(z-3))
% z/(z^2 - z*(3 + 1i) + 3i)

[r,p,k]=residue([1 0],[1 -(3+1i) 3i])
% r =
%   0.9000 + 0.3000i
%   0.1000 - 0.3000i
% p =
%   3.0000 + 0.0000i
%   0.0000 + 1.0000i
% k =
% []
I=2*pi*i*(0.1000 - 0.3000i)
% 1.8850 + 0.6283i  = 2*pi/(3-1i)