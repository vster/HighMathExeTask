syms x y;
y1=cos(x)
y2=cos(2*x)

ezplot(y1)
hold on
ezplot(y2)
hold off
grid on

x1=acos(y)
x2=1/2*acos(y)

S=int(int(1,x,x2,x1),y,0,1)
% 1/2