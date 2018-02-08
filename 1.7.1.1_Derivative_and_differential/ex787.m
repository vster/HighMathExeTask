syms x

y=1/3*sin(sqrt(x))^3-2/5*sin(sqrt(x))^5+1/7*sin(sqrt(x))^7
pretty(y)
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
dy=simplify(dy)
pretty(dy)

subplot(2,1,2)
ezplot(dy)
grid