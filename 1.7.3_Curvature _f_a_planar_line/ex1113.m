syms x y;
F=2*y^2-2*x-1

ezsurf(F)

DFx=diff(F,x)
DFy=diff(F,y)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)

% Не закончено!
% 2-я производная неявной фукнции
