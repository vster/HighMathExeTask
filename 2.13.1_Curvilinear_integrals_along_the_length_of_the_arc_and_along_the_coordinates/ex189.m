% ��������� ������������� ��������
% I = int (K) y*dx - (y+x^2)*dy
% ��� K - ���� �������� y=2x-x^2,
% ���� ��� ���� 0x � ����������� �� ���� ��� �������

syms x y dx dy
df=y*dx-(y+x^2)*dy

y1=2*x-x^2
dy1=diff(y1)*dx

df=subs(df,[y dy],[y1 dy1])
df=simplify(df)
% dx*x*(3*x - 2)
I=int(x*(3*x - 2),x,0,2)
% 4