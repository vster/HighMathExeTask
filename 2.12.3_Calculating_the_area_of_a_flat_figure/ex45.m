syms x y;
eq1=y^2+2*y-3*x+1
eq2=3*x-3*y-7

ezplot(eq1)
hold on
ezplot(eq2)
hold on
grid on

slv=solve(eq1==0,eq2==0)
pp=[slv.x,slv.y]

x1=1/3*(y^2+2*y+1)
x2=1/3*(3*y+7)

S=int(int(1,x,x1,x2),y,-2,3)
% 125/18