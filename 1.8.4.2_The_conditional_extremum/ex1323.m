syms x y lam real;
z=cos(x)*cos(y)*cos(x+y)
assume(x>=0 & x<=pi)
assume(y>=0 & y<=pi)

ezsurf(z)

dzx=diff(z,x)
dzy=diff(z,y)
slv=solve(dzx,dzy)

z_max=0
z_min=0
for i=1:21
    x1=slv.x(i);
    y1=slv.y(i);
    z1=subs(z,[x y],[x1 y1]);
    if (z1>z_max)
        z_max=z1
    end
    if (z1<z_min)
        z_min=z1
    end
end
% z_min=-1/8
% z_max=1

