% du/dt=a^2*d2u/dx2
% u(x,0)=0
% u(0,t)=u0
% 0<x<inf,t>0

clear
syms t x p u0
syms a real
assume(x>0)
assume(t>0)
syms u(x,t)
eq1=diff(u,t)-a^2*diff(u,x,2)
eq2=laplace(eq1,t,p)
% - laplace(diff(u(x, t), x, x), t, p)*a^2 + p*laplace(u(x, t), t, p) - u(x, 0)

syms U(x)
eq3=subs(eq2,[laplace(diff(u(x, t), x, x), t, p)...
      laplace(u(x, t), t, p) u(x, 0)],...
      [diff(U(x),x,2) U(x) 0])
  % - diff(U(x), x, x)*a^2 + p*U(x)
  
U1=dsolve(eq3)
% C6*exp((p^(1/2)*x)/a) + C7*exp(-(p^(1/2)*x)/a)
% U(inf)=0 => C6=0
% U(0)=u0/p => C7=u0/p
U1=u0/p*exp(-(p^(1/2)*x)/a)
u1=ilaplace(U1,p,t)
% u0*ilaplace(exp(-(p^(1/2)*x)/a)/p, p, t)
  