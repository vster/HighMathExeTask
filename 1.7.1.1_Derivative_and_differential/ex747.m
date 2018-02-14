syms x

y=sym(x^3*atan(x))
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
subplot(2,1,2)
ezplot(dy)
grid

y2=simplify(int(dy))
pretty(y2)