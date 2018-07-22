% Expand exp(-x^2) in a series in powers of x.

clear
syms x n;
f(x)=exp(-x^2)

x0=0;
f0=subs(f,x,x0)
% 1
ts=f0;
dfp=f;
for n=1:6
    df(n)=diff(dfp,x);
    df0(n)=subs(df(n),x,x0);
    ts=ts+df0(n)/factorial(n)*(x-x0)^n;
    % ezplot(ts,[-2 2])
    % hold on
    % grid on
    dfp=df(n);
end
df

df0
% [ 0, -2, 0, 12, 0, -120, 0]
ts
% - x^6/6 + x^4/2 - x^2 + 1

ts1=taylor(f(x),'Order',8)
% - x^6/6 + x^4/2 - x^2 + 1