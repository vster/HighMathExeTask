clear
syms t p
syms x(t) X
eq1=diff(x,t,2)-2*diff(x,t)-3*x-exp(3*t)
x0=0 
dx0=0
d2x0=0

eq2=laplace(eq1,t,p)
% 2*x(0) - 2*p*laplace(x(t), t, p) - 1/(p - 3) - p*x(0) + p^2*laplace(x(t), t, p) - subs(diff(x(t), t), t, 0) - 3*laplace(x(t), t, p)
eq3=subs(eq2,[laplace(x(t),t,p) x(0) subs(diff(x(t), t), t, 0)],[X x0 dx0])
% X*p^2 - 2*X*p - 1/(p - 3) - 3*X
X=solve(eq3==0,X)
% 1/(p^3 - 5*p^2 + 3*p + 9)
x1=ilaplace(X,p,t)
% exp(-t)/16 - exp(3*t)/16 + (t*exp(3*t))/4

x2=opercalc(eq1,x0,dx0,d2x0)
% exp(-t)/16 - exp(3*t)/16 + (t*exp(3*t))/4

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0])
x3=dsolve(eq1,cond)
% exp(-t)/16 - exp(3*t)/16 + (t*exp(3*t))/4

adx0=[0 0 0]
x4=opercalc2(eq1,adx0)
% exp(-t)/16 - exp(3*t)/16 + (t*exp(3*t))/4