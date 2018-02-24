syms x y;
z=log(x^2+y^2)
M=[1 0 0]

ezsurf(z)
hold on
plot3(M(1),M(2),M(3),'ro')

Dzx=diff(z,x)
Dzy=diff(z,y)

DzxM=subs(Dzx,[x y z],M)
DzyM=subs(Dzy,[x y z],M)

zn=M(3)+DzxM*(x-M(1))+DzyM*(y-M(2))
ezsurf(zn)

syms xn yn zn;
eq1=(xn-M(1))/DzxM
eq2=(yn-M(2))/DzyM
eq3=(zn-M(3))/(-1)

hold off