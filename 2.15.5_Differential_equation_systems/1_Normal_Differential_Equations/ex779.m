clear
syms t x(t) y(t)
eqn1=diff(x,t)-(4*x+6*y)
eqn2=diff(y,t)-(2*x+3*y+t)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
xSol=simplify(xSol)
ySol=simplify(ySol)
%xSol =
% 2*C6*exp(7*t) - (6*t)/49 - (3*t^2)/7 - (3*C7)/2 - 6/343
%ySol =
% C7 - (3*t)/49 + (2*t^2)/7 + C6*exp(7*t) - 3/343

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0