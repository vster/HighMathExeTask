syms x

y=-1/tan(x/2)^2-2*log(sin(x/2))
pretty(y)
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
dy=simplify(dy)
pretty(dy)

subplot(2,1,2)
ezplot(dy)
grid