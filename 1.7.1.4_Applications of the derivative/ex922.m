syms x y a b x0 y0;
F(x,y)=x^2/a^2+y^2/b^2-1
M=[x0 y0]
% �������� ��� ��������� ����������� � ����� M
% �������� ��� (x*x0)/a^2 + (y*y0)/b^2 = 1

DF=-diff(F,x)/diff(F,y)

yk=y0+DF*(x-x0)
pretty(yk)

yk=expand(yk)
pretty(yk)

% �������������� ���������
eq=y-yk
pretty(eq)

% �������� �� ���������
eq=expand(eq*y/b^2)
pretty(eq)

% ������������ x^2/a^2+y^2/b^2=1
eq=subs(eq,x^2/a^2+y^2/b^2,1)
pretty(eq)