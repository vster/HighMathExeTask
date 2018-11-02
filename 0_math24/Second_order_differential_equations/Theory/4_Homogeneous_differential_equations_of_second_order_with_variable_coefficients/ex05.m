clear
syms x y(x)
eqn=(x^2+1)*diff(y,x,2)-2*y
ySol=simplify(dsolve(eqn))
% C7*(x^2 + 1) - (x^2 + 1)*((C6*atan(x))/2 + (C6*x)/(2*(x^2 + 1)))

% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0