syms x y dx dy;
z=exp(x+y)*(x*cos(y)+y*sin(x))
dz=simplify(diff(z,x)*dx+diff(z,y)*dy)
pretty(dz)