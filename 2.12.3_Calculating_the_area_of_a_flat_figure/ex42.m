syms x y;
% y=2-x
% y^2=4*x+4

x1=2-y
x2=1/4*(y^2-4)

ezplot(x1)
hold on
ezplot(x2)
hold off

slv=solve(y==2-x,y^2==4*x+4)
A=[slv.x(1), slv.y(1)]
B=[slv.x(2), slv.y(2)]

S=int(int(1,x,x2,x1),y,-6,2)
% 64/3