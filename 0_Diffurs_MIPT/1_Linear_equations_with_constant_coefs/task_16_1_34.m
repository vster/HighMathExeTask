clear
syms x y(x)
eqn=diff(y,x,3)+diff(y,x,2)+16*diff(y,x)+16*y-((34*x-4)*exp(-x)+30*sin(x))
ySol=simplify(dsolve(eqn))
% x^2*exp(-x) - (2*exp(-x))/17 - 2^(1/2)*cos(x + pi/4) + C7*cos(4*x) + C9*exp(-x) + C8*sin(4*x)
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0