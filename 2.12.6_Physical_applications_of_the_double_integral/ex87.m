% Find the center of gravity
% y=sqrt(2*x-x^2), y=0

syms x y;
y1=sqrt(2*x-x^2)

ezplot(y1)
grid on

S=int(int(1,y,0,sqrt(2*x-x^2)),x,0,2)
% pi/2
xm=1/S*int(int(x,y,0,sqrt(2*x-x^2)),x,0,2)
% 1
ym=1/S*int(int(y,y,0,sqrt(2*x-x^2)),x,0,2)
% 4/(3*pi)