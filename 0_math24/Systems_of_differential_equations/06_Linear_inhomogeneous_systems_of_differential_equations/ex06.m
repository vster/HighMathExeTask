clear
syms t x(t) y(t)
eqn1=diff(x,t)-(2*x-y+exp(2*t))
eqn2=diff(y,t)-(6*x-3*y+exp(t)+1)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% C24/2 - t + (3*exp(2*t))/2 - exp(t) + (exp(-t)*(C23 + (exp(t)*(3*exp(t) - 4*exp(2*t) + 6))/2))/3
%ySol =
% C24 - 2*t + 3*exp(2*t) - 2*exp(t) + exp(-t)*(C23 + (exp(t)*(3*exp(t) - 4*exp(2*t) + 6))/2)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0