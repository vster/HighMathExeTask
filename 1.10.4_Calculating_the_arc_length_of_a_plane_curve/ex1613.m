syms x;
y=log(sin(x))

dy=diff(y)

c=simplify(sqrt(1+dy^2))
c=1/sin(x)

L=int(c,pi/3,pi/2)