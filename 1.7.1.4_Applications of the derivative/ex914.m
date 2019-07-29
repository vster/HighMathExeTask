clear 
syms x
y=x^2-3*x+5
M=[2,3]
x0=M(1)
y0=M(2)
% Какой угол образует с осью абцисс касательная 
% к параболе в точке M?

ezplot(y)
hold on
plot(M(1),M(2),'ro')

dy=simplify(diff(y))
alpha=atan(subs(dy,x,M(1)))

y_tan=y0+alpha*(x-x0)
ezplot(y_tan)
grid on
hold off