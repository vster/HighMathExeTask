syms x y;

ezplot(x^2+y^2-9)
hold on
ezplot(y-2/3*x-3)
hold off
grid on

slv=solve(x^2+y^2==9,y==2/3*x+3)
A=[slv.x(1),slv.y(1)]
B=[slv.x(2),slv.y(2)]

I=int(int(3*x+y,y,2/3*x+3,sqrt(9-x^2)),x,-36/13,0)
% -432/169