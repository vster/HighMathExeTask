clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-3*x-z)
eqn2=diff(y,t)-(-4*x-2*y-3*z)
eqn3=diff(z,t)-(4*x+2*y+3*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C10*((5*exp(-t))/4 + (5*t*exp(-t))/2) - 2*C9 + (5*C8*exp(-t))/2
%ySol =
% C10*(5*exp(-t) + 5*t*exp(-t)) - 5*C9 + 5*C8*exp(-t)
%zSol =
% 6*C9 - C10*(5*exp(-t) + 5*t*exp(-t)) - 5*C8*exp(-t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0