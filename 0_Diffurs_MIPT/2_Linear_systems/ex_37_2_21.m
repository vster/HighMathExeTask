clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-4*x+2*y+5*z)
eqn2=diff(y,t)-(6*x-y-6*z)
eqn3=diff(z,t)-(-8*x+3*y+9*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C10*(4*exp(t) - 2*t*exp(t)) - 3*C11*exp(2*t) - 2*C12*exp(t)
%ySol =
% 6*C11*exp(2*t) - 6*C10*exp(t)
%zSol =
% C10*(6*exp(t) - 2*t*exp(t)) - 6*C11*exp(2*t) - 2*C12*exp(t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0