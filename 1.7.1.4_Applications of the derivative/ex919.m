syms t xk xn;
t0=pi/4
x=sqrt(2)*cos(t)^3
y=sqrt(2)*sin(t)^3
% Составить уравнения касательной и нормали к астроиде

ezplot(x,y)
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
ezplot(yk,[-2,2])

% Нормаль
yn=y0-1/Dyx0*(xn-x0)
ezplot(yn,[-2,2])
grid on
hold off