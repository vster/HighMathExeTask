clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(5*x-y-4*z)
eqn2=diff(y,t)-(-12*x+5*y+12*z)
eqn3=diff(z,t)-(10*x-3*y-9*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C19*(4*exp(t) - 2*t*exp(t)) - 3*C20*exp(-t) - 2*C21*exp(t)
%ySol =
% 6*C20*exp(-t) - 6*C19*exp(t)
%zSol =
% C19*(6*exp(t) - 2*t*exp(t)) - 6*C20*exp(-t) - 2*C21*exp(t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0