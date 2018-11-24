syms x y dx dy;
u=4*x^3+3*x^2*y+3*x*y^2-y^3
d2uxy=diff(u,x,y)
% 6*x + 6*y
d2z=diff(u,x,2)*dx^2+2*diff(u,x,y)*dx*dy+diff(u,y,2)*dy^2
% (24*x + 6*y)*dx^2 + (12*x + 12*y)*dx*dy + (6*x - 6*y)*dy^2