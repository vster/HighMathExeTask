clear
digits(3)
syms x
y1(x)=x
y2(x)=log(x)
e=exp(1)
C=[1/e e]
f(x)=y1-y2
fplot(f,C)
grid

df(x)=diff(f)
% 1 - 1/x
fplot(df,C)
grid

x1=solve(df)
fm=vpa(max([f(C(1)) f(x1) f(C(2))]))
% 1.72

d2f(x)=diff(f,2)
% 1/x^2
dfm=vpa(max([df(C(1)) df(C(2))]))
% 0.632

ro1=fm+dfm
% 2.35