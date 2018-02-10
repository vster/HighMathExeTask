syms x dx
y=x*(log(x)-1)
dy=simplify(diff(y))*dx
d2y=simplify(diff(y,2))*dx^2
d3y=simplify(diff(y,3))*dx^3