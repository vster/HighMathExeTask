syms x y dx dy;
u=log(x+sqrt(x^2+y^2))
du=simplify(diff(u,x)*dx+diff(u,y)*dy)
pretty(du)