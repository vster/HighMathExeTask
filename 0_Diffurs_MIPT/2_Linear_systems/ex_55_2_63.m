clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(2*x+y-z)
eqn2=diff(y,t)-(x+3*y-z)
eqn3=diff(z,t)-(x+2*y)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C10*exp(t) + C11*exp(2*t)
%ySol =
% C12*exp(2*t) + C11*t*exp(2*t)
%zSol =
% C10*exp(t) + C12*exp(2*t) + C11*t*exp(2*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0