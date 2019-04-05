clear
syms t p
syms x(t) X
eq1=diff(x,t,2)+diff(x,t)-t*cos(t)
x0=0
dx0=0
d2x0=0

eq2=laplace(eq1,t,p)
% p*laplace(x(t), t, p) - x(0) - p*x(0) + p^2*laplace(x(t), t, p) - subs(diff(x(t), t), t, 0) + 1/(p^2 + 1) - (2*p^2)/(p^2 + 1)^2
eq3=subs(eq2,[laplace(x(t),t,p) x(0) subs(diff(x(t), t), t, 0)],[X x0 dx0])
% X*p + X*p^2 + 1/(p^2 + 1) - (2*p^2)/(p^2 + 1)^2
X=solve(eq3==0,X)
% (p - 1)/(p^5 + 2*p^3 + p)
x1=ilaplace(X,p,t)
% cos(t) + sin(t)/2 - (t*cos(t))/2 + (t*sin(t))/2 - 1

x2=opercalc(eq1,x0,dx0,d2x0)
% cos(t) + sin(t)/2 - (t*cos(t))/2 + (t*sin(t))/2 - 1

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0])
x3=dsolve(eq1,cond)
% cos(t) + sin(t)/2 - (t*cos(t))/2 + (t*sin(t))/2 - 1