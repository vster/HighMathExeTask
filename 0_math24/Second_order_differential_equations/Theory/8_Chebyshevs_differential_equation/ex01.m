clear
syms x y(x)
eqn=(1-x^2)*diff(y,x,2)-x*diff(y,x)+2*y
ySol=simplify(dsolve(eqn))
% C19*exp(-2^(1/2)*asin(x)*1i) + C20*exp(2^(1/2)*asin(x)*1i)
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0