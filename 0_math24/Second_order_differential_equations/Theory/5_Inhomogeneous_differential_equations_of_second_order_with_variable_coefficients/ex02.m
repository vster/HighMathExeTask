clear
syms x y(x)
eqn=(log(x)-1)*diff(y,x,2)-diff(y,x)/x+y/x^2-(log(x)-1)^2/x
ySol=simplify(dsolve(eqn))
% C5*x + (x*log(x)^2)/2 - C6*log(x) - x*log(x)

% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0