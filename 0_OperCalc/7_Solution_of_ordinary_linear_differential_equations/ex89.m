clear
syms t p
syms x(t) X
syms alfa beta
eq1=diff(x,t,2)-2*alfa*diff(x,t)+(alfa^2+beta^2)*x
x0=0
dx0=1
d2x0=0

eq2=laplace(eq1,t,p)
% p^2*laplace(x(t), t, p) - p*x(0) + (alfa^2 + beta^2)*laplace(x(t), t, p) - subs(diff(x(t), t), t, 0) + 2*alfa*(x(0) - p*laplace(x(t), t, p))
eq3=subs(eq2,[laplace(x(t),t,p) x(0) subs(diff(x(t), t), t, 0)],[X x0 dx0])
% X*p^2 + X*(alfa^2 + beta^2) - 2*X*alfa*p - 1
X=solve(eq3==0,X)
% 1/(alfa^2 - 2*alfa*p + beta^2 + p^2)
x1=ilaplace(X,p,t)
% (exp(alfa*t)*sin(beta*t))/beta

x2=opercalc(eq1,x0,dx0,d2x0)
% (exp(alfa*t)*sin(beta*t))/beta

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0])
x3=dsolve(eq1,cond)
% (exp(alfa*t)*sin(beta*t))/beta

adx0=[0 1 0]
x4=opercalc2(eq1,adx0)
% (exp(alfa*t)*sin(beta*t))/beta