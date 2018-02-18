syms x y;
F(x,y)=x^2+2*x*y^2+3*y^4-6
M=[1 -1]

ezplot(F)
hold on

DFx=diff(F,x)
pretty(DFx)
DFy=diff(F,y)
pretty(DFy)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)

DyxM=subs(Dyx,[x y],M)
ezplot(y-M(2)==DyxM*(x-M(1)))
ezplot(y-M(2)==-1/DyxM*(x-M(1)))

grid
hold off