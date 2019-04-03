% d2u/dt2=4*d2u/dx2
% u(t=0)=0 
% d2u/dt2(t=0)=x

% 1)
clear
syms x 
a=2
phi=0
psi=x

syms z t
u=1/a^2*int(z,z,x-a*t,x+a*t)
% t*x

% 2) OperCalc
syms t x p u(x,t)
eq1=diff(u,t,2)-4*diff(u,x,2)
eq2=laplace(eq1,t,p)
% p^2*laplace(u(x, t), t, p) - p*u(x, 0) - subs(diff(u(x, t), t), t, 0) - 4*laplace(diff(u(x, t), x, x), t, p)

syms U(x)
eq3=subs(eq2,[laplace(diff(u(x, t), x, x), t, p)...
      laplace(u(x, t), t, p) u(x, 0) subs(diff(u(x, t), t), t, 0)],...
      [diff(U(x),x,2) U(x) 0 x])
% U(x)*p^2 - x - 4*diff(U(x), x, x)

U1=dsolve(eq3)
% C3*exp(-(p*x)/2) + C4*exp((p*x)/2) + x/p^2
% C3=0, C4=0
U2=x/p^2
u1=ilaplace(U2,p,t)
% t*x