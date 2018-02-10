syms x y;
z=log(tan(y/x))
D2zxy=simplify(diff(z,x,y))
pretty(D2zxy)