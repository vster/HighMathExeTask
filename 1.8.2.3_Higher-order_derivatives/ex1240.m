syms x y dx dy;
z=cos(x+y)
d2z=diff(z,x,2)*dx^2+2*diff(z,x,y)*dx*dy+diff(z,y,2)*dy^2
d2z=simplify(d2z)