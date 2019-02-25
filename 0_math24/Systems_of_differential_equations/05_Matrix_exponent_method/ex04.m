clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-5*x-7*y-3*z)
eqn2=diff(y,t)-(2*x+y-6*z)
eqn3=diff(z,t)-(y+4*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% 5*C10 + 3*C11*exp(t) + 8*C12*exp(-t)
%ySol =
% - 4*C10 - 3*C11*exp(t) - 5*C12*exp(-t)
%zSol =
% C10 + C11*exp(t) + C12*exp(-t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0