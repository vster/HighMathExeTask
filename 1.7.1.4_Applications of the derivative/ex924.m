syms x real;
y=cosh(x/2)
x0=2*log(2)
% Составить уравнения касательной и нормали к цепной линии

digits(3)

Dy=diff(y)

y0=vpa(subs(y,x,x0))
Dy0=vpa(subs(Dy,x,x0))

% Касательная
yk=y0+Dy0*(x-x0)
% Нормаль
yn=y0-1/Dy0*(x-x0)

ezplot(y)
hold on
plot(x0,y0,'ro')
ezplot(yk)
ezplot(yn)
hold off