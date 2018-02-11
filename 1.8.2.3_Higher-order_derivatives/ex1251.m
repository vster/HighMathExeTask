syms x y dx dy;
u=y/x
d2u=diff(u,x,2)*dx^2+2*diff(u,x,y)*dx*dy+diff(u,y,2)*dy^2
d2u=simplify(d2u)

d3u=diff(u,x,3)*dx^3+3*diff(u,x,x,y)*dx^2*dy+3*diff(u,x,y,y)*dx*dy^2+diff(u,x,3)*dy^3
d3u=simplify(d3u)

du=simplify(diff(u,x)*dx+diff(u,y)*dy)
d2u=simplify(diff(du,x)*dx+diff(du,y)*dy)
d3u=simplify(diff(d2u,x)*dx+diff(d2u,y)*dy)

du=u
for n=1:3
    du=simplify(diff(du,x)*dx+diff(du,y)*dy)
end