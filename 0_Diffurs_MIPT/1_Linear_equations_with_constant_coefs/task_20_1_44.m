clear
syms x y(x)
eqn=diff(y,x,2)+2*diff(y,x)+y-(x*exp(-x)+cos(x))
ySol=simplify(dsolve(eqn))
% (exp(-x)*(6*C14 + 6*C15*x + 3*exp(x)*sin(x) + x^3))/6
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0