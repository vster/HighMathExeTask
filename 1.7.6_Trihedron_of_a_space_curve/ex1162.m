syms t real;
r=[6*t, 3*t^2, t^3]
t1=1

dr=diff(r,t)
d2r=diff(r,t,2)

B=simplify(cross(dr, d2r))
Bn=simplify(norm(B))

beta=simplify(B/Bn)
pretty(beta)

beta1=subs(beta,t,t1)