clear
syms z
f(z)=1/sin(z)

res_pi1=limit((z-pi)/sin(z),z,pi)
% -1

dpsi(z)=diff(sin(z))
% cos(z)
res_pi2=1/dpsi(pi)
% -1