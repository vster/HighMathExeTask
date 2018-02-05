syms x

y=sym(x*sqrt(x)*(3*log(x)-2))
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
subplot(2,1,2)
ezplot(dy)
grid