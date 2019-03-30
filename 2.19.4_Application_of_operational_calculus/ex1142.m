clear
syms t p 
syms x(t) y(t) X Y
eq1=diff(x,t)-(x+2*y)
eq2=diff(y,t)-(2*x+y+1)
x0=0
y0=5

eq3=laplace(eq1,t,p)
% p*laplace(x(t), t, p) - x(0) - laplace(x(t), t, p) - 2*laplace(y(t), t, p)
eq4=laplace(eq2,t,p)
% p*laplace(y(t), t, p) - y(0) - 1/p - 2*laplace(x(t), t, p) - laplace(y(t), t, p)

eq5=subs(eq3,[laplace(x(t),t,p) laplace(y(t),t,p) x(0)],[X,Y,x0])
% X*p - 2*Y - X
eq6=subs(eq4,[laplace(x(t),t,p) laplace(y(t),t,p) y(0)],[X,Y,y0])
% Y*p - Y - 2*X - 1/p - 5

[X Y]=solve([eq5 eq6],[X Y])
% X =
% -(2*(5*p + 1))/(p*(- p^2 + 2*p + 3))
% Y =
% -((5*p + 1)*(p - 1))/(p*(- p^2 + 2*p + 3))

x1=ilaplace(X,p,t)
% (8*exp(3*t))/3 - 2*exp(-t) - 2/3
y1=ilaplace(Y,p,t)
% 2*exp(-t) + (8*exp(3*t))/3 + 1/3
