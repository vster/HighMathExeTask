clear
syms t p
syms x(t) X
eq1=diff(x,t,2)+diff(x,t)-2*x-exp(t)
x0=-1
dx0=0
d2x0=0

eq2=laplace(eq1,t,p)
% p*laplace(x(t), t, p) - x(0) - 1/(p - 1) - p*x(0) + p^2*laplace(x(t), t, p) - subs(diff(x(t), t), t, 0) - 2*laplace(x(t), t, p)
eq3=subs(eq2,[laplace(x(t),t,p) x(0) subs(diff(x(t), t), t, 0)],[X x0 dx0])
% p - 2*X + X*p - 1/(p - 1) + X*p^2 + 1
X=solve(eq3==0,X)
% -(p^2 - 2)/(p^3 - 3*p + 2)
x1=ilaplace(X,p,t)
% (t*exp(t))/3 - (7*exp(t))/9 - (2*exp(-2*t))/9

x2=opercalc(eq1,x0,dx0,d2x0)
% (t*exp(t))/3 - (7*exp(t))/9 - (2*exp(-2*t))/9

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0])
x3=dsolve(eq1,cond)
% (t*exp(t))/3 - (7*exp(t))/9 - (2*exp(-2*t))/9

adx0=[-1 0 0]
x4=opercalc2(eq1,adx0)
% (t*exp(t))/3 - (7*exp(t))/9 - (2*exp(-2*t))/9
