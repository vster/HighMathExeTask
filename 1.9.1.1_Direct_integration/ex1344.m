syms x;

y=(sqrt(x)-1/sqrt(x))^2
pretty(y)
subplot(3,1,1)
ezplot(y)
grid

Y1=simplify(int(y))
pretty(F)
subplot(3,1,2)
ezplot(F)
grid

y2=simplify(diff(Y1))
pretty(y2)
subplot(3,1,3)
ezplot(y2)
grid

c=simplify(y-y2)