clear
syms t x(t) y(t)
eqn1=diff(x,t)-(-t*x+y)
eqn2=diff(y,t)-((1-t^2)*x+t*y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% ?
%ySol =
% ?

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0