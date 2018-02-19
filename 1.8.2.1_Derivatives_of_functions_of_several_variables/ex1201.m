syms x y z;
u=2*y*sqrt(x)+3*y^2*z^(2/3)

Dux=simplify(diff(u,x))
Duy=simplify(diff(u,y))
Duz=simplify(diff(u,z))