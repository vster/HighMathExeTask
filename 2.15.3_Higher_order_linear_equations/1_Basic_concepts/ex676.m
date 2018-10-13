% Equations are given 
% y'''+2/x*y''-y'+1/(x*log(x))*y=x 
% and a particular solution is known 
% y1=log(x) 
% of the corresponding homogeneous equation. 
% Reduce the order of the equation.

% 1)
syms x y dy d2y d3y
eqn=d3y+2/x*d2y-dy+1/(x*log(x))*y-x 
y1=log(x)

syms z(x)
y2=y1*int(z,x)
% log(x)*int(z(x), x)
dy2=diff(y2,x)
% int(z(x), x)/x + log(x)*z(x)
d2y2=diff(dy2,x)
% log(x)*diff(z(x), x) - int(z(x), x)/x^2 + (2*z(x))/x
d3y2=diff(d2y2,x)
% (3*diff(z(x), x))/x + (2*int(z(x), x))/x^3 - (3*z(x))/x^2 + log(x)*diff(z(x), x, x)
eqn2=simplify(subs(eqn,[y dy d2y d3y],[y2 dy2 d2y2 d3y2]))
pretty(eqn2)
