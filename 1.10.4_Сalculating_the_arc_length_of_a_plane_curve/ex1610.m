syms x y;
f=y^2-x^3

ezplot(f)

dy=diff(x^(3/2))

L=int(sqrt(1+dy^2),0,1)