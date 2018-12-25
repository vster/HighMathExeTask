clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(3*x-3*y-6*z)
eqn2=diff(y,t)-(y+4*z)
eqn3=diff(z,t)-(-y-3*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% (3*C8*exp(-t))/4 - (3*C9*exp(3*t))/4
%ySol =
% C8*(exp(-t) + 2*t*exp(-t)) + 2*C7*exp(-t)
%zSol =
% - C7*exp(-t) - C8*t*exp(-t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0