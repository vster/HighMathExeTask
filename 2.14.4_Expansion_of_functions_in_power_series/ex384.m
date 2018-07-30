% Expand exp(-x^2) in a series in powers of x.

clear
syms x n;
f(x)=exp(-x^2)

x0=0;
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
df

df0
% [ 0, -2, 0, 12, 0, -120, 0]
term
% [ 1, 0, -x^2, 0, x^4/2, 0, -x^6/6, 0]
ts
% - x^6/6 + x^4/2 - x^2 + 1

ts1=taylor(f(x),'Order',8)
% - x^6/6 + x^4/2 - x^2 + 1

% New algorithm
syms x1;
f(x1)=subs(f,x,x1)
f0=subs(f(x1),x1,x0)
ts=f0
term=f
for n=1:7
    dterm=diff(term,x1);
    dterm=simplify(dterm);
    term=dterm*(x-x0)/n;
    % term=simplify(term)
    term0=subs(term,x1,x0);
    ts=ts+term0;
    disp([dterm term term0 ts])
end
ts2=ts
% - x^6/6 + x^4/2 - x^2 + 1