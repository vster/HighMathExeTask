clear
digits(3)
syms x
y1(x)=x*exp(-x)
y2=0
C=[0 2]
f(x)=y1-y2
fplot(f,C)
grid

df=diff(f)
x1=solve(df)
% ro0=max(abs(y1-y2))
ro0=max([f(C(1)) f(x1) f(C(2))])
% exp(-1)
ro0=vpa(ro0)
% 0.368
