syms x;

y=(x+4)/(x^3+6*x^2+11*x+6)
pretty(y)
subplot(3,1,1)
ezplot(y)
grid

F=simplify(int(y))
pretty(F)
subplot(3,1,2)
ezplot(F)
grid

y2=simplify(diff(F))
pretty(y2)
subplot(3,1,3)
ezplot(y2)
grid