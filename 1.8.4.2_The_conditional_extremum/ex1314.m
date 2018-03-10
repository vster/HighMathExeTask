syms x y z;
z=x^2+y^2
c=(x-sqrt(sym(2)))^2+(y-sqrt(sym(2)))^2-9

dzx=diff(z,x)
dzy=diff(z,y)

% 2*x=0
% 2*y=0
% [0,0] - экстремум
% z=0

u=x^2+y^2+lam*c

dux=diff(u,x)
duy=diff(u,y)

slv=solve(2*x + lam*(2*x - 2*2^(1/2)) == 0,... 
            2*y + lam*(2*y - 2*2^(1/2)) == 0,...
            (x-sqrt(sym(2)))^2+(y-sqrt(sym(2)))^2 == 9)
        
lam1=slv.lam(1)
x1=slv.x(1)
y1=slv.y(1)
z1=subs(z,[x y],[x1 y1])
% lam=-5/3
% [(5*2^(1/2))/2 (5*2^(1/2))/2] 
% z1=25

lam2=slv.lam(2)
x2=slv.x(2)
y2=slv.y(2)
z2=subs(z,[x y],[x2 y2])
% lam=-1/3
% [-2^(1/2)/2 -2^(1/2)/2]
% z2=1
