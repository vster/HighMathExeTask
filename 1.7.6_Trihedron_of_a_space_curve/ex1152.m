% Find tangential unit vector tau
syms t real;
r=[t*sin(t)+cos(t) t*cos(t)-sin(t) t^2*sqrt(2)]
t1=pi/2

dr=diff(r)
% [ t*cos(t), -t*sin(t), 2*2^(1/2)*t]
drn=simplify(norm(dr))
% 3*abs(t)

dr1=subs(dr,t,t1)
drn1=subs(drn,t,t1)
% Tangential unit vector tau
tau=dr1/drn1
% [ 0, -1/3, (2*2^(1/2))/3]
ezplot3(r(1),r(2),r(3))