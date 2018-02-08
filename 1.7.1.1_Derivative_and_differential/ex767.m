syms x

y=5*sinh(x/15)^3+3*sinh(x/15)^5
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
dy=simplify(dy)

subplot(2,1,2)
ezplot(dy)
grid