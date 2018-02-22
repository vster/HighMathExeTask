syms x y;
F(x,y)=x^2+x*y^2

% ezsurf(F)

DFx=diff(F,x)
DFy=diff(F,y)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)

syms g(x)
Dgx=-(g(x)^2+2*x)/(2*x*g(x))
pretty(Dgx)

D2gx=simplify(diff(Dgx,x))
pretty(D2gx)

D2yx=simplify(y/(2*x^2)+Dyx/y^2-Dyx/(2*x))
pretty(D2yx)