clear
syms x y(x)
eqn=diff(y,x,2)-2*diff(y,x)+y-(exp(-x)*sin(x)+4*exp(x))
ySol=simplify(dsolve(eqn))
% (exp(-x)*(4*cos(x) + 3*sin(x) + 50*x^2*exp(2*x) + 25*C12*exp(2*x) + 25*C13*x*exp(2*x)))/25
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0