syms x a;
y=x^2/sqrt(x^2-a^2)

pretty(y)

F=simplify(int(y))
pretty(F)

y2=simplify(diff(F))
pretty(y2)

c=simplify(y-y2)