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

% Не закончено!
% 2-я производная неявной фукнции
