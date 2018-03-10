syms x y lam;
z=x^2+3*y^2+x-y
c=x+y-1

ezsurf(z)
grid on

% [0 1] [1 0] [1 1]

dzx=diff(z,x)
dzy=diff(z,y)

slv1=solve(dzx==0,dzy==0)
x0=slv1.x
y0=slv1.y
z0=subs(z,[x y],[x0 y0])
% -1/2 1/6 -1/3
z1=subs(z,[x y],[0 1])
% 0 1 2
z2=subs(z,[x y],[1 0])
% 1 0 2
z3=subs(z,[x y],[1 1])
% 1 1 4
z_max=4

u=z+lam*c
dux=diff(u,x)
duy=diff(u,y)
slv2=solve(dux,duy,c)
x4=slv2.x
y4=slv2.y
z4=subs(z,[x y],[x4 y4])
% 1/2 1/2 1
z_min=1

