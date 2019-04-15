clear
syms t p 
syms x(t) y(t) X Y
eq11=diff(x,t)-(3*x+4*y)
eq12=diff(y,t)-(4*x-3*y)
x0=1
y0=1

cond=([x(0)==x0,y(0)==y0])
[x2 y2]=dsolve([eq11 eq12],cond)
x2=simplify(x2)
y2=simplify(y2)
% x2 =
% (exp(-5*t)*(6*exp(10*t) - 1))/5
% y2 =
% (exp(-5*t)*(3*exp(10*t) + 2))/5

[x3 y3]=opercalcsys(eq11,eq12,x0,y0)
% x3 =
% (6*exp(5*t))/5 - exp(-5*t)/5
% y3 =
% (2*exp(-5*t))/5 + (3*exp(5*t))/5