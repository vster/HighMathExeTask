% x=0, x=L
% u(x,0)=A*sin(pi*x/L)
% du(x,0)/dt=0

clear
syms x t p a
syms u(x,t)
eq1=diff(u,x,2)-1/a^2*diff(u,t,2)
eq2=laplace(eq1,t,p)
% (p*u(x, 0) - p^2*laplace(u(x, t), t, p) + subs(diff(u(x, t), t), t, 0))/a^2 + laplace(diff(u(x, t), x, x), t, p)

syms A L U(x)
eq3=subs(eq2,[u(x, 0) laplace(u(x, t), t, p)... 
     subs(diff(u(x, t), t), t, 0) laplace(diff(u(x, t), x, x), t, p)],...
     [A*sin(pi*x/L) U(x) 0 diff(U(x),x,2)])
 % diff(U(x), x, x) - (U(x)*p^2 - A*sin((x*pi)/L)*p)/a^2
 
 cond=([U(0)==0 U(L)==0])
 U1=dsolve(eq3,cond)
 U1=simplify(U1)
 % (A*L^2*p*sin((pi*x)/L))/(L^2*p^2 + pi^2*a^2)
 u1=ilaplace(U1,p,t)
 % A*sin((pi*x)/L)*cos((pi*a*t)/L)