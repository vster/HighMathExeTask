syms x y dx dy;
z=exp(x)*(cos(y)+x*sin(y))
dz=simplify(diff(z,x)*dx+diff(z,y)*dy)
pretty(dz)

ezsurf(z)