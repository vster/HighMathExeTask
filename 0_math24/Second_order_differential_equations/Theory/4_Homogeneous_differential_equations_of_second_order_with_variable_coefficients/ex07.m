clear
syms x y(x)
eqn=x^2*diff(y,x,2)+x*diff(y,x)-y
ySol=simplify(dsolve(eqn))
% C2*x + C1/(2*x)

% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0