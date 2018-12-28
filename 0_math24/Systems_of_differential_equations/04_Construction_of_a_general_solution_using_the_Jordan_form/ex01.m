clear
syms t x(t) y(t)
eqn1=diff(x,t)-(2*x-3*y)
eqn2=diff(y,t)-(-x+4*y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% 3*C5*exp(t) - C4*exp(5*t)
%ySol =
% C5*exp(t) + C4*exp(5*t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0