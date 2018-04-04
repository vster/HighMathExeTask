% x+y+z=6
% 3*x+2*y=12
% 3*x+y=6
% y=0
% z=0

syms x y;
y1=6-3/2*x
y2=6-3*x

ezplot(y1)
hold on
ezplot(y2)
hold off
grid on

x1=(12-2*y)/3
x2=(6-y)/3

V=int(int(6-x-y,x,x2,x1),y,0,6)
% 12