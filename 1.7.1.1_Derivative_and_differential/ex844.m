syms x

y=sec(x)*(1+log(cos(x)))
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