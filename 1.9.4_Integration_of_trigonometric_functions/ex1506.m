syms x a;
y=sqrt(a^2-x^2)/x

pretty(y)

F=simplify(int(y))
pretty(F)

y2=simplify(diff(F))
pretty(y2)

c=simplify(y-y2)