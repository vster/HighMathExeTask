clear
syms x y(x)
eqn=diff(y,x,2)+y-sin(x)*sin(2*x)
ySol=simplify(dsolve(eqn))
% cos(x)^3/4 - cos(x)/4 + C14*cos(x) + C15*sin(x) + (x*sin(x))/4
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0