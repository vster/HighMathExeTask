syms x y;
u=exp(3*x^2+2*y^2-x*y)
Dux=simplify(diff(u,x))
Duy=simplify(diff(u,y))