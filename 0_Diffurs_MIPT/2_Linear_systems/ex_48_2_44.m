clear
syms t x(t) y(t)
eqn1=diff(x,t)-(3*x-2*y)
eqn2=diff(y,t)-(2*x-y+15*exp(t)*sqrt(t))
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% (C14 - 10*t^(3/2))*(exp(t) + 2*t*exp(t)) + 2*exp(t)*(C13 + t^(3/2)*(6*t + 5))
%ySol =
% 2*exp(t)*(C13 + t^(3/2)*(6*t + 5)) + 2*t*exp(t)*(C14 - 10*t^(3/2))

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0