syms x y dx dy;
z=sin(x)*sin(y);
D2z2x=diff(z,x,2)
D2z2y=diff(z,y,2)
D2zxy=diff(z,x,y)
D2z=D2z2x*dx^2+2*D2zxy*dx*dy+D2z2y*dy^2
% - sin(x)*sin(y)*dx^2 + 2*cos(x)*cos(y)*dx*dy - sin(x)*sin(y)*dy^2
d2z=diff(z,x,2)*dx^2+2*diff(z,x,y)*dx*dy+diff(z,y,2)*dy^2
% - sin(x)*sin(y)*dx^2 + 2*cos(x)*cos(y)*dx*dy - sin(x)*sin(y)*dy^2
dz=z
for n=1:2
    dz=simplify(diff(dz,x)*dx+diff(dz,y)*dy)
end
% - sin(x)*sin(y)*dx^2 + 2*cos(x)*cos(y)*dx*dy - sin(x)*sin(y)*dy^2