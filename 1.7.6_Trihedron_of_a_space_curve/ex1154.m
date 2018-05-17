% Find the unit vector of the binormal
syms t a R real;
assume(R>a)
r=[a*cos(t), a*sin(t), sqrt(R^2-a^2)*t]

dr=diff(r,t)
% [ -a*sin(t), a*cos(t), (R^2 - a^2)^(1/2)]
d2r=diff(r,t,2)
% [ -a*cos(t), -a*sin(t), 0]

B=simplify(cross(dr, d2r))
Bn=simplify(norm(B))
Bn=a*R
% The unit vector of the binormal beta
beta=simplify(B/Bn)
% [ (sin(t)*(R^2 - a^2)^(1/2))/R, -(cos(t)*(R^2 - a^2)^(1/2))/R, a/R]
pretty(beta)