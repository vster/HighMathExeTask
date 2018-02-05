syms x

y=sym(tan(log(x)))
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
subplot(2,1,2)
ezplot(dy)
grid