syms x y;
F(x,y)=x^3+2*y^3-2*x*y*sqrt(2*x*y)+1

ezsurf(F)

DFx=diff(F,x)
DFy=diff(F,y)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)
