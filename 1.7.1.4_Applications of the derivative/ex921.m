syms t xk xn;
x=t^2
y=t^3
t0=2
% Составить уравнения касательной и нормали к полукубической параболе

ezplot(x,y,[-3 3])
hold on

Dx=diff(x)
Dy=diff(y)

Dyx=Dy/Dx

x0=subs(x,t,t0)
y0=subs(y,t,t0)
plot(x0,y0,'ro')
Dyx0=subs(Dyx,t,t0)

% Касательная
yk=y0+Dyx0*(xk-x0)
ezplot(xk,yk)

% Нормаль
yn=y0-1/Dyx0*(xn-x0)
ezplot(xn,yn)
grid on
hold off
