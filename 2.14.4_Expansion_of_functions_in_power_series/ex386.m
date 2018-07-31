% Expand 1/x in a series in powers of x-2.

clear
syms x n;
f(x)=1/x

x0=2;
f0=subs(f,x,x0);
% 1/2
term(1)=f0;
ts=term(1);
disp([0 f f0 term(1) ts])
for n=1:6
    df(n)=diff(f,x,n);
    df0(n)=subs(df(n),x,x0);
    term(n+1)=df0(n)/factorial(n)*(x-x0)^n;
    ts=ts+term(n+1);
    disp([n df(n) df0(n) term(n+1) ts]);
end
df
% [ -1/x^2, 2/x^3, -6/x^4, 24/x^5, -120/x^6, 720/x^7]
df0
% [ -1/4, 1/4, -3/8, 3/4, -15/8, 45/8]
term
% [ 1/2, 1/2 - x/4, (x - 2)^2/8, -(x - 2)^3/16, (x - 2)^4/32, -(x - 2)^5/64, (x - 2)^6/128]
ts
% (x - 2)^2/8 - x/4 - (x - 2)^3/16 + (x - 2)^4/32 - (x - 2)^5/64 + (x - 2)^6/128 + 1

ts1=taylor(f(x),'ExpansionPoint', 2)
% (x - 2)^2/8 - x/4 - (x - 2)^3/16 + (x - 2)^4/32 - (x - 2)^5/64 + 1

n=6
term2=taylorterm(f,x0,n)

% New algorithm
syms x1;
f(x1)=subs(f,x,x1)
f0=subs(f(x1),x1,x0)
ts=f0
term=f
for n=1:6
    dterm=diff(term,x1);
    term=dterm*(x-x0)/n;
    term0=subs(term,x1,x0);
    ts=ts+term0;
    disp([dterm term term0 ts])
end
ts2=ts
% (x - 2)^2/8 - x/4 - (x - 2)^3/16 + (x - 2)^4/32 - (x - 2)^5/64 + (x - 2)^6/128 + 1
