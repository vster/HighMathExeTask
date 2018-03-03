syms x;
y=sinh(x)
M=[0 0]
% Какой угол образует с осью абцисс касательная к кривой в точке M

Dy=diff(y)

DyM=subs(Dy,[x y],M)

alfa=atan(DyM)