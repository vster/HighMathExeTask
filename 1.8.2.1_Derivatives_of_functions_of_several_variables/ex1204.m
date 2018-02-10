syms x y;
z=exp((x^2+y^2)^2)
Dzx=simplify(diff(z,x))
Dzy=simplify(diff(z,y))