syms x y;
z=atan(y/(1+x^2))
Dzx=simplify(diff(z,x))
Dzy=simplify(diff(z,y))