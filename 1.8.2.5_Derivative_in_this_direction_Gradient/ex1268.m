syms x y;
z=x^2-x*y+y^2;
M=[1 1]
L=[6 8]

ezsurf(z)

LL=sqrt(sum(L.*L))
cos_a=L(1)/LL
sin_a=L(2)/LL

Gdz=[diff(z,x);diff(z,y)]
GdzM=subs(Gdz,[x y],M)

GdzL=GdzM(1)*cos_a+GdzM(2)*sin_a

Gdz2=gradient(z)
Gdz2M=subs(Gdz2,[x y],M)
