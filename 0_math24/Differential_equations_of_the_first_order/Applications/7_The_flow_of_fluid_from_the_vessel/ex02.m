% Investigate the outflow of fluid from a thin tube of radius R and 
% height H, assuming the tube is completely filled with fluid.

% S(z)*dz/dt=q(z)

% S(z)=S=pi*R^2
% q(z)=-k*z

% pi*R^2*dz/dt=-k*z
% dz/z=-(k/(pi*R^2))*dt
syms z k pi R t h
assume(H>0)
assume(h>0)
eq1=int(1/z,z,H,h)+int((k/(pi*R^2)),t,0,t)
% log(h) - log(H) + (k*t)/(R^2*pi)
% t=(pi*R^2/k)*log(H/h)