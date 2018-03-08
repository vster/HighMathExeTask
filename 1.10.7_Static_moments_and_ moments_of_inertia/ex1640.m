syms x r;
assume(x<=r & x>=-r)
y=sqrt(r^2-x^2)

dy=diff(y,x)

f=y*sqrt(1+dy^2)
f=simplify(f)
pretty(f)

f=r
Mx=int(r,x,-r,r)
% 2*r^2

g=y^2*sqrt(1+dy^2)
g=simplify(g)
pretty(g)
g=r*sqrt(r^2-x^2)

Ix=int(g,x,-r,r)
% (pi*r^3)/2

