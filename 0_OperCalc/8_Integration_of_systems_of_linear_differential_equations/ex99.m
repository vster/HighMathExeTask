clear
syms t p 
syms x(t) y(t) X Y
eq11=diff(x,t)-2*y
eq12=diff(y,t)-2*x
x0=2
y0=2

cond=([x(0)==x0,y(0)==y0])
[x2 y2]=dsolve([eq11 eq12],cond)
x2=simplify(x2)
y2=simplify(y2)
% x2 =
% 2*exp(2*t)
% y2 =
% 2*exp(2*t)

[x3 y3]=opercalcsys(eq11,eq12,x0,y0)
% x3 =
% 2*exp(2*t)
% y3 =
% 2*exp(2*t)
