syms x y dx dy;
u=4*x^3+3*x^2*y+3*x*y^2-y^3
d2uxy=diff(u,x,y)
d2z=diff(u,x,2)*dx^2+2*diff(u,x,y)*dx*dy+diff(u,y,2)*dy^2