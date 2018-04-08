% Ќайти координаты центра т€жести фигуры
% y^2=4*x+4
% y^2=-2*x+4

syms x y;
f1=y^2-4*x-4
f2=y^2+2*x-4

ezplot(f1)
hold on
ezplot(f2)
hold off
grid on

x1=(y^2-4)/4
x2=(-y^2+4)/2

S=2*int(int(1,x,x1,x2),y,0,2)
% 8

xm=1/S*2*int(int(x,x,x1,x2),y,0,2)
% 2/5
