syms r x y a b;
u=log(1/r)
% r
phi=sqrt((x-a)^2+(y-b)^2)

d2ur=diff(u,r,2)

d2rx=diff(phi,x,2)
d2rx=simplify(d2rx)
pretty(d2rx)

d2ux=d2ur*d2rx
d2ux=subs(d2ux,r,phi)
d2ux=simplify(d2ux)
pretty(d2ux)

d2ry=diff(phi,y,2)
d2ry=simplify(d2ry)
pretty(d2ry)

d2uy=d2ur*d2ry
d2uy=subs(d2uy,r,phi)
d2uy=simplify(d2uy)
pretty(d2uy)

eq=simplify(d2ux+d2uy)