clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-4*x+2*y-3*z)
eqn2=diff(y,t)-(-2*y+z)
eqn3=diff(z,t)-(x-y)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C23*(exp(-2*t) - 2*t*exp(-2*t) + (t^2*exp(-2*t))/2) - C21*(2*exp(-2*t) - t*exp(-2*t)) + C22*exp(-2*t)
%ySol =
% C22*exp(-2*t) + C21*t*exp(-2*t) + (C23*t^2*exp(-2*t))/2
%zSol =
% C21*exp(-2*t) + C23*t*exp(-2*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0