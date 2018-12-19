clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-x+2*y-z)
eqn2=diff(y,t)-(-x-3*y+z)
eqn3=diff(z,t)-(y-2*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C15*(exp(-2*t) - t*exp(-2*t)) + C16*(exp(-2*t) + t*exp(-2*t) - (t^2*exp(-2*t))/2) - C14*exp(-2*t)
%ySol =
% - C15*exp(-2*t) - C16*t*exp(-2*t)
%zSol =
% - C14*exp(-2*t) - C15*t*exp(-2*t) - (C16*t^2*exp(-2*t))/2

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0