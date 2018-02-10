syms x dx
y=2*log(cosh(x/2))
dy=simplify(diff(y))*dx
pretty(dy)