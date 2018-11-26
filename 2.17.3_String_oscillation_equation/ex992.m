% d2u/dt2=a^2*d2u/dx2
% t=pi/(2*a)
% u(t=0)=sin(x)
% du/dt(t=0)=1

clear
syms a t x
t1=pi/(2*a)
% phi=sin(x)
% psi=1
syms z
u=(sin(x+a*t)+sin(x-a*t))/2+1/(2*a)*int(1,z,x-a*t,x+a*t)
% t + sin(x + a*t)/2 + sin(x - a*t)/2
u1=simplify(subs(u,t,t1))
% pi/(2*a)