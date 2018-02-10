syms x y;
u=x^2+2*y^2-3*x*y-4*x+2*y+5
Dux=simplify(diff(u,x))
Duy=simplify(diff(u,y))