clear
syms t p tau
syms y(t) Y
eq1=int(y(tau)*(t-tau)^2,tau,0,t)-1/3*t^3

eq2=laplace(eq1,t,p)
% (2*laplace(y(t), t, p))/p^3 - 2/p^4

eq3=subs(eq2,laplace(y(t),t,p),Y)
% (2*Y)/p^3 - 2/p^4

Y=solve(eq3==0,Y)
% 1/p

y1=ilaplace(Y,p,t)
% 1

y2=opercalc(eq1,0,0)
% 1

ady0=[0 0]
y3=opercalc2(eq1,ady0)
% 1