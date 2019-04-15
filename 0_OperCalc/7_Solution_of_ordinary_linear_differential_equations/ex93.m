clear
syms t p
syms x(t) X
syms alfa beta
eq1=4*diff(x,t,3)-8*diff(x,t,2)-diff(x,t)-3*x+8*exp(t)
x0=1
dx0=1
d2x0=1

eq2=laplace(eq1,t,p)
% x(0) - p*laplace(x(t), t, p) + 8/(p - 1) + 8*p*x(0) - 4*p*subs(diff(x(t), t), t, 0) - 8*p^2*laplace(x(t), t, p) + 4*p^3*laplace(x(t), t, p) + 8*subs(diff(x(t), t), t, 0) - 4*p^2*x(0) - 4*subs(diff(x(t), t, t), t, 0) - 3*laplace(x(t), t, p)
eq3=subs(eq2,[laplace(x(t),t,p) x(0) subs(diff(x(t), t), t, 0)...
    subs(diff(x(t),t,t), t, 0)],[X x0 dx0 d2x0])
% 4*p - 3*X - X*p + 8/(p - 1) - 8*X*p^2 + 4*X*p^3 - 4*p^2 + 5
X=solve(eq3==0,X)
% 1/(p - 1)
x1=ilaplace(X,p,t)
% exp(t)

x2=opercalc(eq1,x0,dx0,d2x0)
% exp(t)

adx0=[1 1 1]
x4=opercalc2(eq1,adx0)
% exp(t)
