clear
syms x y(x)
eqn=4*x^2*diff(y,x,2)+y
ySol=simplify(dsolve(eqn))
% x^(1/2)*(C10 + C9*log(x))

% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0