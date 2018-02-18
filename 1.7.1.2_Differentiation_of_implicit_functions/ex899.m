syms x y A B C D E F;
F(x,y)=A*x^2+B*x*y+C*y^2+2*D*x+2*E*y+F

DFx=diff(F,x)
pretty(DFx)
DFy=diff(F,y)
pretty(DFy)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)