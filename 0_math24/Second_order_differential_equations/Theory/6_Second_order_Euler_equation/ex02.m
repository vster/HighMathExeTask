clear
syms x y(x)
eqn=x^2*diff(y,x,2)-x*diff(y,x)-8*y
ySol=simplify(dsolve(eqn))
% (C12*x^6 + C11)/x^2

% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0