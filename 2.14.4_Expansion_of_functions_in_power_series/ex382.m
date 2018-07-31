% Expand in a power series x function f(x)=2^x

clear
syms x n;
f(x)=2^x

x0=0;
f0=subs(f,x,x0);
term(1)=f0;
ts=term(1);
disp([0 f f0 term(1) ts])
for n=1:5
    df(n)=diff(f,x,n);
    df0(n)=subs(df(n),x,x0);
    term(n+1)=df0(n)/factorial(n)*(x-x0)^n;
    ts=ts+term(n+1);
    disp([n df(n) df0(n) term(n+1) ts]);
end
df
% [ 2^x*log(2), 2^x*log(2)^2, 2^x*log(2)^3, 2^x*log(2)^4, 2^x*log(2)^5]
df0
% [ log(2), log(2)^2, log(2)^3, log(2)^4, log(2)^5]
term
% [ 1, x*log(2), (x^2*log(2)^2)/2, (x^3*log(2)^3)/6, (x^4*log(2)^4)/24, (x^5*log(2)^5)/120]
ts
% (log(2)^5*x^5)/120 + (log(2)^4*x^4)/24 + (log(2)^3*x^3)/6 + (log(2)^2*x^2)/2 + log(2)*x + 1

ts1(x)=taylor(f(x))
% (log(2)^5*x^5)/120 + (log(2)^4*x^4)/24 + (log(2)^3*x^3)/6 + (log(2)^2*x^2)/2 + log(2)*x + 1

n=6
term2=taylorterm(f,x0,n)

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

function term=taylorterm(f,x0,N)
syms x;
f0=subs(f,x,x0);
i=0;
if (f0~=0)
    i=1;
    term(i)=f0;
end
for n=1:N-1
    df(n)=diff(f,x,n);
    df0(n)=subs(df(n),x,x0);
    if (df0(n)~=0)
        i=i+1;
        term(i)=df0(n)/factorial(n)*(x-x0)^n;       
    end
end
end
