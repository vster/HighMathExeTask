clear
syms t p
syms x(t) X
eq1=diff(x,t)-2*x
x0=1 
dx0=0
d2x0=0

eq2=laplace(eq1,t,p)
% p*laplace(x(t), t, p) - x(0) - 2*laplace(x(t), t, p)
eq3=subs(eq2,[laplace(x(t),t,p) x(0) subs(diff(x(t), t), t, 0)],[X x0 dx0])
% X*p - 2*X - 1
X=solve(eq3==0,X)
% 1/(p - 2)
x1=ilaplace(X,p,t)
% exp(2*t)

x2=opercalc(eq1,x0,dx0,d2x0)
% exp(2*t)

cond=([x(0)==x0])
x3=dsolve(eq1,cond)
% exp(2*t)

adx0=[1 0 0]
x4=opercalc2(eq1,adx0)
% exp(2*t)