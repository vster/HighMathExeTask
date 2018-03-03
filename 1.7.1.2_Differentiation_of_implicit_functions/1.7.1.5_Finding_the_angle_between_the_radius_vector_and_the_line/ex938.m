syms phi a;
r=a*(1-cos(phi))
M=[3*a/2 2*pi/3]

dr=diff(r,phi)
tan_w=simplify(r/dr)
pretty(tan_w)

tan_w_M=simplify(subs(tan_w,phi,M(2)))

w=atan(tan_w_M)
