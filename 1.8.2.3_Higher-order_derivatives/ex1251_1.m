syms x y dx dy;
u=x^2*y^2
du=simplify(diff(u,x)*dx+diff(u,y)*dy)
% 2*x*y*(dy*x + dx*y)
d2u=simplify(diff(du,x)*dx+diff(du,y)*dy)
% 2*dx^2*y^2 + 8*dx*dy*x*y + 2*dy^2*x^2
d3u=simplify(diff(d2u,x)*dx+diff(d2u,y)*dy)
% 12*dx*dy*(dy*x + dx*y)
