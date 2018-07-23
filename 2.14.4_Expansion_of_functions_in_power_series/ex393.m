% Expand in series in powers of x the following function.

clear
syms x n;
f(x)= sinh(x)^2

x0=0;
f0=subs(f,x,x0)
% 0
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
% [ 2*cosh(x)*sinh(x), 2*cosh(x)^2 + 2*sinh(x)^2, 8*cosh(x)*sinh(x), 8*cosh(x)^2 + 8*sinh(x)^2, 32*cosh(x)*sinh(x)]
df0
% [ 0, 2, 0, 8, 0]
ts
% x^4/3 + x^2

ts1=taylor(f(x),'Order',6)
% x^4/3 + x^2

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
% x^4/3 + x^2
