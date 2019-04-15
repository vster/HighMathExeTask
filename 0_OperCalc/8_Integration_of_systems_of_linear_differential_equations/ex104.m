clear
syms t p 
syms x(t) y(t) z(t) X Y Z
eq11=diff(x,t)-(y-z)
eq12=diff(y,t)-(x+y)
eq13=diff(z,t)-(x+z)
x0=1
y0=2
z0=3

eq21=laplace(eq11,t,p)
% p*laplace(x(t), t, p) - x(0) - laplace(y(t), t, p) + laplace(z(t), t, p)
eq22=laplace(eq12,t,p)
% p*laplace(y(t), t, p) - y(0) - laplace(x(t), t, p) - laplace(y(t), t, p)
eq23=laplace(eq13,t,p)
% p*laplace(z(t), t, p) - z(0) - laplace(x(t), t, p) - laplace(z(t), t, p)

eq31=subs(eq21,[laplace(x(t),t,p) laplace(y(t),t,p) laplace(z(t),t,p)... 
    x(0) y(0) z(0)],[X,Y,Z,x0,y0,z0])
% Z - Y + X*p - 1
eq32=subs(eq22,[laplace(x(t),t,p) laplace(y(t),t,p) laplace(z(t),t,p)... 
    x(0) y(0) z(0)],[X,Y,Z,x0,y0,z0])
% Y*p - Y - X - 2
eq33=subs(eq23,[laplace(x(t),t,p) laplace(y(t),t,p) laplace(z(t),t,p)... 
    x(0) y(0) z(0)],[X,Y,Z,x0,y0,z0])
% Z*p - Z - X - 3

[X Y Z]=solve([eq31 eq32 eq33],[X Y Z])
% X =
% -(p - 2)/(- p^2 + p)
% Y =
% -(- 2*p^2 + p + 2)/(p^3 - 2*p^2 + p)
% Z =
% -(- 3*p^2 + 2*p + 2)/(p^3 - 2*p^2 + p) 

x1=ilaplace(X,p,t)
% 2 - exp(t)
y1=ilaplace(Y,p,t)
% 4*exp(t) - t*exp(t) - 2
z1=ilaplace(Z,p,t)
% 5*exp(t) - t*exp(t) - 2

cond=([x(0)==x0,y(0)==y0,z(0)==z0])
[x2 y2 z2]=dsolve([eq11 eq12 eq13],cond)
x2=simplify(x2)
y2=simplify(y2)
z2=simplify(z2)
% x2 =
% 2 - exp(t)
% y2 =
% 4*exp(t) - t*exp(t) - 2
% z2 =
% 5*exp(t) - t*exp(t) - 2
