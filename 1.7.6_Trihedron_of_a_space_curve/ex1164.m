syms t real;
r=[6*t, 3*t^2, t^3]
t1=1

dr=diff(r,t)
% [ 6, 6*t, 3*t^2]
d2r=diff(r,t,2)
% [ 0, 6, 6*t]
drn=simplify(norm(dr))
% 3*t^2 + 6

B=simplify(cross(dr, d2r))
% [ 18*t^2, -36*t, 36]
Bn=simplify(norm(B))
% 18*t^2 + 36

% Curvature of the curve K
K=simplify(Bn/drn^3)
% 2/(3*(t^2 + 2)^2)
K1=subs(K,t,t1)
% 2/27