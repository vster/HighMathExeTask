syms x y;
z=4-(x^2+y^2)^(2/3)
digits(4)

ezsurf(z)

dzx=diff(z,x)
dzy=diff(z,y)

s=solve(dzx==0,dzy==0)

M1=[s.x(1) s.y(1)]

d2zx=simplify(diff(z,x,2))
d2zy=simplify(diff(z,y,2))
dzxy=simplify(diff(z,x,y))

A=subs(d2zx,[x y],M1)
B=subs(dzxy,[x y],M1)
C=subs(d2zy,[x y],M1)

Det=A*C-B^2

z1=subs(z,[x y],M1)

hold on
plot3(M1(1),M1(2),z1,'ro')
hold off