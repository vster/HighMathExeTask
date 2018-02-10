syms x y dx dy;
z=sin(x^2+y^2)
dz=simplify(diff(z,x)*dx+diff(z,y)*dy)
pretty(dz)