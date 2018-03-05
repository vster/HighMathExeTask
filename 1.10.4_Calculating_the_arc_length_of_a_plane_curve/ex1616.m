syms x;
y=1-log(cos(x))

ezplot(y)

dy=diff(y)

c=simplify(sqrt(1+dy^2))
pretty(c)
L=int(c,0,pi/6)