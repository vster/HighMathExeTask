clear
syms x y(x)
eqn=diff(y,x,3)-diff(y,x,2)-diff(y,x)+y-(4*cos(x)+4*(x-4)*exp(-x))
ySol=simplify(dsolve(eqn))
% (exp(-x)*(4*C11 - 12*x + 2*x^2 + 4*C9*exp(2*x) + 4*C10*x*exp(2*x) + 4*2^(1/2)*exp(x)*cos(x + pi/4) - 13))/4
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0