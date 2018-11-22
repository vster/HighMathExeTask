clear
syms x y(x)
eqn=diff(y,x,3)+diff(y,x,2)+diff(y,x)+y-(4*sin(x)+2*(x+1)*exp(x))
ySol=simplify(dsolve(eqn))
% sin(x) - exp(x)/4 + C12*cos(x) + C13*sin(x) - x*cos(x) + (x*exp(x))/2 - x*sin(x) + C14*exp(-x)
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0