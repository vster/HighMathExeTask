clear
syms x y(x)
eqn=diff(y,x,3)+diff(y,x,2)-diff(y,x)-y-(4*sin(x)+8*(x+1)*exp(x))
ySol=simplify(dsolve(eqn))
% x^2*exp(x) - exp(x)/2 + C8*exp(x) + 2^(1/2)*cos(x + pi/4) + C6*exp(-x) + C7*x*exp(-x)
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0