clear
syms x y(x)
eqn=diff(y,x,2)+2*diff(y,x)-3*y-2*exp(x)*sin(x)^2
ySol=simplify(dsolve(eqn))
% exp(x)*(x/4 - sin(2*x)/8) + C15*exp(x) + C16*exp(-3*x) + (exp(x)*(4*cos(2*x) + 2*sin(2*x) - 5))/80
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0
