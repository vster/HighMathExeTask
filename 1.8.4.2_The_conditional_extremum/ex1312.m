syms x y lam;
z=x*y;
f=2*x+3*y-5

ezsurf(z)

u=z+lam*f
dux=diff(u,x)
duy=diff(u,y)

slv=solve(2*lam+y==0, 3*lam+x==0, 2*x+3*y-5==0)

[slv.lam, slv.x, slv.y]

z_max=subs(z,[x y],[slv.x,slv.y])