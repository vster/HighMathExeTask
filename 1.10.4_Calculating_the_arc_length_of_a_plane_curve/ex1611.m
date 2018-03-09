syms t;
x=cos(t)^5
y=sin(t)^5

dx=diff(x,t)
dy=diff(y,t)

c1=dx^2+dy^2
c1=factor(c1)
pretty(c1)

c=simplify(sqrt(c1))
pretty(c)

L=int(c,0,pi/2)