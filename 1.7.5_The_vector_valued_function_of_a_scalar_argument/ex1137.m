syms t a b c x y z;
r=[a*sin(t)^2;b*sin(t)*cos(t);c*cos(t)^2]
t0=pi/4

dr=simplify(diff(r,t))

rM=subs(r,t,t0)
drM=subs(dr,t,t0)

%e1=(x-rM(1))/drM(1)
%e2=(y-rM(2))/drM(2)
%e3=(z-rM(3))/drM(3)

%en=drM(1)*(x-rM(1))+drM(2)*(y-rM(2))+drM(3)*(z-rM(3))
rtan=[drM(1)*t+rM(1),drM(2)*t+rM(2),drM(3)*t+rM(3)]
en=simplify(drM(1)*(x-rM(1))+drM(2)*(y-rM(2))+drM(3)*(z-rM(3)))


