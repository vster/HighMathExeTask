% d2u/dx2=1/a^2*d2u/dt2
% u(x,0)=0
% du(x,0)/dt=B*sin(n*pi*x/L)
% 0<=x<=L
% u(0,t)=u(L,t)=0

clear
syms x t p a
syms u(x,t)
eq1=diff(u,x,2)-1/a^2*diff(u,t,2)
eq2=laplace(eq1,t,p)
% (p*u(x, 0) - p^2*laplace(u(x, t), t, p) + subs(diff(u(x, t), t), t, 0))/a^2 + laplace(diff(u(x, t), x, x), t, p)

syms B L n U(x)
eq3=subs(eq2,[u(x, 0) laplace(u(x, t), t, p)... 
     subs(diff(u(x, t), t), t, 0) laplace(diff(u(x, t), x, x), t, p)],...
     [0 U(x) B*sin(n*pi*x/L) diff(U(x),x,2)])
 % (- U(x)*p^2 + B*sin((n*x*pi)/L))/a^2 + diff(U(x), x, x)
 
cond=[U(0)==0 U(L)==0]
U1=dsolve(eq3,cond)
U2=subs(U1,sin(pi*n),0)
U2=simplify(U2)
% (B*L^2*sin((pi*n*x)/L))/(L^2*p^2 + pi^2*a^2*n^2)
u2=ilaplace(U2,p,t)
% (B*L*sin((pi*a*n*t)/L)*sin((pi*n*x)/L))/(a*n*pi)