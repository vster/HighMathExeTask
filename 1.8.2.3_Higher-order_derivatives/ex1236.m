syms x y dx dy;
z=x^2*log(x+y)
d2zxy=simplify(diff(z,x,y))
% (x*(x + 2*y))/(x + y)^2