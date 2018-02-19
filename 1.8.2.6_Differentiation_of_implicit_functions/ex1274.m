syms x y;
F(x,y)=cos(x+y)+y

ezplot(F)

DFx=diff(F,x)
DFy=diff(F,y)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)