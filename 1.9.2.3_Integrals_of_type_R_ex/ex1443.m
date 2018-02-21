syms x;
y=(2*exp(x)+3)/((2*exp(2*x)-exp(x)-1)*(exp(2*x)+1))

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