% d2u/dt2=a^2*d2u/dx2
% u(t=0)=0 
% du/dt(t=0)=cos(x)

% u=(phi(x-a*t)+phi(x+a*t))/2+1/(2*a)*int(x-a*t:x+a*t)psi(z)dz
syms a x t
phi=0
psi=cos(x)

syms z
u=1/(2*a)*int(cos(z),z,x-a*t,x+a*t)
% (sin(a*t)*cos(x))/a
