syms x y lam real;
z=sin(x)+sin(y)+cos(x+y)
assume(x>=0 & x<=3*pi/2)
assume(y>=0 & y<=3*pi/2)

ezsurf(z)

dzx=diff(z,x)
dzy=diff(z,y)
slv=solve(dzx,dzy)
x0=slv.x(1)
y0=slv.y(1)
z0=subs(z,[x y],[x0 y0])
% z0=1.5

z1=subs(z,[x y],[0 0])
z2=subs(z,[x y],[0 3*pi/2])
z3=subs(z,[x y],[3*pi/2 0])
z4=subs(z,[x y],[3*pi/2 3*pi/2])

z_min=-3
z_max=1.5