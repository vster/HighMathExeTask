syms x y;
F(x,y)=x^3+log(y)-x^2*exp(y)

ezplot(F)

DFx=diff(F,x)
pretty(DFx)
DFy=diff(F,y)
pretty(DFy)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)