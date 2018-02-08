syms x a

y=x/2*sqrt(a^2-x^2)+a^2/2*asin(x/a)
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