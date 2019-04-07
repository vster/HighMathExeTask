% d2u/dx2=1/a^2*d2u/dt2
% u(x,0)=A*cos(n*pi*x/L)
% du(x,0)/dt=0
% 0<=x<=L
% du(0,t)/dx=du(L,0)/dt=0

clear
syms x t p a
syms u(x,t)
eq1=diff(u,x,2)-1/a^2*diff(u,t,2)
eq2=laplace(eq1,t,p)
% (p*u(x, 0) - p^2*laplace(u(x, t), t, p) + subs(diff(u(x, t), t), t, 0))/a^2 + laplace(diff(u(x, t), x, x), t, p)

syms A L n U(x)
eq3=subs(eq2,[u(x, 0) laplace(u(x, t), t, p)... 
     subs(diff(u(x, t), t), t, 0) laplace(diff(u(x, t), x, x), t, p)],...
     [A*cos(n*pi*x/L) U(x) 0 diff(U(x),x,2)])
% diff(U(x), x, x) - (U(x)*p^2 - A*cos((n*x*pi)/L)*p)/a^2
 
cond=[subs(diff(U,x),x,0)==0 subs(diff(U,x),x,L)==0]
U1=dsolve(eq3,cond)
U2=subs(U1,sin(pi*n),0)
U2=simplify(U2)
% (A*L^2*p*cos((pi*n*x)/L))/(L^2*p^2 + pi^2*a^2*n^2)
u2=ilaplace(U2,p,t)
% A*cos((pi*a*n*t)/L)*cos((pi*n*x)/L)
