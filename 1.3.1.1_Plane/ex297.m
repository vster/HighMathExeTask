syms x y z;
M0=[1,3,-2]
f=2*x-3*y-4*z+12

% ���������� ������ ���������
N=[2,-3,-4]
D=12
% ���������� �� ����� M0 �� ���������
d=abs(dot(N,M0)+D)/norm(N)