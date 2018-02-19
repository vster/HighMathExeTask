syms x y dx dy;
z=log(tan(y/x))
dz=simplify(diff(z,x)*dx+diff(z,y)*dy)
pretty(dz)

ezsurf(z)