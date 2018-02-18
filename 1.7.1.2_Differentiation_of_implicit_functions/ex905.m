syms x y;
F(x,y)=y/x+exp(y/x)-(y/x)^(1/3)

ezplot(F)

DFx=diff(F,x)
pretty(DFx)
DFy=diff(F,y)
pretty(DFy)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)