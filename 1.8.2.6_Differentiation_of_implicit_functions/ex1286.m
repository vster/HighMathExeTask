syms x y;
F(x,y)=x^2-x*2^(y+1)+4^y-x+2^y+2

ezsurf(F)

DFx=diff(F,x)
pretty(DFx)
DFy=diff(F,y)
pretty(DFy)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)