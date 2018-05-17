% Find tangential unit vector tau
syms t real;
r=[5*t, 12*cos(t), 12*sin(t)]

dr=diff(r)
% [ 5, -12*sin(t), 12*cos(t)]
drn=simplify(norm(dr))
% tangential unit vector tau
tau=simplify(dr/drn)
% [ 5/13, -(12*sin(t))/13, (12*cos(t))/13]
ezplot3(r(1),r(2),r(3))