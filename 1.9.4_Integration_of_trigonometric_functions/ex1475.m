syms x;
y=(cos(x)^3+cos(x)^5)/(sin(x)^2+sin(x)^4)

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

c=simplify(y-y2)