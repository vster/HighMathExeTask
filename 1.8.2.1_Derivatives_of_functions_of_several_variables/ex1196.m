syms x y;
z=y^(y/x)*sin(y/x)
Dzx=simplify(diff(z,x))
Dzy=simplify(diff(z,y))
e1=simplify(x^2*Dzx+x*y*Dzy)
e2=simplify(y*z)