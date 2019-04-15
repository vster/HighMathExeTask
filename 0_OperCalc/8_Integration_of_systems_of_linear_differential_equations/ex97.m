clear
syms t p 
syms x(t) y(t) X Y
syms alfa beta
eq11=diff(x,t)-alfa*x-beta*y-beta*exp(alfa*t)
eq12=diff(y,t)+beta*x-alfa*y
x0=0
y0=1

eq21=laplace(eq11,t,p)
% p*laplace(x(t), t, p) - x(0) + beta/(alfa - p) - alfa*laplace(x(t), t, p) - beta*laplace(y(t), t, p)
eq22=laplace(eq12,t,p)
% p*laplace(y(t), t, p) - y(0) + beta*laplace(x(t), t, p) - alfa*laplace(y(t), t, p)

eq31=subs(eq21,[laplace(x(t),t,p) laplace(y(t),t,p) x(0)],[X,Y,x0])
% X*p - Y*beta - X*alfa + beta/(alfa - p)
eq32=subs(eq22,[laplace(x(t),t,p) laplace(y(t),t,p) y(0)],[X,Y,y0])
% X*beta - Y*alfa + Y*p - 1

[X Y]=solve([eq31 eq32],[X Y])
% X =
% (2*beta)/(alfa^2 - 2*alfa*p + beta^2 + p^2)
% Y =
% (- alfa^2 + 2*alfa*p + beta^2 - p^2)/((alfa - p)*(alfa^2 - 2*alfa*p + beta^2 + p^2))

x1=ilaplace(X,p,t)
% 2*exp(alfa*t)*sin(beta*t)
y1=ilaplace(Y,p,t)
% - exp(alfa*t) + 2*exp(alfa*t)*cosh(beta*t*1i)

cond=([x(0)==x0,y(0)==y0])
[x2 y2]=dsolve([eq11 eq12],cond)
x2=simplify(x2)
y2=simplify(y2)
% x2 =
% exp(t*(alfa - beta*1i))*1i - exp(t*(alfa + beta*1i))*1i
% y2 =
% - exp(t*(alfa - beta*1i))*(exp(beta*t*1i)/2 - 1) - exp(t*(alfa + beta*1i))*(exp(-beta*t*1i)/2 - 1)

[x3,y3]=opercalcsys(eq11,eq12,x0,y0)
% x3 =
% 2*exp(alfa*t)*sin(beta*t)
% y3 =
% - exp(alfa*t) + 2*exp(alfa*t)*cosh(beta*t*1i)