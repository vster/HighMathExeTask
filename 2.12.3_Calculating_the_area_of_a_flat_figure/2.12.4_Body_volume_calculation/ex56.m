% x=2*y^2
% x+2*y+z=4
% y=0
% z=0

eq1=x-2*y^2
eq2=x+2*y-4

ezplot(eq1)
hold on
ezplot(eq2)
hold off
grid on

slv=solve(eq1==0,eq2==0)
pp=[slv.x,slv.y]

V=int(int(4-x-2*y,x,2*y^2,4-2*y),y,0,1)
% 17/5
