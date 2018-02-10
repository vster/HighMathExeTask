syms x y;
z=y*log(x^2-y^2)
eq1=1/x*diff(z,x)+1/y*diff(z,y)
eq1=simplify(eq)
eq2=z/y^2