syms phi a m;
r=a*exp(m*phi)

dr=diff(r,phi)
tan_w=simplify(r/dr)
pretty(tan_w)
w=atan(tan_w)