syms t;
r=[3*cos(t) 3*sin(t) 4*t]

% ��������
v=diff(r)
vn=simplify(norm(v))

% ���������
a=diff(r,2)
an=simplify(norm(a))
