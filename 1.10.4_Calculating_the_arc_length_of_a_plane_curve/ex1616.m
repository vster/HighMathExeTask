syms x;
y=1-log(cos(x))

ezplot(y)

dy=diff(y)

c1=1+dy^2
c1=factor(c1)
c=1/cos(x)
% c=simplify(sqrt(1+dy^2))
pretty(c)

L=int(c,0,pi/6)