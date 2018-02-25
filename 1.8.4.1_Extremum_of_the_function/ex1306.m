syms x y;
z=1/2*x*y+(47-x-y)*(x/3+y/4)

ezsurf(z)

dzx=diff(z,x)
dzy=diff(z,y)

s=solve(dzx==0,dzy==0)

M=[s.x s.y]

d2zx=diff(z,x,2)
d2zy=diff(z,y,2)
dzxy=diff(z,x,y)

A=subs(d2zx,[x y],M)
B=subs(dzxy,[x y],M)
C=subs(d2zy,[x y],M)

Det=A*C-B^2

zmin=subs(z,[x y],M)