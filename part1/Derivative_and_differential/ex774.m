syms x

y=(x^2+x+2)*exp(-x)
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
dy=simplify(dy)

subplot(2,1,2)
ezplot(dy)
grid