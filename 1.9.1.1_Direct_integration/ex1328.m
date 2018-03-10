syms x;
y=2*x^3-5*x^2+7*x-3
subplot(3,1,1)
ezplot(y)
grid

F=simplify(int(y))
subplot(3,1,2)
ezplot(F)
grid

y2=diff(F)
subplot(3,1,3)
ezplot(y2)
grid

c=simplify(y-y2)