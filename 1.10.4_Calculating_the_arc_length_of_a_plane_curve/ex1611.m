syms t;
x=cos(t)^5
y=sin(t)^5

dx=diff(x,t)
dy=diff(y,t)

c=simplify(sqrt(dx^2+dy^2))

L=int(c,0,pi/2)