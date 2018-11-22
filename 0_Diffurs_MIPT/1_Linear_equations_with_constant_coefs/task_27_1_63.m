clear
syms x y(x)
eqn=diff(y,x,2)-diff(y,x)-2*y-10*exp(2*x)*cos(x/2)^2
ySol=simplify(dsolve(eqn))
% exp(2*x)*((5*x)/3 + (5*sin(x))/3) - (exp(2*x)*(9*cos(x) + 3*sin(x) + 10))/18 + C20*exp(2*x) + C21*exp(-x)
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0