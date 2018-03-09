syms t;
x=exp(t)*cos(t)
y=exp(t)*sin(t)

ezplot(x,y)

dx=diff(x)
dy=diff(y)
c1=dx^2+dy^2
c1=factor(c1)
c1=simplify(c1)

c=sqrt(c1)

L=int(c,0,log(pi))
vpa(L)