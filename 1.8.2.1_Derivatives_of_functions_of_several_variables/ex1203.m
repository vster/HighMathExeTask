syms x y;
z=atan(y/(1+x^2))

ezsurf(z)

Dzx=simplify(diff(z,x))
Dzy=simplify(diff(z,y))