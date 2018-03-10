syms x y lam;
z=x*y
c=x^2+y^2-1

ezplot(z)
hold on
ezplot(c)
hold off
grid on

dzx=diff(z,x)
dzy=diff(z,y)
% 0 0 0

u=z+lam*c
dux=diff(u,x)
duy=diff(u,y)
slv1=solve(dux==0,duy==0,c==0)
z1=subs(z,[x y],[slv1.x(1) slv1.y(1)])
z2=subs(z,[x y],[slv1.x(2) slv1.y(2)])
z_min=-1/2
z3=subs(z,[x y],[slv1.x(3) slv1.y(3)])
z4=subs(z,[x y],[slv1.x(4) slv1.y(4)])
z_max=1/2