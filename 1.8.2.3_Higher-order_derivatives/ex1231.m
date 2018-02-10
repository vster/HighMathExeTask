syms x y dx dy;
z=x^2*y
d3z=diff(z,x,3)*dx^3+3*diff(z,x,x,y)*dx^2*dy+3*diff(z,x,y,y)*dx*dy^2+diff(z,x,3)*dy^3