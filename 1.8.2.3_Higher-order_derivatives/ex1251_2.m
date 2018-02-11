syms x y dx dy;
u=x^2*y
du=u
for n=1:3
    du=simplify(diff(du,x)*dx+diff(du,y)*dy)
end