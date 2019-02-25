clear
syms t x(t) y(t)
eqn1=diff(x,t)-(4*x)
eqn2=diff(y,t)-(x+4*y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
% xSol =
% C7*exp(4*t)
% ySol =
% C6*exp(4*t) + C7*t*exp(4*t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0