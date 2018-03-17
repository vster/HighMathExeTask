syms x;
digits(5)

y=x*cosh(x)
pretty(y)
subplot(3,1,1)
ezplot(y)
grid

F=simplify(int(y))
pretty(F)
subplot(3,1,2)
ezplot(F)
grid

F1=int(y,0,log(3))
vpa(F1)

y2=simplify(diff(F))
pretty(y2)
subplot(3,1,3)
ezplot(y2)
grid

c=simplify(y-y2)