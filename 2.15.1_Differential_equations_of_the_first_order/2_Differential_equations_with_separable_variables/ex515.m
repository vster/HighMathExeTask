% Solve equation
% log(cos(y))dx+x*tan(y)dy=0
% dx/x+tan(y)*dy/log(cos(y))=0

% 1)
syms x y;
eq1=int(1/x,x)+int(tan(y)/log(cos(y)),y)
% log(log(cos(y))) = log(x) + log(C)
% log(cos(y))=C*x
% y=acos(exp(C*x))

% 2)
% log(cos(y))dx+x*tan(y)dy=0
% dy/dx = -log(cos(y))/(x*tan(y))
syms x y(x);
eqn = diff(y(x)) == -log(cos(y))/(x*tan(y))
ySol(x) = dsolve(eqn)
% acos(exp(C5*x))
