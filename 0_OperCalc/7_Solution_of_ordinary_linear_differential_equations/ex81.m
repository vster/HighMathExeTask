clear
syms t p
syms x(t) X
eq1=diff(x,t,2)-4*diff(x,t)+5*x
x0=0
dx0=1

eq2=laplace(eq1,t,p)
% 4*x(0) - 4*p*laplace(x(t), t, p) - p*x(0) + p^2*laplace(x(t), t, p) - subs(diff(x(t), t), t, 0) + 5*laplace(x(t), t, p)
eq3=subs(eq2,[laplace(x(t),t,p) x(0) subs(diff(x(t), t), t, 0)],[X x0 dx0])
% X*p^2 - 4*X*p + 5*X - 1
X=solve(eq3==0,X)
% 1/(p^2 - 4*p + 5)
x1=ilaplace(X,p,t)
% exp(2*t)*sin(t)

x2=opercalc(eq1,x0,dx0)
% exp(2*t)*sin(t)

cond=([x(0)==0,subs(diff(x(t), t), t, 0)==dx0])
x3=dsolve(eq1,cond)
% exp(2*t)*sin(t)