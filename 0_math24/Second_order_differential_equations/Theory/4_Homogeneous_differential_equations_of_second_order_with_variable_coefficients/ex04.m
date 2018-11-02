clear
syms x y(x)
eqn=x^2*diff(y,x,2)-2*x*diff(y,x)+2*y
ySol=simplify(dsolve(eqn))
% x*(C4 + C5*x)

% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0