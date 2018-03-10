syms x y lam;
z=1-x^2-y^2
c=(x-1)^2+(y-1)^2-1

ezsurf(z)

u=z+lam*c
dux=diff(u,x)
duy=diff(u,y)
slv1=solve(dux,duy,c)

x1=slv1.x(1)
y1=slv1.y(1)
z1=subs(z,[x y],[x1 y1])
z1=simplify(z1)
vpa(z1)
% 2^(1/2)/2 + 1  
% 2^(1/2)/2 + 1    
% - 2*2^(1/2) - 2   - z min

x2=slv1.x(2)
y2=slv1.y(2)
z2=subs(z,[x y],[x2 y2])
z2=simplify(z2)
vpa(z2)
% 1 - 2^(1/2)/2
% 1 - 2^(1/2)/2
% 2*2^(1/2) - 2  - z max