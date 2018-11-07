clear
syms x y(x)
eqn=(x-1)*diff(y,x,2)-x*diff(y,x)+y-(x-1)^2
ySol=simplify(dsolve(eqn))
% C7*x - x + C8*exp(x) - x^2 - 1

% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0