clear
syms x y(x)
eqn=diff(y,x,3)+3*diff(y,x,2)-4*y-(18*(1-x)*exp(-2*x)+40*cos(2*x))
ySol=simplify(dsolve(eqn))
% -(exp(-2*x)*(12*x - 9*C4 - 9*C5*x + 18*cos(2*x)*exp(2*x) + 18*x^2 - 9*x^3 - 9*C6*exp(3*x) + 9*sin(2*x)*exp(2*x) + 4))/9
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0