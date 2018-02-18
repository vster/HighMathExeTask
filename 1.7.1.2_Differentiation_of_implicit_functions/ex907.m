syms x y;
F(x,y)=x^2*sin(y)+y^3*cos(x)-2*x-3*y+1

ezplot(F)

DFx=diff(F,x)
pretty(DFx)
DFy=diff(F,y)
pretty(DFy)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)