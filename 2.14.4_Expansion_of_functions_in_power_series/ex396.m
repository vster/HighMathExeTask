% Expand in series in powers of x the following function.

clear
syms x n;
f(x)= cosh(x^2)^2

x0=0;
f0=subs(f,x,x0)
% 1
ts=f0;
for n=1:8
    df(n)=diff(f(x),x,n);
    df0(n)=subs(df(n),x,x0);
    ts=ts+df0(n)/factorial(n)*(x-x0)^n;
    % ezplot(ts,[-1 1])
    % hold on
    % grid on
end
% hold off
df
% [ 4*x*cosh(x^2)*sinh(x^2), 8*x^2*cosh(x^2)^2 + 8*x^2*sinh(x^2)^2 + 4*cosh(x^2)*sinh(x^2), 24*x*cosh(x^2)^2 + 24*x*sinh(x^2)^2 + 64*x^3*cosh(x^2)*sinh(x^2), 24*cosh(x^2)^2 + 24*sinh(x^2)^2 + 128*x^4*cosh(x^2)^2 + 128*x^4*sinh(x^2)^2 + 384*x^2*cosh(x^2)*sinh(x^2), 1280*x^3*cosh(x^2)^2 + 1280*x^3*sinh(x^2)^2 + 960*x*cosh(x^2)*sinh(x^2) + 1024*x^5*cosh(x^2)*sinh(x^2)]
df0
% [ 0, 0, 0, 24, 0, 0, 0, 13440]
ts
% x^8/3 + x^4 + 1

ts1=taylor(f(x),'Order',9)
% x^8/3 + x^4 + 1

% New algorithm
syms x1;
f(x1)=subs(f,x,x1)
f0=subs(f(x1),x1,x0)
ts=f0
term=f
for n=1:8
    dterm=diff(term,x1);
    term=dterm*(x-x0)/n;
    term0=subs(term,x1,x0);
    ts=ts+term0;
end
ts2=ts
% x^8/3 + x^4 + 1
