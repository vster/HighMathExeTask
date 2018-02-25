syms x y;
z=x*y^2*(1-x-y)

ezsurfc(z,[-5 5 -5 5])

dzx=diff(z,x)
dzy=diff(z,y)

s=solve(dzx==0,dzy==0)

M1=[s.x(1) s.y(1)]
M2=[s.x(2) s.y(2)]
M3=[s.x(3) s.y(3)]

hold on
plot(M2(1),M2(2),'bo')
plot(M2(1),M2(2),'bo')


d2zx=diff(z,x,2)
d2zy=diff(z,y,2)
dzxy=diff(z,x,y)

A=subs(d2zx,[x y],M1)
B=subs(dzxy,[x y],M1)
C=subs(d2zy,[x y],M1)

Det=A*C-B^2

z1=subs(z,[x y],M1)

A=subs(d2zx,[x y],M2)
B=subs(dzxy,[x y],M2)
C=subs(d2zy,[x y],M2)

Det=A*C-B^2

z2=subs(z,[x y],M2)

A=subs(d2zx,[x y],M3)
B=subs(dzxy,[x y],M3)
C=subs(d2zy,[x y],M3)

Det=A*C-B^2

z3=subs(z,[x y],M3)
