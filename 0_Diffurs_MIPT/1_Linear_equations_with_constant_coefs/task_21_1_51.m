clear
syms x y(x)
eqn=diff(y,x,3)-diff(y,x,2)+diff(y,x)-y-(4*cos(x)-(4*x-14)*exp(-x))
ySol=simplify(dsolve(eqn))
% sin(x) - 2*cos(x) - 2*exp(-x) + x*exp(-x) + C16*cos(x) + C18*exp(x) + C17*sin(x) - x*cos(x) - x*sin(x)
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0