syms x y dx dy;
z=x^2+y^2-x*y-2*x+y+7
d2z=diff(z,x,2)*dx^2+2*diff(z,x,y)*dx*dy+diff(z,y,2)*dy^2
simplify(d2z)