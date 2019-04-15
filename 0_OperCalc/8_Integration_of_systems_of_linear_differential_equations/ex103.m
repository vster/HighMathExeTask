clear
syms t p 
syms x(t) y(t) X Y
eq11=2*diff(x,t)+diff(y,t)-3*x
eq12=diff(x,t,2)+diff(y,t)-2*y-exp(2*t)
x0=0
dx0=1
y0=0

eq21=laplace(eq11,t,p)
% 2*p*laplace(x(t), t, p) - y(0) - 2*x(0) + p*laplace(y(t), t, p) - 3*laplace(x(t), t, p)
eq22=laplace(eq12,t,p)
% p*laplace(y(t), t, p) - y(0) - 1/(p - 2) - p*x(0) + p^2*laplace(x(t), t, p) - subs(diff(x(t), t), t, 0) - 2*laplace(y(t), t, p)

eq31=subs(eq21,[laplace(x(t),t,p) laplace(y(t),t,p) x(0) y(0)],[X,Y,x0,y0])
% 2*X*p - 3*X + Y*p
eq32=subs(eq22,[laplace(x(t),t,p) laplace(y(t),t,p) x(0) y(0)...
    subs(diff(x(t), t), t, 0)],[X,Y,x0,y0,dx0])
% Y*p - 2*Y - 1/(p - 2) + X*p^2 - 1

[X Y]=solve([eq31 eq32],[X Y])
% X =
% p/((p - 2)*(p^2 - p + 6))
% Y =
% -(2*p - 3)/((p - 2)*(p^2 - p + 6))

x1=ilaplace(X,p,t)
% exp(2*t)/4 - (exp(t/2)*(cos((23^(1/2)*t)/2) - (5*23^(1/2)*sin((23^(1/2)*t)/2))/23))/4
y1=ilaplace(Y,p,t)
% (exp(t/2)*(cos((23^(1/2)*t)/2) - (29*23^(1/2)*sin((23^(1/2)*t)/2))/23))/8 - exp(2*t)/8

cond=([x(0)==x0,y(0)==y0,subs(diff(x,t),t,0)==dx0])
[x2 y2]=dsolve([eq11 eq12],cond)
x2=simplify(x2)
y2=simplify(y2)
% x2 =
% exp(2*t)/4 - (cos((23^(1/2)*t)/2)*exp(t)^(1/2))/4 + (5*23^(1/2)*sin((23^(1/2)*t)/2)*exp(t)^(1/2))/92
% y2 =
% (cos((23^(1/2)*t)/2)*exp(t)^(1/2))/8 - exp(2*t)/8 - (29*23^(1/2)*sin((23^(1/2)*t)/2)*exp(t)^(1/2))/184