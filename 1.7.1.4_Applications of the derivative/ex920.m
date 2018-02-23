syms t xk xn;
t0=pi/2

x=t-sin(t)
y=1-cos(t)

ezplot(x,y)

Dx=diff(x)
Dy=diff(y)

Dyx=Dy/Dx

x0=subs(x,t,t0)
y0=subs(y,t,t0)
Dyx0=subs(Dyx,t,t0)

yk=y0+Dyx0*(xk-x0)
yn=y0-1/Dyx0*(xn-x0)