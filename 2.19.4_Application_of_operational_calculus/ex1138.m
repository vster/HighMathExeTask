clear
syms t p
syms y(t) Y
eq1=diff(y,t,2)+diff(y,t)-2*y-exp(-t)
y0=0
dy0=1

eq2=laplace(eq1,t,p)
% p*laplace(y(t), t, p) - y(0) - 1/(p + 1) - p*y(0) + p^2*laplace(y(t), t, p) - subs(diff(y(t), t), t, 0) - 2*laplace(y(t), t, p)

eq3=subs(eq2,[laplace(y(t),t,p) y(0) subs(diff(y(t),t),t,0)],[Y y0 dy0])
% Y*p - 2*Y - 1/(p + 1) + Y*p^2 - 1

Y=solve(eq3==0,Y)
% 1/(p^2 - 1)

y1=ilaplace(Y,p,t)
% exp(t)/2 - exp(-t)/2
% sinh(t)

y2=opercalc(eq1,y0,dy0)
% exp(t)/2 - exp(-t)/2

cond=([ y(0) == y0, subs(diff(y(t), t), t, 0) == dy0])
y3=dsolve(eq1,cond)

ady0=[y0 dy0]
y3=opercalc2(eq1,ady0)
% exp(t)/2 - exp(-t)/2
