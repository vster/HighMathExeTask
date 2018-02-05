syms x

y=sin(x)^(tan(x))
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
dy=simplify(dy)

subplot(2,1,2)
ezplot(dy)
grid