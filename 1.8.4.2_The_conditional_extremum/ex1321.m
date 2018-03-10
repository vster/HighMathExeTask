syms x y lam;
z=sin(x)+sin(y)+sin(x+y)
assume(x>=0 & x<=pi/2)
assume(y>=0 & y<=pi/2)
% x=0..pi/2
% y=0..pi/2

ezsurf(z)

dzx=diff(z,x)
dzy=diff(z,y)
slv=solve(dzx,dzy)
x0=slv.x
y0=slv.y
z0=subs(z,[x y],[x0 y0])

z1=subs(z,[x y],[0 0])
z2=subs(z,[x y],[0 pi/2])
z3=subs(z,[x y],[pi/2 0])
z4=subs(z,[x y],[pi/2 pi/2])

z_min=0
z_max=(3*3^(1/2))/2
