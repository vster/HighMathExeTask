clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(3*x+y-z)
eqn2=diff(y,t)-(4*x+5*y-2*z)
eqn3=diff(z,t)-(8*x+6*y-3*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% 2*C8*exp(t) + C7*(exp(t) + 2*t*exp(t))
%ySol =
% 2*C6*exp(3*t) - 2*C7*exp(t)
%zSol =
% 4*C8*exp(t) + 2*C6*exp(3*t) - C7*(2*exp(t) - 4*t*exp(t))

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0