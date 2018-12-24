clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-7*x+10*y+8*z)
eqn2=diff(y,t)-(-x+z)
eqn3=diff(z,t)-(-3*x+6*y+4*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C13*(2*exp(-2*t) - 2*t*exp(-2*t)) - C14*exp(t) - 2*C12*exp(-2*t)
%ySol =
% - C12*exp(-2*t) - C13*t*exp(-2*t)
%zSol =
% C13*exp(-2*t) - C14*exp(t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0