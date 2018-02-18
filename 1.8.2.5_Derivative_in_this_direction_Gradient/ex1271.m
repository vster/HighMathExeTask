syms x y z x0 y0 z0;
r=sqrt(x^2+y^2+z^2)
u=1/r
M=[x0 y0 z0]

gdu=[simplify(diff(u,x));simplify(diff(u,y));simplify(diff(u,z))]
pretty(gdu)
gduM=subs(gdu,[x y z],M)

gdul=simplify(sqrt(sum(gduM.*gduM)))
cos_gduv=simplify(gduM/gdul)
pretty(cos_gduv)
