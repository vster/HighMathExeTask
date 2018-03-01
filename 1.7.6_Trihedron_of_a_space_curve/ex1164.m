syms t real;
r=[6*t, 3*t^2, t^3]
t1=1

dr=diff(r,t)
d2r=diff(r,t,2)
drn=simplify(norm(dr))

B=simplify(cross(dr, d2r))
Bn=simplify(norm(B))

K=simplify(Bn/drn^3)
K1=subs(K,t,t1)