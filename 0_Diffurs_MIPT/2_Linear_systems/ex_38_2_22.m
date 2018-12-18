clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(x+y-z)
eqn2=diff(y,t)-(-x+2*y-z)
eqn3=diff(z,t)-(2*x-y+4*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C15*(3*exp(2*t) + t*exp(2*t)) - 2*C13*exp(3*t) + C14*exp(2*t)
%ySol =
% C15*exp(2*t) - C13*exp(3*t)
%zSol =
% 3*C13*exp(3*t) - C15*(3*exp(2*t) + t*exp(2*t)) - C14*exp(2*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0