syms x y;
F(x,y)=exp(x)+exp(y)-2^(x*y)-1

ezplot(F)

DFx=diff(F,x)
pretty(DFx)
DFy=diff(F,y)
pretty(DFy)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)