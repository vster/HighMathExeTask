clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(7*x+y+2*z)
eqn2=diff(y,t)-(2*x+3*y+z)
eqn3=diff(z,t)-(-8*x-2*y-z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C9*(4*exp(3*t) + 2*t*exp(3*t)) + C7*(exp(3*t) + 4*t*exp(3*t) + t^2*exp(3*t)) + 2*C8*exp(3*t)
%ySol =
% 2*C9*exp(3*t) + 2*C7*t*exp(3*t)
%zSol =
% - C7*(8*t*exp(3*t) + 2*t^2*exp(3*t)) - C9*(8*exp(3*t) + 4*t*exp(3*t)) - 4*C8*exp(3*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0