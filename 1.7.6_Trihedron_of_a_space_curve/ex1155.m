syms t a R real;
assume(R>a)
r=[a*cos(t), a*sin(t), sqrt(R^2-a^2)*t]

% �������������� ��������� ������ tau
tau=[ -(a*sin(t))/R, (a*cos(t))/R, (R^2 - a^2)^(1/2)/R]
% ��������� ������ ��������� beta
beta=[ (sin(t)*(R^2 - a^2)^(1/2))/R, -(cos(t)*(R^2 - a^2)^(1/2))/R, a/R]
% ��������� ������ ������� ������� nu
nu=simplify(cross(beta,tau))