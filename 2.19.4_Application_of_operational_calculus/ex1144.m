clear
syms t p
syms y(t) Y
eq1=diff(y)+y-exp(t)
y0=0

eq2=laplace(eq1,t,p)
% p*laplace(y(t), t, p) - y(0) - 1/(p - 1) + laplace(y(t), t, p)

eq3=subs(eq2,[laplace(y(t),t,p) y(0) subs(diff(y(t), t), t, 0)],[Y y0 0])
% Y + Y*p - 1/(p - 1)

Y=solve(eq3==0,Y)
% 1/(p^2 - 1)

y1=ilaplace(Y,p,t)
% exp(t)/2 - exp(-t)/2
% sinh(t)

y2=opercalc(eq1,y0,0)
% exp(t)/2 - exp(-t)/2
% sinh(t)

cond=([y(0) == y0])
y3=dsolve(eq1,cond)
% exp(t)/2 - exp(-t)/2
% sinh(t)

ady0=[y0]
y3=opercalc2(eq1,ady0)
% exp(t)/2 - exp(-t)/2
y3=rewrite(y3,'sinh')
% sinh(t)