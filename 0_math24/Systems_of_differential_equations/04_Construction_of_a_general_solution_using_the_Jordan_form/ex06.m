clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-3*x-6*y+6*z)
eqn2=diff(y,t)-(x+6*z)
eqn3=diff(z,t)-(-y+4*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% 3*C16*exp(t) - 6*C17 - C18*(6*t + 2)
%ySol =
% 4*C17 - 3*C16*exp(t) + C18*(4*t + 3)
%zSol =
% C17 + C18*(t + 1) - C16*exp(t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0