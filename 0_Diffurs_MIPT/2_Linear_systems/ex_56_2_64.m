clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-3*x-y)
eqn2=diff(y,t)-(4*x+y)
eqn3=diff(z,t)-(2*x+y-2*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C14*(exp(-t) - 2*t*exp(-t)) - 2*C13*exp(-t)
%ySol =
% 4*C13*exp(-t) + 4*C14*t*exp(-t)
%zSol =
% 2*C14*exp(-t) - 2*C15*exp(-2*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0