clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(6*x-12*y-z)
eqn2=diff(y,t)-(x-3*y-z)
eqn3=diff(z,t)-(-4*x+12*y+3*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% - C31*exp(t) - C32*exp(3*t) - (7*C33*exp(2*t))/8
%ySol =
% - (C31*exp(t))/2 - (C32*exp(3*t))/3 - (3*C33*exp(2*t))/8
%zSol =
% C31*exp(t) + C32*exp(3*t) + C33*exp(2*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0