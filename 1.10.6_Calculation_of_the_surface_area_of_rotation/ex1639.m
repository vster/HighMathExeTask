syms t;
x=t-sin(t)
y=1-cos(t)

ezplot(x,y)

dx=diff(x)
dy=diff(y)

y2=simplify(y*sqrt(dx^2+dy^2))

S=simplify(2*pi*int(y2,t,0,2*pi))

pretty(S)