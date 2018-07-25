% Find the Maclaurin series for the function
% (1+x)^mu

clear
syms x n mu;
f(x)=(1+x)^mu

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
% [ mu, mu*(mu - 1), mu*(mu - 1)*(mu - 2), mu*(mu - 1)*(mu - 2)*(mu - 3)]
ts 
% (mu*(mu - 1)*(mu - 2)*(mu - 3)*x^4)/24 + (mu*(mu - 1)*(mu - 2)*x^3)/6 + (mu*(mu - 1)*x^2)/2 + mu*x + 1

ts1(x)=taylor(f(x),'Order',5)
% ((mu*(mu/4 - mu^2/6))/2 - mu/4 - mu*(mu*(mu/12 - mu^2/24) - mu/6 + mu^2/12) + mu^2/6)*x^4 + (mu/3 - mu*(mu/4 - mu^2/6) - mu^2/4)*x^3 + (mu^2/2 - mu/2)*x^2 + mu*x + 1

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
% (mu*(mu - 1)*(mu - 2)*(mu - 3)*x^4)/24 + (mu*(mu - 1)*(mu - 2)*x^3)/6 + (mu*(mu - 1)*x^2)/2 + mu*x + 1

