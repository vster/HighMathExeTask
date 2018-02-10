syms x y dx dy;
u=log(tan(x+y))
d2uxy=diff(u,x,y)
pretty(d2uxy)