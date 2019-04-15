clear
syms t p 
syms x(t) y(t) X Y
eq11=diff(x,t)+2*x+2*y-10*exp(2*t)
eq12=diff(y,t)-2*x+y-7*exp(2*t)
x0=1
y0=3

cond=([x(0)==x0,y(0)==y0])
[x2 y2]=dsolve([eq11 eq12],cond)
x2=simplify(x2)
y2=simplify(y2)
% x2 =
% exp(2*t)
% y2 =
% 3*exp(2*t)

[x3 y3]=opercalcsys(eq11,eq12,x0,y0)
% x3 =
% exp(2*t)
% y3 =
% 3*exp(2*t)
