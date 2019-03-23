clear
syms z
f(z)=z/((z-1)*(z-3))

% res(1)f(z)=
res1=limit((z-1)*f(z),z,1)
% -1/2

% res(3)f(z)=
res3=limit((z-3)*f(z),z,3)
% 3/2