clear
syms t p
syms y(t) Y
eq1=diff(y,t,2)+diff(y)-2*y-exp(t)
y0=-1
dy0=0

eq2=laplace(eq1,t,p)
% p*laplace(y(t), t, p) - y(0) - 1/(p - 1) - p*y(0) + p^2*laplace(y(t), t, p) - subs(diff(y(t), t), t, 0) - 2*laplace(y(t), t, p)

eq3=subs(eq2,[laplace(y(t),t,p) y(0) subs(diff(y(t), t), t, 0)],[Y y0 dy0])
% p - 2*Y + Y*p - 1/(p - 1) + Y*p^2 + 1

Y=solve(eq3==0,Y)
% -(p^2 - 2)/(p^3 - 3*p + 2)

y1=ilaplace(Y,p,t)
% (t*exp(t))/3 - (7*exp(t))/9 - (2*exp(-2*t))/9

y2=opercalc(eq1,y0,dy0)
% (t*exp(t))/3 - (7*exp(t))/9 - (2*exp(-2*t))/9

cond=([ y(0) == y0, subs(diff(y(t), t), t, 0) == dy0])
y3=dsolve(eq1,cond)
% (t*exp(t))/3 - (7*exp(t))/9 - (2*exp(-2*t))/9

ady0=[y0 dy0]
y3=opercalc2(eq1,ady0)
% (t*exp(t))/3 - (7*exp(t))/9 - (2*exp(-2*t))/9