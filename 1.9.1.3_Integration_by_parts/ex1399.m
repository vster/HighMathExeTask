syms x lambda;

y=sqrt(x^2+lambda)
pretty(y)

F=simplify(int(y))
pretty(F)

y2=simplify(diff(F))
pretty(y2)

c=simplify(y-y2)
