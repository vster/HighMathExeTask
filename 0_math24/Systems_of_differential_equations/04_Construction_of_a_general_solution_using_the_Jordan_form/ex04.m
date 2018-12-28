clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-4*x-6*y-6*z)
eqn2=diff(y,t)-(x+3*y+z)
eqn3=diff(z,t)-(2*x+4*z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% - 2*C11 - (3*C12*exp(t))/2 - C10*exp(2*t)
%ySol =
% C11/3 + (C12*exp(t))/4
%zSol =
% C11 + C12*exp(t) + C10*exp(2*t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0