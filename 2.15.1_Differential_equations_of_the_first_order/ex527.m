% Solve equation
% y*y'=-2*x*sec(y)

% 1)
% y*dy/dx+2*x/cos(y)=0
% y*cos(y)*dy+2*x*dx=0
syms x y;
eq1=int(y*cos(y),y)+int(2*x,x)
% x^2 + cos(y) + y*sin(y) = C

% 2)
syms x y(x);
eqn=diff(y(x),x)==-2*x/(y*cos(y))
ySol=dsolve(eqn)
% solve(cos(y) + y*sin(y) == - x^2 + C26, y)
% cos(y) + y*sin(y) == - x^2 + C26