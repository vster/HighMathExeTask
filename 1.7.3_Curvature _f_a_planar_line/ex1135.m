syms t;
r=[sinh(t);cosh(t);sqrt(sinh(t)^2-3*sinh(t)^2)]
d2r=simplify(diff(r,2))