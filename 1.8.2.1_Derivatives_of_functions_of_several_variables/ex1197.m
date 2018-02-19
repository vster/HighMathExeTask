syms x y;
u=x^2+2*y^2-3*x*y-4*x+2*y+5

ezsurf(u)

Dux=simplify(diff(u,x))
Duy=simplify(diff(u,y))