syms x y dx dy;
z=atan((x+y)/(1-x*y))
% -atan((x + y)/(x*y - 1))
d2zxy=simplify(diff(z,x,y))
% 0