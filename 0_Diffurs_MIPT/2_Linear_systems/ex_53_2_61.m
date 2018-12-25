clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(3*x+y+z)
eqn2=diff(y,t)-(x+3*y+z)
eqn3=diff(z,t)-(2*x-2*y+4*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C4*exp(2*t) + C6*exp(4*t) + C5*t*exp(4*t)
%ySol =
% C6*exp(4*t) + C5*t*exp(4*t)
%zSol =
% C5*exp(4*t) - C4*exp(2*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0