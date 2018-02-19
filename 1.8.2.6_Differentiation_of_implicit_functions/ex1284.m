syms x y;
F(x,y)=3*sin(sqrt(x)/y)-2*cos(sqrt(x)/y)+1

ezsurf(F)

DFx=diff(F,x)
pretty(DFx)
DFy=diff(F,y)
pretty(DFy)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)