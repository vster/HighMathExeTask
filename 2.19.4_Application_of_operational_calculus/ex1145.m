clear
syms t p
syms y(t) Y
eq1=diff(y,t,2)-9*y
y0=0
dy0=0

eq2=laplace(eq1,t,p)
% p^2*laplace(y(t), t, p) - p*y(0) - subs(diff(y(t), t), t, 0) - 9*laplace(y(t), t, p)

eq3=subs(eq2,[laplace(y(t),t,p) y(0) subs(diff(y(t),t))],[Y y0 dy0])
% Y*p^2 - 9*Y

Y=solve(eq3==0,Y)
% 0

y1=ilaplace(Y,p,t)
% 0

y2=opercalc(eq1,y0,dy0)
% 0

cond=([ y(0) == y0, subs(diff(y(t), t), t, 0) == dy0])
y3=dsolve(eq1,cond)
% 0