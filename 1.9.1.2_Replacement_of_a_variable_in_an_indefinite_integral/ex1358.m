syms x a;

y=1/(x^2+a^2)
pretty(y)

F=simplify(int(y))
pretty(F)

y2=simplify(diff(F))
pretty(y2)
