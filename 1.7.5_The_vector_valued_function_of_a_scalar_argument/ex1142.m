syms t x y z;
r=[exp(t)*(cos(t)+sin(t)),exp(t)*(sin(t)-cos(t)),exp(t)]
t0=0

dr=simplify(diff(r,t))

rM=subs(r,t,t0)
drM=subs(dr,t,t0)

rtan=[drM(1)*t+rM(1),drM(2)*t+rM(2),drM(3)*t+rM(3)]
en=simplify(drM(1)*(x-rM(1))+drM(2)*(y-rM(2))+drM(3)*(z-rM(3)))

ezplot3(r(1),r(2),r(3),[-2 2])
hold on
ezplot3(rtan(1),rtan(2),rtan(3))
plot3(rM(1),rM(2),rM(3),'ro')
% ezmesh(en)
hold off
