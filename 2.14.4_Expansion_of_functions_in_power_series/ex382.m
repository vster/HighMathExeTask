% Expand in a power series x function f(x)=2^x

syms x n;
f(x)=2^x

x0=0;
f0=subs(f,x,x0);
ts=f0;
for n=1:5
    df(n)=diff(f(x),x,n);
    df0(n)=subs(df(n),x,x0);
    ts=ts+df0(n)/factorial(n)*x^n;
    % ezplot(ts)
    % grid on
end
df
% [ 2^x*log(2), 2^x*log(2)^2, 2^x*log(2)^3, 2^x*log(2)^4, 2^x*log(2)^5]
df0
% [ log(2), log(2)^2, log(2)^3, log(2)^4, log(2)^5]
ts
% (log(2)^5*x^5)/120 + (log(2)^4*x^4)/24 + (log(2)^3*x^3)/6 + (log(2)^2*x^2)/2 + log(2)*x + 1

ts1(x)=taylor(f(x))
% (log(2)^5*x^5)/120 + (log(2)^4*x^4)/24 + (log(2)^3*x^3)/6 + (log(2)^2*x^2)/2 + log(2)*x + 1

