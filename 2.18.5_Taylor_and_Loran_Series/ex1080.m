% Expand in Laurent series in powers of z-2 function
% f(z)=z^4/(z-2)^2

clear
syms z
f(z)=z^4/(z-2)^2
syms z1
f1(z1)=subs(f,z,z1+2)
% (z1 + 2)^4/z1^2
f1(z1)=expand(f1)
% 8*z1 + 32/z1 + 16/z1^2 + z1^2 + 24
f(z)=subs(f1,z1,z-2)
% 8*(z-2) + 32/(z - 2) + 16/(z - 2)^2 + (z - 2)^2 + 24

% the deduction of this function relative to the pole z=2 
% is the coefficient at (z-2)^(-1), i.e. 32
