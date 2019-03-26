clear
syms t p tau
syms y(t) Y
eq1=int(y(tau)*exp(t-tau),tau,0,t)-(y(t)-exp(t))

eq2=laplace(eq1,t,p)
% 1/(p - 1) + laplace(y(t), t, p)/(p - 1) - laplace(y(t), t, p)

eq3=subs(eq2,laplace(y(t),t,p),Y)
% 1/(p - 1) - Y + Y/(p - 1)

Y=solve(eq3==0,Y)
% 1/(p - 2)

y=ilaplace(Y,p,t)
% exp(2*t)