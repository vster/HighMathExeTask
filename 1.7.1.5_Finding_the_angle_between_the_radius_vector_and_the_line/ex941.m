syms phi;
r=cos(phi)

ezpolar(r)

dr=diff(r,phi)
tan_w=simplify(r/dr)
pretty(tan_w)
tan_w=-1/tan(phi)
w=simplify(atan(tan_w))