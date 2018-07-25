% Find the Maclaurin series for the function
% x^3 at point x=2

clear
syms x n;
f(x)=x^3

x0=2;
f0=subs(f,x,x0);
ts=f0;
dfp=f;
for n=1:3
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
% [ 3*x^2, 6*x, 6]
df0
% [ 12, 12, 6]
ts 
% 12*x + 6*(x - 2)^2 + (x - 2)^3 - 16

ts1(x)=taylor(f(x),'ExpansionPoint',2,'Order',4)
% 12*x + 6*(x - 2)^2 + (x - 2)^3 - 16

% New algorithm
syms x1;
f(x1)=subs(f,x,x1)
f0=subs(f(x1),x1,x0)
ts=f0
term=f
for n=1:3
    dterm=diff(term,x1);
    term=dterm*(x-x0)/n;
    term0=subs(term,x1,x0);
    ts=ts+term0;
end
ts2=ts
% 12*x + 6*(x - 2)^2 + (x - 2)^3 - 16

