clear
syms x y(x)
eqn=(1-x^2)*diff(y,x,2)-x*diff(y,x)+4*y
ySol=simplify(dsolve(eqn))
% (C21 + C22*((1 - x^2)^(1/2) + x*1i)^4)/((1 - x^2)^(1/2) + x*1i)^2
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0