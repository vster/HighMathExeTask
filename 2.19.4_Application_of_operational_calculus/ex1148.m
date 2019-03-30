clear
syms t p 
syms x(t) y(t) X Y
eq11=diff(x,t)-2*y
eq12=diff(y,t)-2*x
x0=2
y0=2

eq21=laplace(eq11,t,p)
% p*laplace(x(t), t, p) - x(0) - 2*laplace(y(t), t, p)
eq22=laplace(eq12,t,p)
% p*laplace(y(t), t, p) - y(0) - 2*laplace(x(t), t, p)

eq31=subs(eq21,[laplace(x(t),t,p) laplace(y(t),t,p) x(0)],[X,Y,x0])
% X*p - 2*Y - 2
eq32=subs(eq22,[laplace(x(t),t,p) laplace(y(t),t,p) y(0)],[X,Y,y0])
% Y*p - 2*X - 2

[X Y]=solve([eq31 eq32],[X Y])
% X =
% 2/(p - 2)
% Y =
% 2/(p - 2)

x1=ilaplace(X,p,t)
% 2*exp(2*t)
y1=ilaplace(Y,p,t)
% 2*exp(2*t)

cond=([x(0)==2,y(0)==2])
[x2 y2]=dsolve([eq11 eq12],cond)
% x2 =
% 2*exp(2*t)
% y2 =
% 2*exp(2*t)