syms x y dx dy;
u=log(tan(x+y))
d2uxy=diff(u,x,y)
% 2*tan(x + y)^2 - (tan(x + y)^2 + 1)^2/tan(x + y)^2 + 2
pretty(d2uxy)