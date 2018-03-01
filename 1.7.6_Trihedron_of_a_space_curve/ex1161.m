syms t real;
r=[6*t, 3*t^2, t^3]
t1=1

dr=diff(r,t)
drn=simplify(norm(dr))

tau=simplify(dr/drn)
pretty(tau)
tau1=subs(tau,t,t1)