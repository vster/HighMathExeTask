syms x y dx dy;
z=atan((x+y)/(1-x*y))
d2zxy=simplify(diff(z,x,y))