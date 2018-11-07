clear
syms x y(x)
eqn=x^2*diff(y,x,2)-2*x*diff(y,x)+2*y-(6*x^2+4*log(x))
ySol=simplify(dsolve(eqn))
% 2*log(x) + C15*x + 6*x^2*log(x) + C16*x^2 - 6*x^2 + 3

% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0