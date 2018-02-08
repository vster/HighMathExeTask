syms x

y=tan(2*x)+2/3*tan(2*x)^3+1/5*tan(2*x)^5
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