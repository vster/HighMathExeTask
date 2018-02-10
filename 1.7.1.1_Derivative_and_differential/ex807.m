syms x

y=asin((sin(x)/sqrt(1+sin(x)^2)))
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

