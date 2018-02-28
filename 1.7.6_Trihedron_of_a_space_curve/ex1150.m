syms t real;
r=[t^2,t^3,t^6]
t1=1

dr=diff(r)
drn=simplify(norm(dr))

dr1=subs(dr,t,t1)
drn1=subs(drn,t,t1)
tau=dr1/drn1

ezplot3(r(1),r(2),r(3))