syms t real;
r=[6*t, 3*t^2, t^3]
t1=1

dr=diff(r,t)
drn=simplify(norm(dr))

% Tangential unit vector tau
tau=simplify(dr/drn)
% [ 2/(t^2 + 2), (2*t)/(t^2 + 2), t^2/(t^2 + 2)]
pretty(tau)
tau1=subs(tau,t,t1)
% [ 2/3, 2/3, 1/3]