clear
syms t x(t) y(t)
eqn1=diff(x,t)+2*diff(y,t)-2*(x-y)-3*exp(t)
eqn2=diff(x,t)+diff(y,t)+2*x+y-4*exp(2*t)
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
xSol=simplify(xSol)
ySol=simplify(ySol)
%xSol =
% -(5*exp(-6*t)*(C23 - (4*exp(7*t)*(7*exp(t) - 3))/35))/4
%ySol =
% (9*exp(t))/14 + C24*exp(-t) + C23*exp(-6*t)

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0