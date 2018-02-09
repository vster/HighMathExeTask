syms x y

y=sym(5*sin(x)+3*cos(x))
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
subplot(2,1,2)
ezplot(dy)
grid

y2=simplify(int(dy))
pretty(y2)