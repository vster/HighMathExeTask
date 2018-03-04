syms t a R real;
assume(R>a)
r=[a*cos(t), a*sin(t), sqrt(R^2-a^2)*t]

dr=diff(r,t)
drn=simplify(norm(dr))
drn=R
% �������������� ��������� ������ tau
tau=simplify(dr/drn)
pretty(tau)
