clear
syms t x(t) y(t)
eqn1=(diff(x,t)+diff(y,t))-(2*(x+y))
eqn2=diff(y,t)-(3*x+y)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
xSol=simplify(xSol)
ySol=simplify(ySol)
%xSol =
% (C20*exp(2*t))/3 - C19*exp(-2*t)
%ySol =
% C19*exp(-2*t) + C20*exp(2*t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0