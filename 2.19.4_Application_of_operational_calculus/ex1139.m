clear
syms t p
syms y(t) Y
eq1=y-(int(y,t,0,t)+1)

eq2=laplace(eq1,t,p)
% laplace(y(t), t, p) - 1/p - laplace(int(y(t), t, 0, t), t, p)

eq3=Y-1/p-Y/p

Y=solve(eq3==0,Y)
% 1/(p - 1)

y=ilaplace(Y,p,t)
% exp(t)