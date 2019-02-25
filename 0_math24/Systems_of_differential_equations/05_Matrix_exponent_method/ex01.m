clear
syms t x(t) y(t)
eqn1=diff(x,t)-(2*x+3*y)
eqn2=diff(y,t)-(3*x+2*y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% C5*exp(5*t) - C4*exp(-t)
%ySol =
% C4*exp(-t) + C5*exp(5*t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0