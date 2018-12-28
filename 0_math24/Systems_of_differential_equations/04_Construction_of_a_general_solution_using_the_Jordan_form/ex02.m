clear
syms t x(t) y(t)
eqn1=diff(x,t)-(-x)
eqn2=diff(y,t)-(-y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% C6*exp(-t)
%ySol =
% C7*exp(-t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0