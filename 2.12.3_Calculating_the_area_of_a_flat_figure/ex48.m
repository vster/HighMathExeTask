syms x y;
x1=4-y^2
x2=-2*y+4

ezplot(x1)
hold on
ezplot(x2)
hold off
grid on

S=int(int(1,x,x2,x1),y,0,2)
% 4/3