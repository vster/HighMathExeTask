clear
syms t x(t) y(t)
eqn1=diff(x,t)-(x+2*y+exp(-2*t))
eqn2=diff(y,t)-(4*x-y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% exp(3*t)*(C14 - (2*exp(-5*t))/15) - (exp(-3*t)*(C13 - (2*exp(t))/3))/2
%ySol =
% exp(-3*t)*(C13 - (2*exp(t))/3) + exp(3*t)*(C14 - (2*exp(-5*t))/15)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0