% d2u/dt2=du2/dx2
% u(t=0)=x^2
% du/dt(t=0)=0

% a=1, psi(x)=0

% 1)
syms a x t phi(x)
a=1
phi(x)=x^2
u=(subs(phi,x,x-a*t)+subs(phi,x,x+a*t))/2
% (t - x)^2/2 + (t + x)^2/2
u=simplify(u)
% t^2 + x^2

% 2) OperCalc
syms t x p u(x,t)
eq1=diff(u,t,2)-diff(u,x,2)
eq2=laplace(eq1,t,p)
% p^2*laplace(u(x, t), t, p) - p*u(x, 0) - subs(diff(u(x, t), t), t, 0) - laplace(diff(u(x, t), x, x), t, p)

syms U(x)
eq3=subs(eq2,[laplace(diff(u(x, t), x, x), t, p)...
      laplace(u(x, t), t, p) u(x, 0) subs(diff(u(x, t), t), t, 0)],...
      [diff(U(x),x,2) U(x) x^2 0])
% p^2*U(x) - p*x^2 - diff(U(x), x, x)

U1=dsolve(eq3)
% x^2/p + C1*exp(-p*x) + C2*exp(p*x) + 2/p^3
% C1=0, C2=0
U1=x^2/p + 2/p^3
u2=ilaplace(U2,p,t)
% t^2 + x^2