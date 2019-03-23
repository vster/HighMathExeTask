clear
syms z
f(z)=(z+1)/((z-1)*(z-2)*(z-3))
% find int(gamma)f(z)dz

res1=limit(f(z)*(z-1),z,1)
% 1
res2=limit(f(z)*(z-2),z,2)
% -3
res3=limit(f(z)*(z-3),z,3)
% 2
I=2*pi*i*(res1+res2+res3)
% 0