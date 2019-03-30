clear
syms t p tau
syms y(t) Y
eq1=int(y(tau)*cos(t-tau),tau,0,t)-(1-cos(t))

eq2=laplace(eq1,t,p)
% p/(p^2 + 1) - 1/p + (p*laplace(y(t), t, p))/(p^2 + 1)

eq3=subs(eq2,laplace(y(t),t,p),Y)
% p/(p^2 + 1) - 1/p + (Y*p)/(p^2 + 1)

Y=solve(eq3==0,Y)
% 1/p^2

y1=ilaplace(Y,p,t)
% t

y2=opercalc(eq1,0,0)
% t
