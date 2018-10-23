clear
syms t x(t) y(t)
eqn1=diff(x,t)-(4*x+6*y)
eqn2=diff(y,t)-(2*x+3*y+t)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
%xSol =
% 2*exp(7*t)*(C30 - (3*exp(-7*t)*(7*t + 1))/343) - (3*C31)/2 - (3*t^2)/7
%ySol =
% C31 + exp(7*t)*(C30 - (3*exp(-7*t)*(7*t + 1))/343) + (2*t^2)/7

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0