syms x y dx dy;
u=exp(x+y)
du=u
for n=1:5
    du=simplify(diff(du,x)*dx+diff(du,y)*dy)
end

expand(du)