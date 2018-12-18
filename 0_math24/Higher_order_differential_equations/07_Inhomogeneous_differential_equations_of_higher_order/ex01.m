clear
syms x y(x)
eqn=(x^2-2)*diff(y,x,3)-2*x*diff(y,x,2)-(x^2-2)*diff(y,x)+2*x*y
ySol=simplify(dsolve(eqn))
% C5*exp(x) - (C6*x^2)/2 + C4*exp(-x)

eqn=(x^2-2)*diff(y,x,3)-2*x*diff(y,x,2)-(x^2-2)*diff(y,x)+2*x*y-(2*x-4/y)
syms C1(x) C2(x) C3(x)
y1=C1*exp(x)+C2*exp(-x)+C3*x^2

% ...