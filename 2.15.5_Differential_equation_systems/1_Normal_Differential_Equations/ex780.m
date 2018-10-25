clear
syms t x(t) y(t)
eqn1=diff(x,t)-(exp(3*t)-y)
eqn2=diff(y,t)-(2*exp(3*t)-x)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
xSol=simplify(xSol)
ySol=simplify(ySol)
%xSol =
% exp(3*t)/8 - C4*exp(t) + C5*exp(-t)
%ySol =
% (5*exp(3*t))/8 + C4*exp(t) + C5*exp(-t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0