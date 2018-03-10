syms x y z lam real;
z=x^2+y^2
c=x/4+y/3-1

dzx=diff(z,x)
dzy=diff(z,y)

u=z+lam*c

dux=diff(u,x)
duy=diff(u,y)

slv=solve(lam/4 + 2*x == 0,...
            lam/3 + 2*y == 0,...
            x/4+y/3 == 1)
lam1=slv.lam(1)
x1=slv.x(1)
y1=slv.y(1)
z1=subs(z,[x y],[x1 y1])        
% lam=-288/25
% [36/25 48/25]
% z1=144/25

