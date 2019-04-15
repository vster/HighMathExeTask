clear
syms t p
syms x(t) X
eq1=diff(x,t,3)+4*diff(x,t)-1
x0=0
dx0=0
d2x0=0

eq2=laplace(eq1,t,p)
% 4*p*laplace(x(t), t, p) - 4*x(0) - p*subs(diff(x(t), t), t, 0) + p^3*laplace(x(t), t, p) - p^2*x(0) - 1/p - subs(diff(x(t), t, t), t, 0)
eq3=subs(eq2,[laplace(x(t),t,p) x(0) subs(diff(x(t), t), t, 0)...
    subs(diff(x(t),t,2), t, 0)],[X x0 dx0 d2x0])
% 4*X*p + X*p^3 - 1/p
X=solve(eq3==0,X)
% 1/(p^4 + 4*p^2)
x1=ilaplace(X,p,t)
% t/4 - sin(2*t)/8

x2=opercalc(eq1,x0,dx0,d2x0)
% t/4 - sin(2*t)/8

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0,subs(diff(x(t),t,t), t, 0)]==d2x0)
x3=dsolve(eq1,cond)
% t/4 - sin(2*t)/8

adx0=[0 0 0]
x4=opercalc2(eq1,adx0)
% t/4 - sin(2*t)/8