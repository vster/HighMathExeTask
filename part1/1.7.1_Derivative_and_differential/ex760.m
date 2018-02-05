syms x

y=sym(log(sqrt(2*sin(x)+1)+sqrt(2*sin(x)-1)))
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
subplot(2,1,2)
ezplot(dy)
grid