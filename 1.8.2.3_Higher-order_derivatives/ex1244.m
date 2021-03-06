syms x y dx dy;
z=x^2+y^2-x*y-2*x+y+7
d2z=diff(z,x,2)*dx^2+2*diff(z,x,y)*dx*dy+diff(z,y,2)*dy^2
simplify(d2z)
% 2*dx^2 - 2*dx*dy + 2*dy^2
dz=z
for n=1:2
    dz=simplify(diff(dz,x)*dx+diff(dz,y)*dy)
end
% 2*dx^2 - 2*dx*dy + 2*dy^2