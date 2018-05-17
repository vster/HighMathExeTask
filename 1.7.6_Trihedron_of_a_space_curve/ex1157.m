syms t a R real;
assume(R>a)
r=[a*cos(t), a*sin(t), sqrt(R^2-a^2)*t]

dr=simplify(diff(r,t))
% [ -a*sin(t), a*cos(t), (R^2 - a^2)^(1/2)]
d2r=simplify(diff(r,t,2))
% [ -a*cos(t), -a*sin(t), 0]
d3r=simplify(diff(r,t,3))
% [ a*sin(t), -a*cos(t), 0]
Bn=a*R
% Torsion of the helix sigma
sigma=simplify(dot(dr,cross(d2r,d3r))/Bn^2)
% conj((R^2 - a^2)^(1/2))/R^2