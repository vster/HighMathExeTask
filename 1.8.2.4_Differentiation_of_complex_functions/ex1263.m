syms r x y a b;
u=log(1/r)
% r
phi=sqrt((x-a)^2+(y-b)^2)

d2ur=diff(u,r,2)
% 1/r^2
d2rx=diff(phi,x,2)
% 1/((a - x)^2 + (b - y)^2)^(1/2) - (2*a - 2*x)^2/(4*((a - x)^2 + (b - y)^2)^(3/2))
d2rx=simplify(d2rx)
% (b - y)^2/((a - x)^2 + (b - y)^2)^(3/2)
pretty(d2rx)

d2ux=d2ur*d2rx
% (b - y)^2/(r^2*((a - x)^2 + (b - y)^2)^(3/2))
d2ux=subs(d2ux,r,phi)
% (b - y)^2/((a - x)^2 + (b - y)^2)^(5/2)
d2ux=simplify(d2ux)
% (b - y)^2/((a - x)^2 + (b - y)^2)^(5/2)
pretty(d2ux)

d2ry=diff(phi,y,2)
% 1/((a - x)^2 + (b - y)^2)^(1/2) - (2*b - 2*y)^2/(4*((a - x)^2 + (b - y)^2)^(3/2))
d2ry=simplify(d2ry)
% (a - x)^2/((a - x)^2 + (b - y)^2)^(3/2)
pretty(d2ry)

d2uy=d2ur*d2ry
% (a - x)^2/(r^2*((a - x)^2 + (b - y)^2)^(3/2))
d2uy=subs(d2uy,r,phi)
% a - x)^2/((a - x)^2 + (b - y)^2)^(5/2)
d2uy=simplify(d2uy)
% (a - x)^2/((a - x)^2 + (b - y)^2)^(5/2)
pretty(d2uy)

eq=simplify(d2ux+d2uy)
% (a^2 - 2*a*x + b^2 - 2*b*y + x^2 + y^2)/((a - x)^2 + (b - y)^2)^(5/2)