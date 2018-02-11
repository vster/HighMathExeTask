syms x y dx dy;
u=x*log(y)
du=u
for n=1:4
    du=simplify(diff(du,x)*dx+diff(du,y)*dy)
end

expand(du)