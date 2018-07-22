% Expand log(x) in a series in powers of x-1.

syms x n;
f(x)=log(x)

x0=1;
f0=subs(f,x,x0)
% 0
ts=f0;
for n=1:6
    df(n)=diff(f(x),x,n);
    df0(n)=subs(df(n),x,x0);
    ts=ts+df0(n)/factorial(n)*(x-x0)^n;
    % ezplot(ts,[0 2])
    % hold on
    % grid on
end
% hold off
df

df0
% [ 1, -1, 2, -6, 24, -120, 720, -5040, 0, -30240, 0, 665280]
ts
% x - (x - 1)^2/2 + (x - 1)^3/3 - 
%    (x - 1)^4/4 + (x - 1)^5/5 - (x - 1)^6/6 - 1

ts1=taylor(f(x),'ExpansionPoint', 1)
% x - (x - 1)^2/2 + (x - 1)^3/3 - (x - 1)^4/4 + (x - 1)^5/5 - 1