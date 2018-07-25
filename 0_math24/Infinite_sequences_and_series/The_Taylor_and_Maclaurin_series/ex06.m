% Find the Maclaurin series for the function
% (1+x)^(1/2)

clear
syms x n;
f(x)=(1+x)^(1/2)

x0=0;
f0=subs(f,x,x0);
ts=f0;
dfp=f;
for n=1:4
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
%
df0
% [ 1/2, -1/4, 3/8, -15/16]
ts  
% - (5*x^4)/128 + x^3/16 - x^2/8 + x/2 + 1

ts1(x)=taylor(f(x),'Order',5)
% - (5*x^4)/128 + x^3/16 - x^2/8 + x/2 + 1

% New algorithm
syms x1;
f(x1)=subs(f,x,x1)
f0=subs(f(x1),x1,x0)
ts=f0
term=f
for n=1:4
    dterm=diff(term,x1);
    term=dterm*(x-x0)/n;
    term0=subs(term,x1,x0);
    ts=ts+term0;
end
ts2=ts
% - (5*x^4)/128 + x^3/16 - x^2/8 + x/2 + 1

