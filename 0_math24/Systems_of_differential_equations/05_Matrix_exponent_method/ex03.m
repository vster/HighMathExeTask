clear
syms t x(t) y(t)
eqn1=diff(x,t)-(x+y)
eqn2=diff(y,t)-(-x+y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
% xSol =
% C9*exp(t)*cos(t) + C8*exp(t)*sin(t)
% ySol =
% C8*exp(t)*cos(t) - C9*exp(t)*sin(t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0