clear
syms t p 
syms x(t) y(t) X Y
eq11=diff(x,t)-(3*x+4*y)
eq12=diff(y,t)-(4*x-3*y)
x0=1
y0=1

eq21=laplace(eq11,t,p)
% p*laplace(x(t), t, p) - x(0) - 3*laplace(x(t), t, p) - 4*laplace(y(t), t, p)
eq22=laplace(eq12,t,p)
% p*laplace(y(t), t, p) - y(0) - 4*laplace(x(t), t, p) + 3*laplace(y(t), t, p)

eq31=subs(eq21,[laplace(x(t),t,p) laplace(y(t),t,p) x(0)],[X,Y,x0])
% X*p - 4*Y - 3*X - 1
eq32=subs(eq22,[laplace(x(t),t,p) laplace(y(t),t,p) y(0)],[X,Y,y0])
% 3*Y - 4*X + Y*p - 1

[X Y]=solve([eq31 eq32],[X Y])
% X =
% (p + 7)/(p^2 - 25)
% Y =
% (p + 1)/(p^2 - 25)

x1=ilaplace(X,p,t)
% (6*exp(5*t))/5 - exp(-5*t)/5
y1=ilaplace(Y,p,t)
% (2*exp(-5*t))/5 + (3*exp(5*t))/5

cond=([x(0)==x0,y(0)==y0])
[x2 y2]=dsolve([eq11 eq12],cond)
% x2 =
% (6*exp(5*t))/5 - exp(-5*t)/5
% y2 =
% (2*exp(-5*t))/5 + (3*exp(5*t))/5

[x3 y3]=opercalcsys(eq11,eq12,x0,y0)
% x3 =
% (6*exp(5*t))/5 - exp(-5*t)/5
% y3 =
% (2*exp(-5*t))/5 + (3*exp(5*t))/5