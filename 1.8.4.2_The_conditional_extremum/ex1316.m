syms x y z lam;
z=x^2-x*y+y^2-4*x
c=2*x+3*y-12

% ezsurf(z)

dzx=diff(z,x)
dzy=diff(z,y)
slv1=solve(dzx==0,dzy==0)
x1=slv1.x
y1=slv1.y
z1=subs(z,[x y],[x1 y1])
% 8/3 4/3 -16/3

% 2*x+3*y-12=0
u=z+lam*c

dux=diff(u,x)
duy=diff(u,y)

slv2=solve(dux==0,duy==0,c==0)
lam2=slv2.lam(1)
x2=slv2.x(1)
y2=slv2.y(1)
z2=subs(z,[x y],[x2 y2])   
% lam2=-4/19
% 60/19 36/19 -96/19

% x=0
u=z+lam*x
dux=diff(u,x)
duy=diff(u,y)
slv3=solve(dux==0,duy==0,x==0)
lam3=slv3.lam(1)
x3=slv3.x(1)
y3=slv3.y(1)
z3=subs(z,[x y],[x3 y3])
% lam=4
% 0 0 0

% y=0
u=z+lam*y
dux=diff(u,x)
duy=diff(u,y)
slv4=solve(dux==0,duy==0,y==0)
lam4=slv4.lam(1)
x4=slv4.x(1)
y4=slv4.y(1)
z4=subs(z,[x y],[x4 y4])
% lam=2
% 2 0 -4


