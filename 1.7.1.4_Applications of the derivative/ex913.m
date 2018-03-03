syms x
y=2/3*x^5-1/9*x^3
x1=1
% ”гол с осью абцисс касательна€ к кривой в точке x1

ezplot(y)
grid

dy=simplify(diff(y))
alpha=atan(subs(dy,x,x1))
digits(5)
vpa(alpha*180/pi)