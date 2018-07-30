% Expand in series in powers of x the following function.

clear
syms x n;
f(x)=3^x

x0=0;
f0=subs(f,x,x0)
term(1)=f0;
ts=term(1);
disp([0 f f0 term(1) ts])
for n=1:7
    df(n)=diff(f,x,n);
    df0(n)=subs(df(n),x,x0);
    term(n+1)=df0(n)/factorial(n)*(x-x0)^n;
    ts=ts+term(n+1);
    disp([n df(n) df0(n) term(n+1) ts]);
end
df
% [ 3^x*log(3), 3^x*log(3)^2, 3^x*log(3)^3, 3^x*log(3)^4, 3^x*log(3)^5]
df0
% [ log(3), log(3)^2, log(3)^3, log(3)^4, log(3)^5]
term
% [ 1, x*log(3), (x^2*log(3)^2)/2, (x^3*log(3)^3)/6, (x^4*log(3)^4)/24, (x^5*log(3)^5)/120, (x^6*log(3)^6)/720, (x^7*log(3)^7)/5040]
ts
% (log(3)^5*x^5)/120 + (log(3)^4*x^4)/24 + (log(3)^3*x^3)/6 + (log(3)^2*x^2)/2 + log(3)*x + 1

ts1=taylor(f(x),'Order',6)
% (log(3)^5*x^5)/120 + (log(3)^4*x^4)/24 + (log(3)^3*x^3)/6 + (log(3)^2*x^2)/2 + log(3)*x + 1

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
% (log(3)^5*x^5)/120 + (log(3)^4*x^4)/24 + (log(3)^3*x^3)/6 + (log(3)^2*x^2)/2 + log(3)*x + 1
