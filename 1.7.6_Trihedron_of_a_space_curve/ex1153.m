% Find tangential unit vector tau
syms t a R real;
assume(R>a)
r=[a*cos(t), a*sin(t), sqrt(R^2-a^2)*t]

dr=diff(r,t)
% [ -a*sin(t), a*cos(t), (R^2 - a^2)^(1/2)]
drn=simplify(norm(dr))
drn=R
% Tangential unit vector tau
tau=simplify(dr/drn)
% [ -(a*sin(t))/R, (a*cos(t))/R, (R^2 - a^2)^(1/2)/R]
pretty(tau)
