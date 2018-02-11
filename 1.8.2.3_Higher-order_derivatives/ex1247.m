syms x y;
u=y*exp(x^2-y^2)
e1=1/x*diff(u,x)+1/y*diff(u,y)
e1=simplify(e1)
e2=u/y^2