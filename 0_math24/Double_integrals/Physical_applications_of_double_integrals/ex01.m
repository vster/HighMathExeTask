% Определить координаты центра тяжести пластины, образованной параболами
% y^2=x
% y=x^2

syms x y;
m=int(int(1,y,x^2,sqrt(x)),x,0,1)
% 1/3
Mx=int(int(y,y,x^2,sqrt(x)),x,0,1)
My=int(int(x,y,x^2,sqrt(x)),x,0,1)

xm=My/m
% 9/20
ym=Mx/m
% 9/20