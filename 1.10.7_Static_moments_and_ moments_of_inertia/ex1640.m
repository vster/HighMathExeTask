syms x r;
assume(x<=r & x>=-r)
y=sqrt(r^2-x^2)

dy=diff(y,x)

f1=1+dy^2
f1=factor(f1)

f=y*r/sqrt((r - x)*(r + x))
f=simplify(f)
pretty(f)

% f=r
Mx=int(f,x,-r,r)
% 2*r^2

g=y^2*sqrt(1+dy^2)
g=simplify(g)
pretty(g)
g=r*sqrt(r^2-x^2)

Ix=int(g,x,-r,r)
% (pi*r^3)/2

