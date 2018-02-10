syms x y dx dy;
u=x*y+sin(x+y)
d2u2x=diff(u,x,2)
d2z=diff(u,x,2)*dx^2+2*diff(u,x,y)*dx*dy+diff(u,y,2)*dy^2