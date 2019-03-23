clear
syms z
f=1/(z^2+4)

f=1/((z-2i)*(z+2i))

% res(2i)f(z)=
% res2i=limit((z-2i)*f,z,2i)
[r,p,k]=residue(1,[1 0 4])
% r =
%   0.0000 - 0.2500i
%   0.0000 + 0.2500i
% p =
%   0.0000 + 2.0000i
%   0.0000 - 2.0000i
% k =
%     []