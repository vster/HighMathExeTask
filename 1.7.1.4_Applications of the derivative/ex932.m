syms t x
x=t*sqrt(t)
M=[1 7]
% ������ �������� ��������� �������� � ����� M?

y=simplify(x*(8-x))
dyt=diff(y,t)

s=solve(t*sqrt(t)==M(1),t)
t0=s

v=subs(dyt,t,t0)