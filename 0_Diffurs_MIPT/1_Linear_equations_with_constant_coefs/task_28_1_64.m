clear
syms x y(x)
eqn=diff(y,x,3)+2*diff(y,x,2)+diff(y,x)-(16*cosh(x)-6*x*exp(-x))
ySol=simplify(dsolve(eqn))
% exp(-x)*(C23 + 2*exp(2*x) + C24*x - C22*exp(x) - x^2 + x^3)
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0