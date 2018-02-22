syms x y;
F(x,y)=(x^2+y^2)^3-3*(x^2+y^2)+1

% ezsurf(F)

DFx=diff(F,x)
DFy=diff(F,y)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)

syms g(x);
Dyx=-x/g(x)

D2yx=simplify(diff(Dyx,x))
pretty(D2yx)

D2yx=simplify(-(y-x*(-x/y))/y^2)
pretty(D2yx)