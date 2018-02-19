syms x y;
F(x,y)=x^3+y^3-3*x*y

ezsurf(F)

DFx=diff(F,x)
pretty(DFx)
DFy=diff(F,y)
pretty(DFy)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)