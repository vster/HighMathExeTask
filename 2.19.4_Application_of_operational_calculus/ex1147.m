clear
syms t p
syms y(t) Y
eq1=diff(y,t,3)-6*diff(y,t,2)+11*diff(y)-6*y
y0=0
dy0=1
d2y0=0

eq2=laplace(eq1,t,p)
% 11*p*laplace(y(t), t, p) - 11*y(0) + 6*p*y(0) - p*subs(diff(y(t), t), t, 0) - 6*p^2*laplace(y(t), t, p) + p^3*laplace(y(t), t, p) + 6*subs(diff(y(t), t), t, 0) - p^2*y(0) - subs(diff(y(t), t, t), t, 0) - 6*laplace(y(t), t, p)

eq3=subs(eq2,[laplace(y(t),t,p) y(0) subs(diff(y(t),t))...
        subs(diff(y(t),t,2))],[Y y0 dy0 d2y0])
% 11*Y*p - p - 6*Y - 6*Y*p^2 + Y*p^3 + 6

Y=solve(eq3==0,Y)
% (p - 6)/(p^3 - 6*p^2 + 11*p - 6)

y1=ilaplace(Y,p,t)
% 4*exp(2*t) - (3*exp(3*t))/2 - (5*exp(t))/2

cond=([ y(0) == y0, subs(diff(y(t), t), t, 0) == dy0,...
       subs(diff(y(t), t, 2), t, 0) == d2y0])
y3=dsolve(eq1,cond)
% 4*exp(2*t) - (3*exp(3*t))/2 - (5*exp(t))/2
