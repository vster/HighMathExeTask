% d2u/dt2=d2u/dx2
% u(t=0)=x
% du/dt(t=0)=-x

% u=(phi(x-a*t)+phi(x+a*t))/2+1/(2*a)*int(x-a*t:x+a*t)psi(z)dz
syms x t z
phi=x
psi=-x
a=1
u=((x-a*t)+(x+a*t))/2+1/(2*a)*int(-z,z,x-a*t,x+a*t)
% x - t*x