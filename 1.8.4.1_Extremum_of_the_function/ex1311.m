syms x y a;
z=sqrt((a-x)*(a-y)*(x+y-a))
digits(4)

% ezsurf(z)

dzx=simplify(diff(z,x))
dzy=simplify(diff(z,y))

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
