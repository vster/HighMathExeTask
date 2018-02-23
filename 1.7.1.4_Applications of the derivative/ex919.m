syms t xk xn;
t0=pi/4

x=sqrt(2)*cos(t)^3
y=sqrt(2)*sin(t)^3

ezplot(x,y)

Dx=diff(x)
Dy=diff(y)

Dyx=Dy/Dx

x0=subs(x,t,t0)
y0=subs(y,t,t0)
Dyx0=subs(Dyx,t,t0)

yk=y0+Dyx0*(xk-x0)
yn=y0-1/Dyx0*(xn-x0)