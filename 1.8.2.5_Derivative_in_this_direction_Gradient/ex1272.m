syms x y z;
u=x*y*z;
M=[2 1 1]

gdu=[simplify(diff(u,x));simplify(diff(u,y));simplify(diff(u,z))]
pretty(gdu)
gduM=subs(gdu,[x y z],M)

gdul=simplify(sqrt(sum(gduM.*gduM)))
cos_gduv=simplify(gduM/gdul)
pretty(cos_gduv)