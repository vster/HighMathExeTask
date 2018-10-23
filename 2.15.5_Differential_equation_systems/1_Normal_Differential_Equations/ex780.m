clear
syms t x(t) y(t)
eqn1=diff(x,t)-(exp(3*t)-y)
eqn2=diff(y,t)-(2*exp(3*t)-x)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% exp(-t)*(C33 + (3*exp(4*t))/8) - exp(t)*(C32 + exp(2*t)/4)
%ySol =
% exp(t)*(C32 + exp(2*t)/4) + exp(-t)*(C33 + (3*exp(4*t))/8)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0