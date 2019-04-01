% d2u/dx2=alfa^2*du/dt
% u(x,0)=A*sin(n*pi*x/L)
% 0<=x<=L
% u(0,t)=u(L,t)=0

clear
syms t x p u0
syms alfa real
assume(x>0)
assume(t>0)
syms u(x,t)
eq1=diff(u,x,2)-alfa^2*diff(u,t)
eq2=laplace(eq1,t,p)
% (u(x, 0) - p*laplace(u(x, t), t, p))*alfa^2 + laplace(diff(u(x, t), x, x), t, p)

syms U(x)
syms A n L
eq3=subs(eq2,[laplace(diff(u(x, t), x, x), t, p)...
      laplace(u(x, t), t, p) u(x, 0)],...
      [diff(U(x),x,2) U(x) A*sin(n*pi*x/L)])
% (A*sin((n*x*pi)/L) - p*U(x))*alfa^2 + diff(U(x), x, x)

cond=([U(0)==0,U(L)==0])
U1=dsolve(eq3,cond)
U1=subs(U1,sin(pi*n),0)
U1=simplify(U1)
% (A*L^2*alfa^2*sin((pi*n*x)/L))/(p*L^2*alfa^2 + pi^2*n^2)
pretty(U1)

u1=ilaplace(U1,p,t)
% A*exp(-(n^2*t*pi^2)/(L^2*alfa^2))*sin((pi*n*x)/L)
pretty(u1)