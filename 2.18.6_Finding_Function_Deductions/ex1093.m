clear
syms z
f(z)=1/(1-cos(z))

lim0=limit(z^2/(1-cos(z)),z,0)
% 2

res0=limit(diff(z^2*f(z),z),z,0)
% 0