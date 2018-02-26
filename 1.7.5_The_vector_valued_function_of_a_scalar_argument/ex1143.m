syms t x y z;
r=[t^2,t^3,t^4]
t0=1

dr=simplify(diff(r,t))

rM=subs(r,t,t0)
drM=subs(dr,t,t0)

rtan=[drM(1)*t+rM(1),drM(2)*t+rM(2),drM(3)*t+rM(3)]

ezplot3(r(1),r(2),r(3))
hold on
plot3(1,1,1,'ro')
ezplot3(rtan(1),rtan(2),rtan(3))
hold off
