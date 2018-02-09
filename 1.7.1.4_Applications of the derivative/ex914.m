syms x
y=x^2-3*x+5
x0=2
y0=subs(y,x,x0)
ezplot(y)
hold on

dy=simplify(diff(y))
alpha=atan(subs(dy,x,x0))

y_tan=y0+alpha*(x-x0)
ezplot(y_tan)
grid on
hold off