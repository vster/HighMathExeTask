syms x y z dx dy dz;
u=exp(x*y*z)
du=simplify(diff(u,x)*dx+diff(u,y)*dy+diff(u,z)*dz)
pretty(du)