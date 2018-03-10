syms x a n;

y=1/(x^2+a^2)^n
pretty(y)

F=simplify(int(y))
pretty(F)

y2=simplify(diff(F))
pretty(y2)

c=simplify(y-y2)