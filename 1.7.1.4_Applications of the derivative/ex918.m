syms x y;
F(x,y)=x^2/9-y^2/8-1
M=[-9,-8]
R=[x,y]
% ��������� ��������� ����������� � ��������� � ����� M

Dyx=-diff(F,x)/diff(F,y)
DyxM=subs(Dyx,R,M)

yk=M(2)+DyxM*(x+M(2))