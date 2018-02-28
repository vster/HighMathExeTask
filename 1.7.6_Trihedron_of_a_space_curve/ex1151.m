syms t real;
r=[5*t, 12*cos(t), 12*sin(t)]

dr=diff(r)
drn=simplify(norm(dr))
tau=simplify(dr/drn)

ezplot3(r(1),r(2),r(3))