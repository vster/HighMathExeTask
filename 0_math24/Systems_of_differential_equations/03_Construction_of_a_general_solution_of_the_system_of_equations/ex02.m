clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-2*x-3*y-5*z)
eqn2=diff(y,t)-(x+4*y+z)
eqn3=diff(z,t)-(2*x+5*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% 3*C43*exp(t) - C45*(2*exp(3*t) - t*exp(3*t)) + C44*exp(3*t)
%ySol =
% (C45*exp(3*t))/2 - (C43*exp(t))/2
%zSol =
% C45*((3*exp(3*t))/2 - t*exp(3*t)) - (3*C43*exp(t))/2 - C44*exp(3*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0