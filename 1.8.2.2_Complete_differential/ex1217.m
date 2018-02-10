syms x y dx dy;
z=x^y
dz=simplify(diff(z,x)*dx+diff(z,y)*dy)
pretty(dz)