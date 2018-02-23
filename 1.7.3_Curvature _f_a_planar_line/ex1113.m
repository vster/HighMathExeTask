syms x y;
F=2*y^2-2*x-1

% ezsurf(F)

DFx=diff(F,x)
DFy=diff(F,y)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)

syms g(x);
Dgx=1/(2*g(x))
pretty(Dgx)

D2gx=diff(Dgx,x)
pretty(D2gx)

D2yx=-Dyx/(2*y^2)
pretty(D2yx)
D2yx=simplify(D2yx)
pretty(D2yx)

x=y^2-1/2
ksi=x-(1+Dyx^2)*Dyx/D2yx
ksi=simplify(ksi)

eta=y+(1+Dyx^2)/D2yx
eta=simplify(eta)
