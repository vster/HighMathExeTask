clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(4*x+6*y-15*z)
eqn2=diff(y,t)-(x+3*y-5*z)
eqn3=diff(z,t)-(x+2*y-4*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% 3*C19*exp(t) + 5*C20*exp(t) + C21*(exp(t) + 3*t*exp(t))
%ySol =
% C19*exp(t) + C21*t*exp(t)
%zSol =
% C19*exp(t) + C20*exp(t) + C21*t*exp(t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0