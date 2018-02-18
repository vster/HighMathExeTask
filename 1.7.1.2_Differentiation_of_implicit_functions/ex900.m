syms x y;
F(x,y)=x^4-6*x^2*y^2+9*y^4-5*x^2+15*y^2-100

ezplot(F)

DFx=diff(F,x)
pretty(DFx)
DFy=diff(F,y)
pretty(DFy)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)