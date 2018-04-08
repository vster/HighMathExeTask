% Ќайти координаты центра т€жести фигуры
% x^2/25+y^2/9=1
% x/5+y/3=1

syms x y;
y1=3/5*sqrt(25-x^2)
y2=3*(1-x/5)

ezplot(y1)
hold on
ezplot(y2)
hold off
grid on

S=int(int(1,y,y2,y1),x,0,5)
% (15*pi)/4 - 15/2

xm=1/S*int(int(x,y,y2,y1),x,0,5)
xm=simplify(xm)
% 10/(3*(pi - 2))

ym=1/S*int(int(y,y,y2,y1),x,0,5)
ym=simplify(ym)
% 2/(pi - 2)