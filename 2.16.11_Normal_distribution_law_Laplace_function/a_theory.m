syms sig x m
f(x)=(1/(sig*sqrt(2*pi)))*exp(-(x-m)^2/(2*sig^2))

f(x)=erf(x)
fplot(f)

df=diff(f)
hold on
fplot(df)
hold off
grid

syms a b
Pab=1/2*(erf((b-m)/(sig*sqrt(2)))-erf((a-m)/(sig*sqrt(2))))