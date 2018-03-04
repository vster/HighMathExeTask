syms t real;
r=[6*t, 3*t^2, t^3]
t1=1

dr=simplify(diff(r,t))
d2r=simplify(diff(r,t,2))
d3r=simplify(diff(r,t,3))

B=simplify(cross(dr, d2r))
Bn=simplify(norm(B))
% Кручение sigma кривой
sigma=simplify(dot(dr,cross(d2r,d3r))/Bn^2)

sigma1=subs(sigma,t,t1)