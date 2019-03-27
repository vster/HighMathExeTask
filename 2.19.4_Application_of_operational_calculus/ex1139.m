clear
syms t p tau
syms y(t) Y
eq1=y-(int(y(tau),tau,0,t)+1)

eq2=laplace(eq1,t,p)
% laplace(y(t), t, p) - 1/p - laplace(y(t), t, p)/p

eq3=Y-1/p-Y/p

Y=solve(eq3==0,Y)
% 1/(p - 1)

y=ilaplace(Y,p,t)
% exp(t)

y2=opercalc(eq1,0,0)
% exp(t)