% I = int int int (U) sqrt(100-x^2-y^2-z^2) dx dy dz
% U - ��� � ������� � ������ ��������� � �������� R=6

% ��������� ����
% x^2+y^2+z^2>=36

% I<=M*V
syms R;
V=4/3*pi*R^3
V=subs(V,R,6)

M=1/sqrt(100-36)
I=M*V
% I<=36*pi