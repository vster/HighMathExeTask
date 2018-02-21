syms x y;
F=x^3+y^4-2
M=[1 1]

ezsurf(F)

DFx=diff(F,x)
DFy=diff(F,y)

Dyx=simplify(-diff(F,x)/diff(F,y))
pretty(Dyx)

DyxM=subs(Dyx,[x y],M)

% �� ���������!
% 2-� ����������� ������� �������

