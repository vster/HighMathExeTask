syms x y dx dy;
u=log(x+y)
d2u=diff(u,x,2)*dx^2+2*diff(u,x,y)*dx*dy+diff(u,y,2)*dy^2
d2u=simplify(d2u)

du=u
for n=1:2
    du=simplify(diff(du,x)*dx+diff(du,y)*dy)
end