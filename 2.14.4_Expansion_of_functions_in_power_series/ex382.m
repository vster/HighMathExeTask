% Expand in a power series x function f(x)=2^x

syms x;
f(x)=2^x

syms i;
x0=0
f0=subs(f,x,x0)
for i=1:5
    df(i)=diff(f(x),x,i);
    df0(i)=subs(df(i),x,x0);
end
df
% [ 2^x*log(2), 2^x*log(2)^2, 2^x*log(2)^3, 2^x*log(2)^4, 2^x*log(2)^5]
df0
% [ log(2), log(2)^2, log(2)^3, log(2)^4, log(2)^5]

ft(x)=taylor(f(x))

