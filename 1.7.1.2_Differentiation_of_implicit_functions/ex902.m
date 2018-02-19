syms x y;
F(x,y)=x*sin(y)+y*sin(x)

ezsurf(F)

DFx=diff(F,x)
pretty(DFx)
DFy=diff(F,y)
pretty(DFy)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)