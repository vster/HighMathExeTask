syms x y;
u=x^2-3*x*y-4*y^2-x+2*y+1

ezsurf(u)

Dux=diff(u,x)
Duy=diff(u,y)