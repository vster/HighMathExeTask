% d2u/dt2=du2/dx2
% u(t=0)=x^2
% du/dt(t=0)=0

% a=1, psi(x)=0

syms a x t phi(x)
a=1
phi(x)=x^2
u=(subs(phi,x,x-a*t)+subs(phi,x,x+a*t))/2
% (t - x)^2/2 + (t + x)^2/2
u=simplify(u)
% t^2 + x^2