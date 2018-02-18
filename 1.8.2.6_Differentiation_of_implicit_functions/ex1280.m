syms x y alfa beta r;
F(x,y)=(x*y-alfa)^2+(x*y-beta)^2-r^2

DFx=diff(F,x)
DFy=diff(F,y)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)