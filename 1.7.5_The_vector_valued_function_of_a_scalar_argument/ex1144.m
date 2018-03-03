syms t u v;
r1=[u+1,u^2,2*u-1]
r2=[2*v^2,3*v-2,v^2]
% Точки пересечения кривых
s=solve(r1(1)==r2(1),r1(2)==r2(2),r1(3)==r2(3))
M=[s.u,s.v]

dr1=diff(r1,u)
dr2=diff(r2,v)

dr1M=subs(dr1,u,M(1))
dr2M=subs(dr2,v,M(2))
% Угол между кривыми в точке пересечения
cos_a=dot(dr1M,dr2M)/(norm(dr1M)*norm(dr2M))
a=acos(cos_a)
vpa(a)