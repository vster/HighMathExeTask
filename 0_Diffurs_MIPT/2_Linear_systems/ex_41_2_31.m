clear
syms t x(t) y(t) z(t)
eqn1=diff(x,t)-(-4*x+y)
eqn2=diff(y,t)-(x-4*y-2*z)
eqn3=diff(z,t)-(-5*x+5*y+z)
eqns=[eqn1,eqn2,eqn3]
[xSol ySol zSol]=dsolve(eqns)
%xSol =
% C7*exp(-3*t) - C5*((exp(-2*t)*cos(t))/5 + (2*exp(-2*t)*sin(t))/5) - C6*((2*exp(-2*t)*cos(t))/5 - (exp(-2*t)*sin(t))/5)
%ySol =
% C7*exp(-3*t) - C5*((4*exp(-2*t)*cos(t))/5 + (3*exp(-2*t)*sin(t))/5) - C6*((3*exp(-2*t)*cos(t))/5 - (4*exp(-2*t)*sin(t))/5)
%zSol =
% C5*exp(-2*t)*cos(t) - C6*exp(-2*t)*sin(t)

% Checking
chk1=simplify(subs(eqn1,[x y z],[xSol ySol zSol])) 
chk2=simplify(subs(eqn2,[x y z],[xSol ySol zSol]))
chk3=simplify(subs(eqn3,[x y z],[xSol ySol zSol]))
% 0 0 0