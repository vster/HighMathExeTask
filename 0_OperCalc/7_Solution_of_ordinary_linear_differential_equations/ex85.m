clear
syms t p
syms x(t) X
eq1=diff(x,t)+x-exp(t)
x0=0 
dx0=0
d2x0=0

eq2=laplace(eq1,t,p)
% p*laplace(x(t), t, p) - x(0) - 1/(p - 1) + laplace(x(t), t, p)
eq3=subs(eq2,[laplace(x(t),t,p) x(0) subs(diff(x(t), t), t, 0)],[X x0 dx0])
% X + X*p - 1/(p - 1)
X=solve(eq3==0,X)
% 1/(p^2 - 1)
x1=ilaplace(X,p,t)
% exp(t)/2 - exp(-t)/2
% sinh(t)

x2=opercalc(eq1,x0,dx0,d2x0)
% exp(t)/2 - exp(-t)/2
% % sinh(t)

cond=([x(0)==x0])
x3=dsolve(eq1,cond)
% exp(t)/2 - exp(-t)/2
% sinh(t)