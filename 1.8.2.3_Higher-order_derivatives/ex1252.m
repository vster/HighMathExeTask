syms x y z dx dy dz;
u=x*y*z
du=u
for n=1:3
    du=simplify(diff(du,x)*dx+diff(du,y)*dy+diff(du,z)*dz)
end

expand(du)