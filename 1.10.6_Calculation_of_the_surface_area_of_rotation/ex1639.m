syms t;
x=t-sin(t)
y=1-cos(t)

ezplot(x,y)

dx=diff(x)
dy=diff(y)

y1=dx^2+dy^2
y1=factor(y1)
y1=simplify(y1)

y2=simplify(y*sqrt(y1))

S=simplify(2*pi*int(y2,t,0,pi))

pretty(S)