syms x y;
F(x,y)=sin(y-x^2)-log(y-x^2)+2*sqrt(y-x^2)-3

ezplot(F)

DFx=diff(F,x)
pretty(DFx)
DFy=diff(F,y)
pretty(DFy)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)