syms x y;
z=1+x^2+y^2
M=[1,1,3]
R=[x,y,z]

ezsurf(z)
hold on
plot3(M(1),M(2),M(3),'ro')

Dzx=diff(z,x)
Dzy=diff(z,y)

DzxM=subs(Dzx,R,M)
DzyM=subs(Dzy,R,M)

% Касательная плоскость
zn=M(3)+DzxM*(x-M(1))+DzyM*(y-M(2))
ezsurf(zn)

% Нормаль
syms t;
xn=DzxM*t+M(1)
yn=DzyM*t+M(2)
zn=t+M(3)

ezplot3(xn,yn,zn,[-5,5])

hold off