syms x f(x) real

y=abs(f(x))
pretty(y)

dy=diff(y)
dy=simplify(dy)
pretty(dy)

y2=simplify(int(dy))
pretty(y2)

c=simplify(y-y2)