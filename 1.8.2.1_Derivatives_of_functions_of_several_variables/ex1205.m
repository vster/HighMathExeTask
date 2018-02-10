syms x y z;
u=(x-y)*(x-z)*(y-z)
Dux=simplify(diff(u,x))
Duy=simplify(diff(u,y))
Duz=simplify(diff(u,z))