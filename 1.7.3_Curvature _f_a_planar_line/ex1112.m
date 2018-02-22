syms x y;
F=x^3+y^4-2
M=[1 1]

% ezsurf(F)

DFx=diff(F,x)
DFy=diff(F,y)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)
DyxM=subs(Dyx,[x y],M)

syms g(x);
Dgx=-3*x^2/(4*g(x)^3)
pretty(Dgx)

D2gx=simplify(diff(Dgx,x))
pretty(D2gx)

D2yx=-x*(2*y-3*x*Dyx)*3/(4*y^4)
pretty(D2yx)
simplify(D2yx)
pretty(D2yx)
D2yxM=subs(Dyx,[x y],M)


% Не закончено!
% 2-я производная неявной фукнции

