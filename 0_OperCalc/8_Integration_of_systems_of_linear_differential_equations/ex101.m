clear
syms t p 
syms x(t) y(t) X Y
eq11=diff(x,t)+y
eq12=diff(y,t)-2*x-2*y
x0=1
y0=1

cond=([x(0)==x0,y(0)==y0])
[x2 y2]=dsolve([eq11 eq12],cond)
x2=simplify(x2)
y2=simplify(y2)
% x2 =
% exp(t)*(cos(t) - 2*sin(t))
% y2 =
% exp(t)*(cos(t) + 3*sin(t))

[x3 y3]=opercalcsys(eq11,eq12,x0,y0)
% x3 =
% exp(t)*(cos(t) - 2*sin(t))
% y3 =
% exp(t)*(cos(t) + 3*sin(t))