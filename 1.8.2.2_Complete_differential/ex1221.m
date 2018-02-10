syms x y dx dy;
z=atan(2*(x+sin(y))/(4-x*sin(y)))
pretty(z)
dz=simplify(diff(z,x)*dx+diff(z,y)*dy)
pretty(dz)