clear
syms t x(t) y(t)
eqn1=diff(x,t)-(6*x-y)
eqn2=diff(y,t)-(x+4*y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% C22*(exp(5*t) + t*exp(5*t)) + C23*exp(5*t)
%ySol =
% C23*exp(5*t) + C22*t*exp(5*t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0