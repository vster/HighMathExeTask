clear
syms x y(x)
eqn=x^2*diff(y,x,2)-4*x*diff(y,x)+6*y
ySol=simplify(dsolve(eqn))
% x^2*(C8 + C9*x)

% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0