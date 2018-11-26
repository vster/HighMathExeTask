% d2u/dt2=d2u/dx2
% t=pi
% u(t=0)=sin(x)
% du/dt(t=0)=cos(x)

% u=(phi(x-a*t)+phi(x+a*t))/2+1/(2*a)*int(x-a*t:x+a*t)psi(z)dz

% a=1
syms t x z
t1=pi
u=(sin(x-t)+sin(x+t))/2+1/2*int(cos(z),z,x-t,x+t)
% sin(t + x)/2 - sin(t - x)/2 + cos(x)*sin(t)
u=simplify(u)
% sin(t + x)
u1=subs(u,t,t1)
% -sin(x)