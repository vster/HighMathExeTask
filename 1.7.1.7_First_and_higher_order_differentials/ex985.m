syms x dx
y=atan(exp(2*x))
dy=simplify(diff(y))*dx
pretty(dy)