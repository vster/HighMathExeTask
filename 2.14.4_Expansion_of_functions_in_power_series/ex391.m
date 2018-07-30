% Expand in series in powers of x the following function.

clear
syms x n;
f(x)=exp(-2*x)

x0=0;
f0=subs(f,x,x0)
% 1
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
    dterm=diff(term,x1);
    term=dterm*(x-x0)/n;
    term0=subs(term,x1,x0);
    ts=ts+term0;
    disp([dterm term term0 ts])
end
ts2=ts
% - (4*x^5)/15 + (2*x^4)/3 - (4*x^3)/3 + 2*x^2 - 2*x + 1
