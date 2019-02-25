clear
syms t x(t) y(t)
eqn1=diff(x,t)-(2*x+y)
eqn2=diff(y,t)-(3*y+t*exp(t))
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% exp(3*t)*(C16 - (exp(-2*t)*(2*t + 1))/4) + exp(2*t)*(C15 + exp(-t)*(t + 1))
%ySol =
% exp(3*t)*(C16 - (exp(-2*t)*(2*t + 1))/4)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))
% 0 0