syms x y;
z=x^2/(2*y)+x/2+1/x-1/y
Dzx=simplify(diff(z,x))
Dzy=simplify(diff(z,y))
e1=simplify(x^2*Dzx+y^2*Dzy)
e2=x^3/y