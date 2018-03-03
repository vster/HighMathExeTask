syms t xk xn t0;
x=cosh(t)
y=sinh(t)
% Составить уравнение касательной к равносторонней гиперболе
% в точке t=t0

ezplot(x,y,[-3 3])

Dx=diff(x)
Dy=diff(y)

Dyx=Dy/Dx

x0=subs(x,t,t0)
y0=subs(y,t,t0)
Dyx0=subs(Dyx,t,t0)

yk=simplify(y0+Dyx0*(xk-x0))
pretty(yk)
yn=simplify(y0-1/Dyx0*(xn-x0))
pretty(yn)