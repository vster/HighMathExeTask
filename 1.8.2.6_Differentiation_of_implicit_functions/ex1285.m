syms x y;
F(x,y)=0.5*log(x^2+y^2)-atan(y/x)

DFx=diff(F,x)
pretty(DFx)
DFy=diff(F,y)
pretty(DFy)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)