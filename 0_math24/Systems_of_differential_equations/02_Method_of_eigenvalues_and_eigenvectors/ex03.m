clear
syms t x(t) y(t)
eqn1=diff(x,t)-(3*x)
eqn2=diff(y,t)-(3*y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% C30*exp(3*t)
%ySol =
% C31*exp(3*t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0