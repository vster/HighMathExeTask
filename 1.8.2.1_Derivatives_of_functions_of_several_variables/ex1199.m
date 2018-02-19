syms x y;
u=x^2/y^2-x/y

ezsurf(u)

Dux=simplify(diff(u,x))
Duy=simplify(diff(u,y))