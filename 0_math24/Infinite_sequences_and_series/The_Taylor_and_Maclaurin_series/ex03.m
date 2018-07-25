% Find the Maclaurin series for the function
% exp(k*x)

clear
syms x k n;
f(x)=exp(k*x)

x0=0;
f0=subs(f,x,x0);
ts=f0;
dfp=f;
for n=1:5
    df(n)=diff(dfp,x);
    df0(n)=subs(df(n),x,x0);
    ts=ts+df0(n)/factorial(n)*(x-x0)^n;
    % fplot(ts, [-pi pi])
    % hold on
    % grid on
    dfp=df(n);
end
% hold off
df
% [ k*exp(k*x), k^2*exp(k*x), k^3*exp(k*x), k^4*exp(k*x), k^5*exp(k*x)]
df0
% [ k, k^2, k^3, k^4, k^5]
ts
% (k^5*x^5)/120 + (k^4*x^4)/24 + (k^3*x^3)/6 + (k^2*x^2)/2 + k*x + 1
% sum (n=0:inf) (k^n*x^n)/factorial(n)

ts1(x)=taylor(f(x),'Order',6)
% (k^5*x^5)/120 + (k^4*x^4)/24 + (k^3*x^3)/6 + (k^2*x^2)/2 + k*x + 1

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
end
ts2=ts
% (k^5*x^5)/120 + (k^4*x^4)/24 + (k^3*x^3)/6 + (k^2*x^2)/2 + k*x + 1