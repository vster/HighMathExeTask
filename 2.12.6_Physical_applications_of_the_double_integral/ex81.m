% Найти ЦТ
% y=x^2, y=2*x^2
% x=1, x=2

syms x y;
y1=x^2
y2=2*x^2

ezplot(y1)
hold on
ezplot(y2)
hold off
grid on

S=int(int(1,y,y1,y2),x,1,2)
xm=1/S*int(int(x,y,y1,y2),x,1,2)
% 45/28
ym=1/S*int(int(y,y,y1,y2),x,1,2)
% 279/70
