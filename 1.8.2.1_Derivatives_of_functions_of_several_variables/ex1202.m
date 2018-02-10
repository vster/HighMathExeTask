syms x y z;
u=exp(x/y)+exp(-z/y)
Dux=simplify(diff(u,x))
Duy=simplify(diff(u,y))
Duz=simplify(diff(u,z))