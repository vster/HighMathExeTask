clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-7*x-5*y-3*z)
eqn2=diff(y,t)-(2*x-2*y-3*z)
eqn3=diff(z,t)-(y)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C24*(exp(-3*t) - 4*t*exp(-3*t) + 3*t^2*exp(-3*t)) - C23*(4*exp(-3*t) - 6*t*exp(-3*t)) + 6*C22*exp(-3*t)
%ySol =
% C24*(2*t*exp(-3*t) - 3*t^2*exp(-3*t)) + C23*(2*exp(-3*t) - 6*t*exp(-3*t)) - 6*C22*exp(-3*t)
%zSol =
% 2*C22*exp(-3*t) + 2*C23*t*exp(-3*t) + C24*t^2*exp(-3*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0