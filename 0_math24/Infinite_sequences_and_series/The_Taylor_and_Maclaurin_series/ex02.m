% Find the Maclaurin series for the function
% f(x)=3*x^2-6*x+5 at point x=1

clear
syms x n;
f(x)=3*x^2-6*x+5

x0=1;
f0=subs(f,x,x0);
term(1)=f0;
ts=term(1);
disp([0 f f0 term(1) ts])
for n=1:2
    df(n)=diff(f,x,n);
    df0(n)=subs(df(n),x,x0);
    term(n+1)=df0(n)/factorial(n)*(x-x0)^n;
    ts=ts+term(n+1);
    disp([n,df(n),df0(n),term(n+1),ts])
end
df
% [ 6*x - 6, 6]
df0
% [ 0, 6]
term
% [ 0, 3*(x - 1)^2]
ts 
% 3*(x - 1)^2 + 2

ts1(x)=taylor(f(x),'ExpansionPoint',1,'Order',3)
% 3*(x - 1)^2 + 2

% New algorithm
syms x1;
f(x1)=subs(f,x,x1)
f0=subs(f(x1),x1,x0)
ts=f0
term=f
for n=1:2
    dterm=diff(term,x1);
    term=dterm*(x-x0)/n;
    term0=subs(term,x1,x0);
    ts=ts+term0;
    disp([n dterm term term0 ts]);
end
ts2=ts
% ((6*x - 6)*(x - 1))/2 + 2

