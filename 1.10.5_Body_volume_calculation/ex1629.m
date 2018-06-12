syms x y;
y1=sqrt(x)
y2=x^2

ezplot(y1)
hold on
ezplot(y2)
hold off
% 0<x<1
V=pi*int(y1^2-y2^2,0,1)
% (3*pi)/10
vpa(V)
