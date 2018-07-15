% Expand in a power series x function 
% f(x)=sin(x)^2

syms x n;
f(x)=sin(x)^2

x0=0;
f0=subs(f,x,x0)
% 0
ts=f0;
for n=1:7
    df(n)=diff(f(x),x,n);
    df0(n)=subs(df(n),x,x0);
    ts=ts+df0(n)/factorial(n)*x^n;
    ezplot(ts,[-1 1])
    grid on
end
df
df=simplify(df)
% [ sin(2*x), 2 - 4*sin(x)^2, -4*sin(2*x), 16*sin(x)^2 - 8, 16*sin(2*x), 32 - 64*sin(x)^2, -64*sin(2*x)]
df0
% [ 0, 2, 0, -8, 0, 32, 0]
ts
% (2*x^6)/45 - x^4/3 + x^2

ts1=taylor(f(x),'Order',8)
% (2*x^6)/45 - x^4/3 + x^2