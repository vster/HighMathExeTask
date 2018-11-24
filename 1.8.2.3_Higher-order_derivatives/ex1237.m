syms x y dx dy;
u=x*sin(x*y)+y*cos(x*y)
D2u2x=simplify(diff(u,x,2))
% 2*y*cos(x*y) - y^3*cos(x*y) - x*y^2*sin(x*y)