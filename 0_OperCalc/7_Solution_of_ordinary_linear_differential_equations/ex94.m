clear
syms t p
syms x(t) X
eq1=diff(x,t,4)+diff(x,t,3)-cos(t)
x0=0
dx0=0
d2x0=0
d3x0=2

eq2=laplace(eq1,t,p)
% p^3*laplace(x(t), t, p) - p/(p^2 + 1) - subs(diff(x(t), t, t, t), t, 0) - p*subs(diff(x(t), t), t, 0) + p^4*laplace(x(t), t, p) - p^2*x(0) - p^3*x(0) - p^2*subs(diff(x(t), t), t, 0) - p*subs(diff(x(t), t, t), t, 0) - subs(diff(x(t), t, t), t, 0)
eq3=subs(eq2,[laplace(x(t),t,p) x(0) subs(diff(x(t), t), t, 0)...
    subs(diff(x(t),t,t), t, 0) subs(diff(x(t),t,t,t), t, 0)],...
    [X x0 dx0 d2x0 d3x0])
% X*p^3 - p/(p^2 + 1) + X*p^4 - 2
X=solve(eq3==0,X)
% (p/(p^2 + 1) + 2)/(p^4 + p^3)
x1=ilaplace(X,p,t)
% cos(t)/2 - (3*exp(-t))/2 - t - sin(t)/2 + t^2 + 1

adx0=[0 0 0 2]
x2=opercalc2(eq1,adx0)