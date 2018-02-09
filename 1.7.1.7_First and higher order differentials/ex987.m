syms x dx
y=log(x+sqrt(x^2+4))
dy=simplify(diff(y))*dx
pretty(dy)
d2y=simplify(diff(y,2))*dx^2
pretty(d2y)
d3y=simplify(diff(y,3))*dx^3
pretty(d3y)