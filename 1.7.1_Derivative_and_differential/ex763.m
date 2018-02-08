syms x

y=sym(atan(log(x)/3))
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
simplify(dy)

subplot(2,1,2)
ezplot(dy)
grid