syms x y dx dy;
u=x^2*y^2
du=simplify(diff(u,x)*dx+diff(u,y)*dy)
d2u=simplify(diff(du,x)*dx+diff(du,y)*dy)
d3u=simplify(diff(d2u,x)*dx+diff(d2u,y)*dy)

