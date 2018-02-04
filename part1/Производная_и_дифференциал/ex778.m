syms x

y=log(2*x^3+3*x^2)
pretty(y)
subplot(2,1,1)
ezplot(y,[-6, 6])
grid

dy=diff(y)
dy=simplify(dy)
pretty(dy)

subplot(2,1,2)
ezplot(dy,[-6, 6])
grid