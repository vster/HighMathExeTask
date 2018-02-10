syms x y dx dy;
z=atan((x+y)/(x-y))
dz=simplify(diff(z,x)*dx+diff(z,y)*dy)