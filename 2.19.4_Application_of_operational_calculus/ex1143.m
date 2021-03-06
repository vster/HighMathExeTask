clear
syms t p
syms y(t) Y
eq1=diff(y)-2*y
y0=1

eq2=laplace(eq1,t,p)
% p*laplace(y(t), t, p) - y(0) - 2*laplace(y(t), t, p)

eq3=subs(eq2,[laplace(y(t),t,p) y(0) subs(diff(y(t), t), t, 0)],[Y y0 0])
% Y*p - 2*Y - 1

Y=solve(eq3==0,Y)
% 1/(p - 2)

y1=ilaplace(Y,p,t)
% exp(2*t)

y2=opercalc(eq1,y0,0)
% exp(2*t)

cond=([y(0) == y0])
y3=dsolve(eq1,cond)
% exp(2*t)

ady0=[y0]
y3=opercalc2(eq1,ady0)
% exp(2*t)