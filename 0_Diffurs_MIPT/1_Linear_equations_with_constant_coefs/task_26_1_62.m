clear
syms x y(x)
eqn=diff(y,x,3)-2*diff(y,x,2)+diff(y,x)-(6*x*exp(x)+4*sinh(x))
ySol=simplify(dsolve(eqn))
% exp(-x)/2 - C17 - 2*x^2*exp(x) + x^3*exp(x) + C18*exp(x) + C19*x*exp(x)
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0