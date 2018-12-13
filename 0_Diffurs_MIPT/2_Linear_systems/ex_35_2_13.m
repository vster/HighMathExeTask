clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(4*x-5*y+5*z)
eqn2=diff(y,t)-(3*x-2*y+5*z)
eqn3=diff(z,t)-(-x+2*y-z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% - C30*(2*exp(t)*cos(t) + exp(t)*sin(t)) - C31*(exp(t)*cos(t) - 2*exp(t)*sin(t)) - 2*C32*exp(-t)
%ySol =
% - C32*exp(-t) - C31*exp(t)*cos(t) - C30*exp(t)*sin(t)
%zSol =
% C32*exp(-t) + C30*exp(t)*cos(t) - C31*exp(t)*sin(t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0