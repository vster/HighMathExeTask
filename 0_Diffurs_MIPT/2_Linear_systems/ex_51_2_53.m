clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-2*y-z)
eqn2=diff(y,t)-(2*x+4*y+2*z)
eqn3=diff(z,t)-(-2*x-2*y)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C9*((exp(t)*cos(t))/2 + (exp(t)*sin(t))/2) + C10*((exp(t)*cos(t))/2 - (exp(t)*sin(t))/2) - C11*exp(2*t)
%ySol =
% C11*exp(2*t) - C9*exp(t)*cos(t) + C10*exp(t)*sin(t)
%zSol =
% C9*exp(t)*cos(t) - C10*exp(t)*sin(t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0