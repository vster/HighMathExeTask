clear
syms t x(t) y(t)
eqn1=diff(x,t)-(x+exp(t))
eqn2=diff(y,t)-(x+y-exp(t))
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% exp(t)*(C18 + t)
%ySol =
% exp(t)*(C17 - (t*(t + 2))/2) + t*exp(t)*(C18 + t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0