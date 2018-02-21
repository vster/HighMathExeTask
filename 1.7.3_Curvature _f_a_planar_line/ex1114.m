syms x y;
F=x^2/25+y^2/9-1

ezsurf(F)

DFx=diff(F,x)
DFy=diff(F,y)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)

% Не закончено!
% 2-я производная неявной фукнции