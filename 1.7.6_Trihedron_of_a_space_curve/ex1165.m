syms t real;
r=[6*t, 3*t^2, t^3]
t1=1

dr=simplify(diff(r,t))
% [ 6, 6*t, 3*t^2]
d2r=simplify(diff(r,t,2))
% [ 0, 6, 6*t]
d3r=simplify(diff(r,t,3))
% [ 0, 0, 6]

B=simplify(cross(dr, d2r))
% [ 18*t^2, -36*t, 36]
Bn=simplify(norm(B))
% 18*t^2 + 36

% Кручение sigma кривой
sigma=simplify(dot(dr,cross(d2r,d3r))/Bn^2)
% 2/(3*(t^2 + 2)^2)

sigma1=subs(sigma,t,t1)
% 2/27