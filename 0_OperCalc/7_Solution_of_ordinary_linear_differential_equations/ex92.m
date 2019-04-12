clear
syms t p
syms x(t) X
syms alfa beta
eq1=diff(x,t,3)+diff(x,t)-exp(2*t)
x0=0
dx0=0
d2x0=0

eq2=laplace(eq1,t,p)
% p*laplace(x(t), t, p) - x(0) - 1/(p - 2) - p*subs(diff(x(t), t), t, 0) + p^3*laplace(x(t), t, p) - p^2*x(0) - subs(diff(x(t), t, t), t, 0)
eq3=subs(eq2,[laplace(x(t),t,p) x(0) subs(diff(x(t), t), t, 0)...
    subs(diff(x(t),t,t), t, 0)],[X x0 dx0 d2x0])
% X*p - 1/(p - 2) + X*p^3
X=solve(eq3==0,X)
% 1/((p^3 + p)*(p - 2))
x1=ilaplace(X,p,t)
% exp(2*t)/10 + (2*cos(t))/5 - sin(t)/5 - 1/2

x2=opercalc(eq1,x0,dx0,d2x0)
% exp(2*t)/10 + (2*cos(t))/5 - sin(t)/5 - 1/2

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0,subs(diff(x(t),t,t), t, 0)==d2x0])
x3=dsolve(eq1,cond)
x3=simplify(x3)
% exp(2*t)/10 + (2*cos(t))/5 - sin(t)/5 - 1/2
