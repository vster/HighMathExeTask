syms x;
y=sinh(x)
M=[0 0]
% ����� ���� �������� � ���� ������ ����������� � ������ � ����� M

Dy=diff(y)

DyM=subs(Dy,[x y],M)

alfa=atan(DyM)