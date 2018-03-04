syms x y z;
F=x^2+y^2-z^2+1
M=[2 2 3]

Dfx=diff(F,x)
Dfy=diff(F,y)
Dfz=diff(F,z)

DfxM=subs(Dfx,[x y z],M)
DfyM=subs(Dfy,[x y z],M)
DfzM=subs(Dfz,[x y z],M)

% Касательная плоскость
pn=DfxM*(x-M(1))+DfyM*(y-M(2))+DfyM*(z-M(3))

% Нормаль
xn=DfxM*t+M(1)
yn=DfyM*t+M(2)
zn=DfzM*t+M(3)

plot3(M(1),M(2),M(3),'ro')
hold on
ezplot3(xn,yn,zn,[-3,3])
hold off


