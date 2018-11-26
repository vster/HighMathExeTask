% d2u/dt2=4*d2u/dx2
% u(t=0)=0 
% d2u/dt2(t=0)=x

clear
syms x 
a=2
phi=0
psi=x

syms z t
u=1/a^2*int(z,z,x-a*t,x+a*t)
% t*x