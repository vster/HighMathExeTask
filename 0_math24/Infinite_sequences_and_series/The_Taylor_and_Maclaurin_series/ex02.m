% Find the Maclaurin series for the function
% f(x)=3*x^2-6*x+5 at point x=1

clear
syms x n;
f(x)=3*x^2-6*x+5

x0=1;
f0=subs(f,x,x0);
ts=f0;
dfp=f;
for n=1:2
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
% [ 6*x - 6, 6]
df0
% [ 0, 6]
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
end
ts2=ts
% ((6*x - 6)*(x - 1))/2 + 2

