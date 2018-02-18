syms x y a b;
F(x,y)=(x^2+y^2-b*x)^2-a^2*(x^2+y^2)
M=[b b]

DFx=diff(F,x)
pretty(DFx)
DFy=diff(F,y)
pretty(DFy)

Dyx=simplify(-diff(F,x)/diff(F,y))
DyxM=simplify(subs(Dyx,[x y],M))
pretty(Dyx)