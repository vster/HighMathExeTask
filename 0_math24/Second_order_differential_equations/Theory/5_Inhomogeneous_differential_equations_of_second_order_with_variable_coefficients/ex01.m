clear
syms x y(x)
eqn=x^2*diff(y,x,2)-2*x*diff(y,x)+2*y-(x^2+1)
ySol=simplify(dsolve(eqn))
% C3*x + x^2*log(x) + C4*x^2 - x^2 + 1/2

% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0