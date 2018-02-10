syms x

y=log((2*log(sin(x))^2+3)/(2*log(sin(x))^2-3))
pretty(y)
subplot(3,1,1)
ezplot(y)
grid

dy=diff(y)
dy=simplify(dy)
pretty(dy)

subplot(3,1,2)
ezplot(dy)
grid

y2=simplify(int(dy))
pretty(y2)
subplot(3,1,3)
ezplot(y2)
grid