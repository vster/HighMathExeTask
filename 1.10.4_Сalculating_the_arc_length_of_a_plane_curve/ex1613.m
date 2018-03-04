syms x;
y=log(sin(x))

dy=diff(y)

c=simplify(sqrt(1+dy^2))

L=int(c,pi/3,pi/2)