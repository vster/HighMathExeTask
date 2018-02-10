syms x y z dx dy dz;
u=x^(y^2*z)
du=simplify(diff(u,x)*dx+diff(u,y)*dy+diff(u,z)*dz)
pretty(du)
