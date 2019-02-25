clear
syms t x(t) y(t)
eqn1=diff(x,t)-(y+1/cos(t))
eqn2=diff(y,t)-(-x)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% cos(t)*(C22 + t) + sin(t)*(C21 - log(cos(t)))
%ySol =
% cos(t)*(C21 - log(cos(t))) - sin(t)*(C22 + t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0