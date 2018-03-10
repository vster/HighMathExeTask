syms x y lam;
z=x*y+x+y
% x=1 x=2 y=2 y=3

ezsurf(z)

dzx=diff(z,x)
dzy=diff(z,y)
slv1=solve(dzx==0,dzy==0)
x1=slv1.x
y1=slv1.y
z1=subs(z,[x y],[x1 x2])
% [-1 -1 -1] за пределами зоны
z2=subs(z,[x y],[1 2])
z3=subs(z,[x y],[1 3])
z4=subs(z,[x y],[2 2])
z5=subs(z,[x y],[2 3])

z_min=5
z_max=11