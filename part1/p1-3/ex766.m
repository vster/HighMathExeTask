syms x

y=1/2*(tan(sqrt(x)))^2+log(cos(sqrt(x)))
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
dy=simplify(dy)

subplot(2,1,2)
ezplot(dy)
grid