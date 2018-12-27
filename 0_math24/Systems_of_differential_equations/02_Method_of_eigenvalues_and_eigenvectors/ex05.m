clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-x-4*y+2*z)
eqn2=diff(y,t)-(3*x+y-2*z)
eqn3=diff(z,t)-(x-4*y+z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% (2*C36*exp(t))/3 - C35*(cos(t)/5 + (3*sin(t))/5) + C37*((3*cos(t))/5 - sin(t)/5)
%ySol =
% (C36*exp(t))/6 + C35*(cos(t)/5 - (2*sin(t))/5) + C37*((2*cos(t))/5 + sin(t)/5)
%zSol =
% C37*cos(t) + C36*exp(t) - C35*sin(t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0