syms x

y=sym(log(x+sqrt(x^2+1)))
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
dy=simplify(dy)
pretty(dy)
subplot(2,1,2)
ezplot(dy)
grid

y2=int(dy)
