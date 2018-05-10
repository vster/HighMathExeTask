% Найти коорд ЦТ однородной дуги кривой
% y=cosh(x) (0<=x<=log(2))

% Координаты ЦТ
% xm=1/s * int (K) x ds
% ym=1/s * int (K) y ds

syms x dx;
y=cosh(x)
dy=diff(y)
ds=sqrt(1+dy^2)*dx
s=int((sinh(x)^2 + 1)^(1/2),x,0,log(sym(2)))
% 3/4
xm=1/s*int(x*(sinh(x)^2 + 1)^(1/2),x,0,log(sym(2)))
% log(2) - 1/3
ym=1/s*int(y*(sinh(x)^2 + 1)^(1/2),x,0,log(sym(2)))
% (2*log(2))/3 + 5/8