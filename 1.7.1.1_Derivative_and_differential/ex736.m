syms x y

y=sym(2*x^3+5*x^2-7*x-4)
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
subplot(2,1,2)
ezplot(dy)
grid

y2=simplify(int(dy))
pretty(y2)