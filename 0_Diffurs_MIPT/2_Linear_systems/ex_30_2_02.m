clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-2*x-y+z)
eqn2=diff(y,t)-(2*x-5*y+2*z)
eqn3=diff(z,t)-(3*x-2*y-2*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C23*(exp(-3*t) + 2*t*exp(-3*t)) + C24*(exp(-3*t) + t*exp(-3*t) + t^2*exp(-3*t)) + 2*C25*exp(-3*t)
%ySol =
% C24*(2*t*exp(-3*t) + 2*t^2*exp(-3*t)) + C23*(2*exp(-3*t) + 4*t*exp(-3*t)) + 4*C25*exp(-3*t)
%zSol =
% C24*(3*t*exp(-3*t) + t^2*exp(-3*t)) + C23*(3*exp(-3*t) + 2*t*exp(-3*t)) + 2*C25*exp(-3*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0