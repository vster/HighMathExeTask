% Expand in series in powers of x the following function.

clear
syms x n a;
assume(a>0)
f(x)= log(x+a)

x0=0;
f0=subs(f,x,x0)
%
ts=f0;
for n=1:5
    df(n)=diff(f(x),x,n);
    df0(n)=subs(df(n),x,x0);
    ts=ts+df0(n)/factorial(n)*(x-x0)^n;
    % ezplot(ts,[-1 1])
    % hold on
    % grid on
end
% hold off
df
% [ 1/(a + x), -1/(a + x)^2, 2/(a + x)^3, -6/(a + x)^4, 24/(a + x)^5]
df0
% [ 1/a, -1/a^2, 2/a^3, -6/a^4, 24/a^5]
ts
% log(a) + x/a - x^2/(2*a^2) + x^3/(3*a^3) - x^4/(4*a^4) + x^5/(5*a^5)

ts1=taylor(f(x),'Order',6)
% log(a) + x/a - x^2/(2*a^2) + x^3/(3*a^3) - x^4/(4*a^4) + x^5/(5*a^5)

% New algorithm
syms x1;
f(x1)=subs(f,x,x1)
f0=subs(f(x1),x1,x0)
ts=f0
term=f
for n=1:5
    dterm=diff(term,x1)
    term=dterm*(x-x0)/n
    term0=subs(term,x1,x0)
    ts=ts+term0
end
ts2=ts
% log(a) + x/a - x^2/(2*a^2) + x^3/(3*a^3) - x^4/(4*a^4) + x^5/(5*a^5)
