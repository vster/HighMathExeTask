clear
syms t p 
syms x(t) y(t) X Y
eq11=diff(x,t)-(x+2*y)
eq12=diff(y,t)-(2*x+y+1)
x0=0
y0=5

eq21=laplace(eq11,t,p)
% p*laplace(x(t), t, p) - x(0) - laplace(x(t), t, p) - 2*laplace(y(t), t, p)
eq22=laplace(eq12,t,p)
% p*laplace(y(t), t, p) - y(0) - 1/p - 2*laplace(x(t), t, p) - laplace(y(t), t, p)

eq31=subs(eq21,[laplace(x(t),t,p) laplace(y(t),t,p) x(0)],[X,Y,x0])
% X*p - 2*Y - X
eq32=subs(eq22,[laplace(x(t),t,p) laplace(y(t),t,p) y(0)],[X,Y,y0])
% Y*p - Y - 2*X - 1/p - 5

[X Y]=solve([eq31 eq32],[X Y])
% X =
% -(2*(5*p + 1))/(p*(- p^2 + 2*p + 3))
% Y =
% -((5*p + 1)*(p - 1))/(p*(- p^2 + 2*p + 3))

x1=ilaplace(X,p,t)
% (8*exp(3*t))/3 - 2*exp(-t) - 2/3
y1=ilaplace(Y,p,t)
% 2*exp(-t) + (8*exp(3*t))/3 + 1/3

cond=([x(0)==x0,y(0)==y0])
[x2 y2]=dsolve([eq11 eq12],cond)
x2=simplify(x2)
y2=simplify(y2)
% x2 =
% (8*exp(3*t))/3 - 2*exp(-t) - 2/3
% y2 =
% 2*exp(-t) + (8*exp(3*t))/3 + 1/3

[x3 y3]=opercalcsys(eq11,eq12,x0,y0)
% x3 =
% (8*exp(3*t))/3 - 2*exp(-t) - 2/3
% y3 =
% 2*exp(-t) + (8*exp(3*t))/3 + 1/3

