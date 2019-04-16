clear
syms t p
syms y(t) Y
eq1=diff(y,t,2)-2*diff(y,t)-3*y-exp(3*t)
y0=0
dy0=0

eq2=laplace(eq1,t,p)
% 2*y(0) - 2*p*laplace(y(t), t, p) - 1/(p - 3) - p*y(0) + p^2*laplace(y(t), t, p) - subs(diff(y(t), t), t, 0) - 3*laplace(y(t), t, p)

eq3=subs(eq2,[laplace(y(t),t,p) y(0) subs(diff(y(t),t),t,0)],[Y y0 dy0])
% Y*p^2 - 2*Y*p - 1/(p - 3) - 3*Y

Y=solve(eq3==0,Y)
% 1/(p^3 - 5*p^2 + 3*p + 9)

y1=ilaplace(Y,p,t)
% exp(-t)/16 - exp(3*t)/16 + (t*exp(3*t))/4

y2=opercalc(eq1,y0,dy0)
% exp(-t)/16 - exp(3*t)/16 + (t*exp(3*t))/4

cond=([ y(0) == y0, subs(diff(y(t), t), t, 0) == dy0])
y3=dsolve(eq1,cond)
% exp(-t)/16 - exp(3*t)/16 + (t*exp(3*t))/4

ady0=[y0 dy0]
y3=opercalc2(eq1,ady0)
% exp(-t)/16 - exp(3*t)/16 + (t*exp(3*t))/4