syms t xk xn;
x=t-sin(t)
y=1-cos(t)
t0=pi/2
% Составить уравнения касательной и нормали к циклоиде

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
ezplot(yk,[-1,3])

% Нормаль
yn=y0-1/Dyx0*(xn-x0)
ezplot(yn,[-1,3])
hold off
grid
