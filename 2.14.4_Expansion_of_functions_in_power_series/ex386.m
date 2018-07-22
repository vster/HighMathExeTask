% Expand 1/x in a series in powers of x-2.

syms x n;
f(x)=1/x

x0=2;
f0=subs(f,x,x0)
% 1/2
ts=f0;
for n=1:6
    df(n)=diff(f(x),x,n);
    df0(n)=subs(df(n),x,x0);
    ts=ts+df0(n)/factorial(n)*(x-x0)^n;
    % ezplot(ts,[0 4])
    % hold on
    % grid on
end
% hold off
df

df0
% [ -1/4, 1/4, -3/8, 3/4, -15/8, 45/8]
ts
% (x - 2)^2/8 - x/4 - (x - 2)^3/16 + (x - 2)^4/32 - (x - 2)^5/64 + (x - 2)^6/128 + 1

ts1=taylor(f(x),'ExpansionPoint', 2)
% (x - 2)^2/8 - x/4 - (x - 2)^3/16 + (x - 2)^4/32 - (x - 2)^5/64 + 1
