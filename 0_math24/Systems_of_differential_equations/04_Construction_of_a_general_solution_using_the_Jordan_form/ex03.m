clear
syms t x(t) y(t)
eqn1=diff(x,t)-(2*x-y)
eqn2=diff(y,t)-(x+4*y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% C8*(exp(3*t) - t*exp(3*t)) - C9*exp(3*t)
%ySol =
% C9*exp(3*t) + C8*t*exp(3*t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0