% ����� ������� ���� �� �����
% |AC|=2*|AD|=2*R*cos(alfa)
% ����� ������� ���� �� ������
% |CB|=2*alfa*R
% t=t(alfa)=|AC|/u+|CB|/v=2*R*cos(alfa)/u+2*alfa*R/v=2*R*(cos(alfa)/u+alfa/v)
syms R alfa u v;
t=2*R*(cos(alfa)/u+alfa/v)
dt=diff(t,alfa)
% -2*R*(sin(alfa)/u - 1/v)
slv=solve(sin(alfa)/u - 1/v,alfa)
alfa1=slv(1)
% asin(u/v)
d2t=diff(t,alfa,2)
% -(2*R*cos(alfa))/u < 0 - ������������ -> 
%   ������ alfa1 - ����� ��������� (�� ��������)
t0=subs(t,alfa,0)
% (2*R)/u - ������������� �������� ������ �� ���� �� �����
t1=subs(t,alfa,pi/2)
% (pi*R)/v - ������������� ����������� ������ ����� ��������� ACB
% ���� u/v>2/pi, �� ����������� �� ����� ������ ������ �������, ��� ����
% �� ����
% ���� u/v<2/pi, �� ����� ������� ����� ������� �� ������ �����