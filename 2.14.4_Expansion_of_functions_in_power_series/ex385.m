% Expand log(x) in a series in powers of x-1.

clear
syms x n;
f(x)=log(x)

x0=1;
f0=subs(f,x,x0);
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
% hold off
df
% [ 1/x, -1/x^2, 2/x^3, -6/x^4, 24/x^5, -120/x^6]
df0
% [ 1, -1, 2, -6, 24, -120]
term
% [ 0, x - 1, -(x - 1)^2/2, (x - 1)^3/3, -(x - 1)^4/4, (x - 1)^5/5, -(x - 1)^6/6, (x - 1)^7/7]
ts
% x - (x - 1)^2/2 + (x - 1)^3/3 - 
%    (x - 1)^4/4 + (x - 1)^5/5 - (x - 1)^6/6 - 1

ts1=taylor(f(x),'ExpansionPoint', 1)
% x - (x - 1)^2/2 + (x - 1)^3/3 - (x - 1)^4/4 + (x - 1)^5/5 - 1

% New algorithm
syms x1;
f(x1)=subs(f,x,x1)
f0=subs(f(x1),x1,x0)
ts=f0
term=f
for n=1:7
    dterm=diff(term,x1);
    term=dterm*(x-x0)/n;
    term0=subs(term,x1,x0);
    ts=ts+term0;
    disp([dterm term term0 ts])
end
ts2=ts
% x - (x - 1)^2/2 + (x - 1)^3/3 - (x - 1)^4/4 + (x - 1)^5/5 - (x - 1)^6/6 + (x - 1)^7/7 - 1