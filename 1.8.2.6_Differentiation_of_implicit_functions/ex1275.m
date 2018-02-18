syms x y;
F(x,y)=y-sin(y)-x

ezplot(F)

DFx=diff(F,x)
DFy=diff(F,y)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)



