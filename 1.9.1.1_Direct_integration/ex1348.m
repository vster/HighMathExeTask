syms x a b;

y=(a*x^2+b)^(1/3)*x
pretty(y)

F=simplify(int(y))
pretty(F)

y2=simplify(diff(F))
pretty(y2)

c=simplify(y-y2)
