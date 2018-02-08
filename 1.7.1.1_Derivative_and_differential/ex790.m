syms x

y=log((sqrt(4*tan(x)+1)-2*sqrt(tan(x)))/(sqrt(4*tan(x)+1)+2*sqrt(tan(x))))
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