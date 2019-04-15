clear
syms t p
syms x(t) X
syms alfa beta
eq1=diff(x,t,2)+4*x-cos(3*t)
x0=2
dx0=2
d2x0=0

eq2=laplace(eq1,t,p)
% p^2*laplace(x(t), t, p) - p/(p^2 + 9) - p*x(0) - subs(diff(x(t), t), t, 0) + 4*laplace(x(t), t, p)
eq3=subs(eq2,[laplace(x(t),t,p) x(0) subs(diff(x(t), t), t, 0)...
    subs(diff(x(t),t,t), t, 0)],[X x0 dx0 0])
% 4*X - 2*p - p/(p^2 + 9) + X*p^2 - 2
X=solve(eq3==0,X)
% (2*p + p/(p^2 + 9) + 2)/(p^2 + 4)
x1=ilaplace(X,p,t)
% (11*cos(2*t))/5 - cos(3*t)/5 + sin(2*t)

x2=opercalc(eq1,x0,dx0,d2x0)
% (11*cos(2*t))/5 - cos(3*t)/5 + sin(2*t)

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0])
x3=dsolve(eq1,cond)
x3=simplify(x3)
% (11*cos(2*t))/5 - cos(3*t)/5 + sin(2*t)

adx0=[2 2 0]
x4=opercalc2(eq1,adx0)
% (11*cos(2*t))/5 - cos(3*t)/5 + sin(2*t)
