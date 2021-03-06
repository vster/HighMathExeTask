syms x y;
F=x^2/25+y^2/9-1
M=[0 3]

ezsurf(F)

DFx=diff(F,x)
DFy=diff(F,y)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)

syms g(x);
Dgx=-9*x/(25*g(x))
pretty(Dgx)

D2gx=diff(Dgx,x)
pretty(D2gx)

D2yx=9*x*Dyx/(25*y^2)-9/(25*y)
pretty(D2yx)
D2yx=simplify(D2yx)
pretty(D2yx)

DyxM=subs(Dyx,[x y],M)
D2yxM=subs(D2yx,[x y],M)

k=abs(D2yxM)/(1+DyxM^2)^(3/2)
