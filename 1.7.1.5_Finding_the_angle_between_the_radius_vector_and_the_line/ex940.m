syms phi a;
r=a*phi

dr=diff(r,phi)
tan_w=simplify(r/dr)
pretty(tan_w)
w=atan(tan_w)


