% Find the Maclaurin series for the function
% cos(x)^2

clear
syms x n;
f(x)=cos(x)^2

x0=0;
f0=subs(f,x,x0);
ts=f0;
dfp=f;
for n=1:7
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
% [ -2*cos(x)*sin(x), 2*sin(x)^2 - 2*cos(x)^2, 8*cos(x)*sin(x), 8*cos(x)^2 - 8*sin(x)^2, -32*cos(x)*sin(x)]
df0
% [ 0, -2, 0, 8, 0]
ts
% - (2*x^6)/45 + x^4/3 - x^2 + 1

ts1(x)=taylor(f(x),'Order',8)
% - (2*x^6)/45 + x^4/3 - x^2 + 1

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
end
ts2=ts
% - (2*x^6)/45 + x^4/3 - x^2 + 1

% cos(x)^2 = (1+cos(2*x))/2
f1(x)=cos(2*x)
ts3=(1+taylor(f1,x,'Order',7))/2
% - (2*x^6)/45 + x^4/3 - x^2 + 1