% Find tangential unit vector tau
syms t real;
r=[t^2,t^3,t^6]
t1=1

dr=diff(r)
% [ 2*t, 3*t^2, 6*t^5]
drn=simplify(norm(dr))
% abs(t)*(36*t^8 + 9*t^2 + 4)^(1/2)

dr1=subs(dr,t,t1)
drn1=subs(drn,t,t1)
% Tangential unit vector tau
tau=dr1/drn1
% [ 2/7, 3/7, 6/7]
ezplot3(r(1),r(2),r(3))