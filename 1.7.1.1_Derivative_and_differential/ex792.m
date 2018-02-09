syms x

y=atan(sqrt(4*x^2-1))
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