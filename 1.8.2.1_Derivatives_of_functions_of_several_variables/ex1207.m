syms x y z;
u=exp(x*y*z)*sin(y/x)
Dux=simplify(diff(u,x))
Duy=simplify(diff(u,y))
Duz=simplify(diff(u,z))