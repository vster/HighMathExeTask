syms x y a;
F(x,y)=log(tan(y/x))-y/x-a

DFx=diff(F,x)
pretty(DFx)
DFy=diff(F,y)
pretty(DFy)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)

syms g(x);
Dgx=g(x)/x
pretty(Dgx)
D2gx=simplify(diff(Dgx,x))
pretty(D2gx)

D2yx=Dyx/x-y/x^2
pretty(D2yx)