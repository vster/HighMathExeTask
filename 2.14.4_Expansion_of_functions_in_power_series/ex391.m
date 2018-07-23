% Expand in series in powers of x the following function.

clear
syms x n;
f(x)=exp(-2*x)

x0=0;
f0=subs(f,x,x0)
% 1
ts=f0;
for n=1:5
    df(n)=diff(f(x),x,n);
    df0(n)=subs(df(n),x,x0);
    ts=ts+df0(n)/factorial(n)*(x-x0)^n;
    % ezplot(ts,[-1 1])
    % hold on
    % grid on
end
% hold off
df
% [ -2*exp(-2*x), 4*exp(-2*x), -8*exp(-2*x), 16*exp(-2*x), -32*exp(-2*x)]
df0
% [ -2, 4, -8, 16, -32]
ts
% - (4*x^5)/15 + (2*x^4)/3 - (4*x^3)/3 + 2*x^2 - 2*x + 1

ts1=taylor(f(x),'Order',6)
% - (4*x^5)/15 + (2*x^4)/3 - (4*x^3)/3 + 2*x^2 - 2*x + 1

% New algorithm
syms x1;
f(x1)=subs(f,x,x1)
f0=subs(f(x1),x1,x0)
ts=f0
term=f
for n=1:5
    dterm=diff(term,x1)
    term=dterm*(x-x0)/n
    term0=subs(term,x1,x0)
    ts=ts+term0
end
ts2=ts
% - (4*x^5)/15 + (2*x^4)/3 - (4*x^3)/3 + 2*x^2 - 2*x + 1
