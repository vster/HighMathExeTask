syms x y dx dy;
u=x*sin(x*y)+y*cos(x*y)
D2u2x=simplify(diff(u,x,2))