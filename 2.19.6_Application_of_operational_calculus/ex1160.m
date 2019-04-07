% du/dt=a*d2u/dx2
% u(x,0)=0 (x>0)
% u(0,t)=0
% u(h,t)=u0

clear
syms t x p u0 h
syms a real
assume(x>0)
assume(t>0)
syms u(x,t)
eq1=diff(u,t)-a*diff(u,x,2)
eq2=laplace(eq1,t,p)
% p*laplace(u(x, t), t, p) - a*laplace(diff(u(x, t), x, x), t, p) - u(x, 0)

syms U(x)
eq3=subs(eq2,[laplace(diff(u(x, t), x, x), t, p)...
      laplace(u(x, t), t, p) u(x, 0)],...
      [diff(U(x),x,2) U(x) 0])
% p*U(x) - a*diff(U(x), x, x)

cond=([U(0)==0,U(h)==u0/p])
U1=dsolve(eq3,cond)
U1=simplify(U1)
% (u0*(exp((h*(a*p)^(1/2))/a) - exp(((a*p)^(1/2)*(h + 2*x))/a)))/(p*(exp((x*(a*p)^(1/2))/a) - exp(((a*p)^(1/2)*(2*h + x))/a)))
pretty(U1)
U2=u0/p*sinh(sqrt(p/a)*x)/sinh(sqrt(p/a)*h)

u2=ilaplace(U2,p,t)
% u0*ilaplace(sinh(x*(p/a)^(1/2))/(p*sinh(h*(p/a)^(1/2))), p, t)
% ... - ?