syms t real;
r=[t*sin(t)+cos(t) t*cos(t)-sin(t) t^2*sqrt(2)]
t1=pi/2

dr=diff(r)
drn=simplify(norm(dr))

dr1=subs(dr,t,t1)
drn1=subs(drn,t,t1)
% Тангенциальный единичный вектор tau
tau=dr1/drn1

ezplot3(r(1),r(2),r(3))