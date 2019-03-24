clear
syms t p tau
syms y(t) Y
eq1=int(y(tau)*sin(t-tau),tau,0,t)-1+cos(t)

eq2=laplace(eq1,t,p)
% laplace(y(t), t, p)/(p^2 + 1) + p/(p^2 + 1) - 1/p

eq3=subs(eq2,laplace(y(t),t,p),Y)
% Y/(p^2 + 1) + p/(p^2 + 1) - 1/p

Y=solve(eq3==0,Y)
% 1/p

y=ilaplace(Y,p,t)
% 1