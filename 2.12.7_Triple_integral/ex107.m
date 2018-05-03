% ��������� ������� ��������
% I = int int int (T) (x^2+y^2+z^2)^3 dx dy dz
% T - ���������� ���������
% x^2+z^2=1
% � ����������� y=0 � y=1

syms x y z;
f1=(x^2+y^2+z^2)^3
f2=x^2+z^2-1

% ������� � �������������� �����������
syms ro phi z;
x1=ro*cos(phi);
z1=ro*sin(phi);
y1=y;

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% (ro^2 + y^2)^3

f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)
% 0<=ro<=1

I=int(int(int(f1*ro,y,0,1),ro,0,1),phi,0,2*pi)
% (431*pi)/420 - ?
% ������ ���� 3*pi/2


