clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(2*x+y+z)
eqn2=diff(y,t)-(x+2*y+z)
eqn3=diff(z,t)-(x+y+2*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C38*exp(4*t) - C40*exp(t) - C39*exp(t)
%ySol =
% C39*exp(t) + C38*exp(4*t)
%zSol =
% C40*exp(t) + C38*exp(4*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0