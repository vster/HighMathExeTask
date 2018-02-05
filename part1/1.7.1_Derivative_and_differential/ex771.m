syms x

y=7/x^3
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
dy=simplify(dy)

subplot(2,1,2)
ezplot(dy)
grid