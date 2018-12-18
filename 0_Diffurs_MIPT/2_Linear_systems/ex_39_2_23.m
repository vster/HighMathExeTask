clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(2*x+y+z)
eqn2=diff(y,t)-(-2*x-z)
eqn3=diff(z,t)-(2*x+y+2*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% (C18*exp(2*t))/2 - C16*exp(t)
%ySol =
% C17*exp(t) + C16*(exp(t) + t*exp(t)) - C18*exp(2*t)
%zSol =
% C18*exp(2*t) - C17*exp(t) - C16*t*exp(t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0