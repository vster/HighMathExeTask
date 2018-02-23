syms x y;
F(x,y)=y-sin(y)-x

ezsurf(F)

% DFx=diff(F,x)
% DFy=diff(F,y)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)

syms g(x);

Dgx=-1/(cos(g(x))-1)
pretty(Dgx)
D2gx=simplify(diff(Dgx,x))
pretty(D2gx)

D2yx=-sin(y)*Dyx/(cos(y)-1)^2
pretty(D2yx)