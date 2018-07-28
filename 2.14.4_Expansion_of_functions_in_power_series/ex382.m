% Expand in a power series x function f(x)=2^x

clear
syms x n;
f(x)=2^x

x0=0;
ts=0
dfp=f
for n=1:6
    if n>1
        df(n)=diff(dfp,x);
    else
        df(n)=f;
    end
    df0(n)=subs(df(n),x,x0);
    term(n)=df0(n)/factorial(n-1)*(x-x0)^(n-1);
    ts=ts+term(n);
    disp([n,df,df0,term(n),ts])
    % ezplot(ts)
    % grid on
    dfp=df(n);
end
df
% [ 2^x, 2^x*log(2), 2^x*log(2)^2, 2^x*log(2)^3, 2^x*log(2)^4, 2^x*log(2)^5]
df0
% [ 1, log(2), log(2)^2, log(2)^3, log(2)^4, log(2)^5]
term
% [ 1, x*log(2), (x^2*log(2)^2)/2, (x^3*log(2)^3)/6, (x^4*log(2)^4)/24, (x^5*log(2)^5)/120]
ts
% (log(2)^5*x^5)/120 + (log(2)^4*x^4)/24 + (log(2)^3*x^3)/6 + (log(2)^2*x^2)/2 + log(2)*x + 1

ts1(x)=taylor(f(x))
% (log(2)^5*x^5)/120 + (log(2)^4*x^4)/24 + (log(2)^3*x^3)/6 + (log(2)^2*x^2)/2 + log(2)*x + 1

% New algorithm
syms x1;
f(x1)=subs(f,x,x1)
f0=subs(f(x1),x1,x0)
ts=f0
term=f
for n=1:5
    dterm=diff(term,x1);
    term=dterm*(x-x0)/n;
    term0=subs(term,x1,x0);
    ts=ts+term0;
    disp([n,dterm,term,term0,ts])
end
ts2=ts
% (log(2)^5*x^5)/120 + (log(2)^4*x^4)/24 + (log(2)^3*x^3)/6 + (log(2)^2*x^2)/2 + log(2)*x + 1