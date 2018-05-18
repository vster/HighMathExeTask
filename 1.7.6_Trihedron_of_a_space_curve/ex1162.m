syms t real;
r=[6*t, 3*t^2, t^3]
t1=1

dr=diff(r,t)
% [ 6, 6*t, 3*t^2]
d2r=diff(r,t,2)
% [ 0, 6, 6*t]

B=simplify(cross(dr, d2r))
% [ 18*t^2, -36*t, 36]
Bn=simplify(norm(B))
% 18*t^2 + 36

% The unit vector of the binormal beta
beta=simplify(B/Bn)
% [ t^2/(t^2 + 2), -(2*t)/(t^2 + 2), 2/(t^2 + 2)]
pretty(beta)

beta1=subs(beta,t,t1)
% [ 1/3, -2/3, 2/3]