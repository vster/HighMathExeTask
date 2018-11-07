clear
syms x y(x)
eqn=x^2*diff(y,x,2)+x*diff(y,x)+y-5*x^2
ySol=simplify(dsolve(eqn))
% x^2 + C14*cos(log(x)) + C13*sin(log(x))

% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0