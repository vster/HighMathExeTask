syms t a R real;
assume(R>a)
r=[a*cos(t), a*sin(t), sqrt(R^2-a^2)*t]

dr=diff(r,t)
d2r=diff(r,t,2)

B=simplify(cross(dr, d2r))
Bn=simplify(norm(B))
Bn=a*R

beta=simplify(B/Bn)
pretty(beta)