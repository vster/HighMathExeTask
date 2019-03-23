% Find int(gamma)dz/(z*(z+2)*(z+4))
% 1) |z|=1
% 2) |z|=3
% 3) |z|=5

clear
syms z
f(z)=1/(z*(z+2)*(z+4))
res0=limit(z*f(z),z,0)
% 1/8
res2=limit((z+2)*f(z),z,-2)
% -1/4
res4=limit((z+4)*f(z),z,-4)
% 1/8

% 1) |z|<1
I1=2*pi*i*res0
% (pi*1i)/4

% 2) |z|<3
I2=2*pi*i*(res0+res2)
% -(pi*1i)/4

% 3) |Z|<5
I3=2*pi*i*(res0+res2+res4)
% 0