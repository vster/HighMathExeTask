syms t x y z;
r=[1/sqrt(2)*exp(t)*sin(t);1;1/sqrt(2)*exp(t)*cos(t)]
t0=0
% Составить уравнения касательной и нормальной плоскости

dr=simplify(diff(r,t))

rM=subs(r,t,t0)
drM=subs(dr,t,t0)

% Касательная
rtan=[drM(1)*t+rM(1),drM(2)*t+rM(2),drM(3)*t+rM(3)]
% Нормальная плоскость
en=simplify(drM(1)*(x-rM(1))+drM(2)*(y-rM(2))+drM(3)*(z-rM(3)))

ezplot3(r(1),r(2),r(3))
hold on
% ezmesh(en)
plot3(rM(1),rM(2),rM(3),'ro')
ezplot3(rtan(1),rtan(2),rtan(3))
hold off