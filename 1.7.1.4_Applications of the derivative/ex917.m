syms x y p x0 y0;
F(x,y)=y^2-2*p*x
M=[x0 y0]
% Ќайти уравнение нормали к параболе в точке M

Dyx=-diff(F,x)/diff(F,y)
DyxM=subs(Dyx,[x,y],M)

y=simplify(y0-1/DyxM*(x-x0))


